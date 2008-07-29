/* 
 *	tt.degrade~
 *	External object for Max/MSP
 *	
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

#include "TTBlueAPI.h"				// TTBlue Interfaces...


// Data Structure for this object
typedef struct _degrade	{
    t_pxobject 		obj;
	TTAudioObject*	degrade;
	TTAudioSignal*	audioIn;
	TTAudioSignal*	audioOut;
	long			attrBypass;
	long			attrBitdepth;
	float			attrSrRatio;
	TTUInt16		maxNumChannels;
} t_degrade;


// Prototypes for methods: need a method for each incoming message type
void*		degrade_new(t_symbol *msg, short argc, t_atom *argv);					// New Object Creation Method
void		degrade_free(t_degrade *x);
void		degrade_assist(t_degrade *x, void *b, long msg, long arg, char *dst);	// Assistance Method
t_int*		degrade_perform(t_int *w);												// An MSP Perform (signal) Method
void		degrade_dsp(t_degrade *x, t_signal **sp, short *count);					// DSP Method
void		degrade_clear(t_degrade *x);
t_max_err	degrade_setBypass(t_degrade *x, void *attr, long argc, t_atom *argv);
t_max_err	degrade_setBitdepth(t_degrade *x, void *attr, long argc, t_atom *argv);
t_max_err	degrade_setSrRatio(t_degrade *x, void *attr, long argc, t_atom *argv);


// Globals
t_class *degrade_class;				// Required. Global pointing to this class


/************************************************************************************/
// Main() Function

int main(void)
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	common_symbols_init();
	TTBlueInit();

	c = class_new("tt.degrade~",(method)degrade_new, (method)degrade_free, (short)sizeof(t_degrade), 
		(method)0L, A_GIMME, 0);

 	class_addmethod(c, (method)degrade_clear, 			"clear",	0L);		
 	class_addmethod(c, (method)degrade_dsp, 			"dsp",		A_CANT, 0L);		
	class_addmethod(c, (method)degrade_assist, 			"assist",	A_CANT, 0L); 

	attr = attr_offset_new("bypass", _sym_long, attrflags,
		(method)0L,(method)degrade_setBypass, calcoffset(t_degrade, attrBypass));
	class_addattr(c, attr);	

	attr = attr_offset_new("bitdepth", _sym_long, attrflags,
		(method)0L,(method)degrade_setBitdepth, calcoffset(t_degrade, attrBitdepth));
	class_addattr(c, attr);	

	attr = attr_offset_new("srRatio", _sym_float32, attrflags,
		(method)0L,(method)degrade_setSrRatio, calcoffset(t_degrade, attrSrRatio));
	class_addattr(c, attr);	

	class_dspinit(c);						// Setup object's class to work with MSP
	class_register(CLASS_BOX, c);
	degrade_class = c;

	return 0;
}


/************************************************************************************/
// Object Creation Method

void* degrade_new(t_symbol *msg, short argc, t_atom *argv)
{
    t_degrade	*x;
	TTValue		sr(sys_getsr());
 	long		attrstart = attr_args_offset(argc, argv);		// support normal arguments
	short		i;
   
    x = (t_degrade *)object_alloc(degrade_class);
    if(x){
		x->attrBypass = 0;
		x->maxNumChannels = 2;		// An initial argument to this object will set the maximum number of channels
		if(attrstart && argv)
			x->maxNumChannels = atom_getlong(argv);

		ttEnvironment->setAttributeValue(kTTSym_sr, sr);
//		x->degrade = new TTDegrade(x->maxNumChannels);
		TTObjectInstantiate(TT("degrade"), &x->degrade, x->maxNumChannels);
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
void degrade_free(t_degrade *x)
{
	dsp_free((t_pxobject *)x);
	TTObjectRelease(x->degrade);
//	delete x->degrade;
	delete x->audioIn;
	delete x->audioOut;
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void degrade_assist(t_degrade *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 	// Inlets
		strcpy(dst, "(signal) input, control messages");		
	else if(msg==2) // Outlets
		strcpy(dst, "(signal) Filtered output");
	#pragma unused(x)
	#pragma unused(b)
	#pragma unused(arg)
}


void degrade_clear(t_degrade *x)
{
	x->degrade->sendMessage(TT("clear"));
}


// Perform (signal) Method
t_int *degrade_perform(t_int *w)
{
   	t_degrade	*x = (t_degrade *)(w[1]);
	short		i, j;
	TTUInt8		numChannels = x->audioIn->getNumChannels();
	TTUInt16	vs = x->audioIn->getVectorSize();
	
	for(i=0; i<numChannels; i++){
		j = (i*2) + 1;
		x->audioIn->setVector(i, vs, (t_float *)(w[j+1]));
	}

	if(!x->obj.z_disabled)									// if we are not muted...
		x->degrade->process(*x->audioIn, *x->audioOut);		// Actual DC-Blocker process

	for(i=0; i<numChannels; i++){
		j = (i*2) + 1;
		x->audioOut->getVector(i, vs, (t_float *)(w[j+2]));
	}

	return w + ((numChannels*2)+2);				// +2 = +1 for the x pointer and +1 to point to the next object
}


// DSP Method
void degrade_dsp(t_degrade *x, t_signal **sp, short *count)
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
	
	x->degrade->setAttributeValue(TT("sr"), sp[0]->s_sr);
	
	dsp_addv(degrade_perform, k, audioVectors);
	sysmem_freeptr(audioVectors);
}


t_max_err degrade_setBypass(t_degrade *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrBypass = atom_getlong(argv);
		x->degrade->setAttributeValue(TT("bypass"), x->attrBypass);
	}
	return MAX_ERR_NONE;
}


t_max_err degrade_setBitdepth(t_degrade *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrBitdepth = atom_getlong(argv);
		x->degrade->setAttributeValue(TT("bitdepth"), x->attrBitdepth);
	}
	return MAX_ERR_NONE;
}


t_max_err degrade_setSrRatio(t_degrade *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrSrRatio = atom_getfloat(argv);
		x->degrade->setAttributeValue(TT("srRatio"), x->attrSrRatio);
	}
	return MAX_ERR_NONE;
}
