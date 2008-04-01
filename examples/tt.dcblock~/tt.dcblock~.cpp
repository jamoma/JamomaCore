/* 
 *	tt.dcblock~
 *	External object for Max/MSP
 *	Remove DC Offsets from a signal
 *	Example project for TTBlue
 *	Copyright © 2008 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"					// Max Header
#include "z_dsp.h"					// MSP Header
#include "ext_strings.h"			// String Functions
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "ext_obex.h"				// Max Object Extensions (attributes) Header

#include "TTDCBlock.h"				// TTBlue Interfaces...


// Data Structure for this object
typedef struct _dcblock	{
    t_pxobject 		obj;
    void			*obex;
	TTDCBlock		*dcblock;
	TTAudioSignal	*audioIn;
	TTAudioSignal	*audioOut;
	long			attrBypass;
	long			maxNumChannels;
} t_dcblock;


// Prototypes for methods: need a method for each incoming message type
void*		dcblock_new(t_symbol *msg, short argc, t_atom *argv);					// New Object Creation Method
void		dcblock_free(t_dcblock *x);
void		dcblock_assist(t_dcblock *x, void *b, long msg, long arg, char *dst);	// Assistance Method
t_int*		dcblock_perform(t_int *w);												// An MSP Perform (signal) Method
void		dcblock_dsp(t_dcblock *x, t_signal **sp, short *count);					// DSP Method
void		dcblock_clear(t_dcblock *x);
t_max_err	dcblock_setBypass(t_dcblock *x, void *attr, long argc, t_atom *argv);


// Globals
t_class *dcblock_class;				// Required. Global pointing to this class


/************************************************************************************/
// Main() Function

int main(void)
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	common_symbols_init();

	c = class_new("tt.dcblock~",(method)dcblock_new, (method)dcblock_free, (short)sizeof(t_dcblock), 
		(method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_dcblock, obex));

 	class_addmethod(c, (method)dcblock_clear, 			"clear",	0L);		
 	class_addmethod(c, (method)dcblock_dsp, 			"dsp",		A_CANT, 0L);		
	class_addmethod(c, (method)dcblock_assist, 			"assist",	A_CANT, 0L); 

	attr = attr_offset_new("bypass", _sym_long, attrflags,
		(method)0L,(method)dcblock_setBypass, calcoffset(t_dcblock, attrBypass));
	class_addattr(c, attr);	

	class_dspinit(c);						// Setup object's class to work with MSP
	class_register(CLASS_BOX, c);
	dcblock_class = c;

	return 0;
}


/************************************************************************************/
// Object Creation Method

void* dcblock_new(t_symbol *msg, short argc, t_atom *argv)
{
    t_dcblock	*x;
	TTValue		sr(sys_getsr());
 	long		attrstart = attr_args_offset(argc, argv);		// support normal arguments
	short		i;
   
    x = (t_dcblock *)object_alloc(dcblock_class);
    if(x){
		x->attrBypass = 0;
		x->maxNumChannels = 2;		// An initial argument to this object will set the maximum number of channels
		if(attrstart && argv)
			x->maxNumChannels = atom_getlong(argv);

		TTAudioObject::setGlobalAttributeValue(TT("sr"), sr);		
		x->dcblock = new TTDCBlock(x->maxNumChannels);
		x->audioIn = new TTAudioSignal(x->maxNumChannels);
		x->audioOut = new TTAudioSignal(x->maxNumChannels);

		attr_args_process(x,argc,argv);				// handle attribute args	
				
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
	    dsp_setup((t_pxobject *)x, x->maxNumChannels);								// inlets
		for(i=0; i < x->maxNumChannels; i++)
			outlet_new((t_pxobject *)x, "signal");									// outlets
		
		x->obj.z_misc = Z_NO_INPLACE;
	}
	return (x);										// Return the pointer
}

// Memory Deallocation
void dcblock_free(t_dcblock *x)
{
	dsp_free((t_pxobject *)x);
	delete x->dcblock;
	delete x->audioIn;
	delete x->audioOut;
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void dcblock_assist(t_dcblock *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 	// Inlets
		strcpy(dst, "(signal) input, control messages");		
	else if(msg==2) // Outlets
		strcpy(dst, "(signal) Filtered output");
	#pragma unused(x)
	#pragma unused(b)
	#pragma unused(arg)
}


void dcblock_clear(t_dcblock *x)
{
	x->dcblock->sendMessage("clear");
}


// Perform (signal) Method
t_int *dcblock_perform(t_int *w)
{
   	t_dcblock	*x = (t_dcblock *)(w[1]);
	short		i, j;
	TTUInt8		numChannels = x->audioIn->getNumChannels();
	TTUInt16	vs = x->audioIn->getVectorSize();
	
	for(i=0; i<numChannels; i++){
		j = (i*2) + 1;
		x->audioIn->setVector(i, vs, (t_float *)(w[j+1]));
		//x->audioOut->setVector(i, vs, (t_float *)(w[j+2]));
	}

	if(!x->obj.z_disabled)									// if we are not muted...
		x->dcblock->process(*x->audioIn, *x->audioOut);		// Actual DC-Blocker process

	for(i=0; i<numChannels; i++){
		j = (i*2) + 1;
//		x->audioIn->setVector(i, vs, (t_float *)(w[j+1]));
		x->audioOut->getVector(i, vs, (t_float *)(w[j+2]));
	}


	return w + ((numChannels*2)+2);				// +2 = +1 for the x pointer and +1 to point to the next object
}


// DSP Method
void dcblock_dsp(t_dcblock *x, t_signal **sp, short *count)
{
	short		i, j, k=0;
	void		**audioVectors = NULL;
	TTUInt8		numChannels = 0;
	TTUInt16	vs = 0;
	
	audioVectors = (void**)sysmem_newptr(sizeof(void*) * ((x->maxNumChannels * 2) + 1));
	audioVectors[k] = x;
	k++;
	
	for(i=0; i < x->maxNumChannels; i++){
		j = x->maxNumChannels + i;
		if(count[i] && count[j]){
			numChannels++;
			if(sp[i]->s_n > vs)
				vs = sp[i]->s_n;
				
			audioVectors[k] = sp[i]->s_vec;
			k++;
			audioVectors[k] = sp[j]->s_vec;
			k++;
		}
	}
	
	x->audioIn->setNumChannels(numChannels);
	x->audioOut->setNumChannels(numChannels);
	x->audioIn->setVectorSize(vs);
	x->audioOut->setVectorSize(vs);
	//audioIn will be set in the perform method
	x->audioOut->alloc();
	
	x->dcblock->setAttributeValue(TT("sr"), sp[0]->s_sr);
	
	dsp_addv(dcblock_perform, k, audioVectors);
	sysmem_freeptr(audioVectors);
}


t_max_err dcblock_setBypass(t_dcblock *x, void *attr, long argc, t_atom *argv)
{
	TTSymbol	name("bypass");
	TTValue		value;

	if(argc){
		value = x->attrBypass = atom_getlong(argv);
		x->dcblock->setAttributeValue(name, value);
	}
	return MAX_ERR_NONE;
}
