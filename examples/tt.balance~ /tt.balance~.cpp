/* 
 *	tt.balance~
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

#include "TTBalance.h"				// TTBlue Interfaces...


// Data Structure for this object
typedef struct _balance	{
    t_pxobject 		obj;
    void			*obex;
	TTBalance		*balance;
	TTAudioSignal	*audioIn;
	TTAudioSignal	*audioOut;
	long			attrBypass;
	float			attrFrequency;
	long			maxNumChannels;
} t_balance;


// Prototypes for methods: need a method for each incoming message type
void*		balance_new(t_symbol *msg, short argc, t_atom *argv);					// New Object Creation Method
void		balance_free(t_balance *x);
void		balance_assist(t_balance *x, void *b, long msg, long arg, char *dst);	// Assistance Method
t_int*		balance_perform(t_int *w);												// An MSP Perform (signal) Method
void		balance_dsp(t_balance *x, t_signal **sp, short *count);					// DSP Method
void		balance_clear(t_balance *x);
t_max_err	balance_setBypass(t_balance *x, void *attr, long argc, t_atom *argv);
t_max_err	balance_setBitdepth(t_balance *x, void *attr, long argc, t_atom *argv);
t_max_err	balance_setFrequency(t_balance *x, void *attr, long argc, t_atom *argv);


// Globals
t_class *balance_class;				// Required. Global pointing to this class


/************************************************************************************/
// Main() Function

int main(void)
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	common_symbols_init();

	c = class_new("tt.balance~",(method)balance_new, (method)balance_free, (short)sizeof(t_balance), 
		(method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_balance, obex));

 	class_addmethod(c, (method)balance_clear, 			"clear",	0L);		
 	class_addmethod(c, (method)balance_dsp, 			"dsp",		A_CANT, 0L);		
	class_addmethod(c, (method)balance_assist, 			"assist",	A_CANT, 0L); 

	attr = attr_offset_new("bypass", _sym_long, attrflags,
		(method)0L,(method)balance_setBypass, calcoffset(t_balance, attrBypass));
	class_addattr(c, attr);	

	attr = attr_offset_new("frequency", _sym_float32, attrflags,
		(method)0L,(method)balance_setFrequency, calcoffset(t_balance, attrFrequency));
	class_addattr(c, attr);	

	class_dspinit(c);						// Setup object's class to work with MSP
	class_register(CLASS_BOX, c);
	balance_class = c;

	return 0;
}


/************************************************************************************/
// Object Creation Method

void* balance_new(t_symbol *msg, short argc, t_atom *argv)
{
    t_balance	*x;
	TTValue		sr(sys_getsr());
 	long		attrstart = attr_args_offset(argc, argv);		// support normal arguments
	short		i;
   
    x = (t_balance *)object_alloc(balance_class);
    if(x){
		// Default values
		x->attrFrequency = 10;
		x->attrBypass = 0;
		// An initial argument to this object will set the maximum number of channels to process
		// Two input channels are required for each processed channel (source and comperator)
		x->maxNumChannels = 1;		
		if(attrstart && argv)
			x->maxNumChannels = atom_getlong(argv);

		TTAudioObject::setGlobalAttributeValue(TT("sr"), sr);		
		x->balance = new TTBalance(x->maxNumChannels);
		x->audioIn = new TTAudioSignal(x->maxNumChannels*2);
		x->audioOut = new TTAudioSignal(x->maxNumChannels);

		attr_args_process(x,argc,argv);				// handle attribute args	
				
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
	    dsp_setup((t_pxobject *)x, x->maxNumChannels*2);							// inlets
		for(i=0; i < x->maxNumChannels; i++)
			outlet_new((t_pxobject *)x, "signal");									// outlets
		
		x->obj.z_misc = Z_NO_INPLACE;
	}
	return (x);										// Return the pointer
}

// Memory Deallocation
void balance_free(t_balance *x)
{
	dsp_free((t_pxobject *)x);
	delete x->balance;
	delete x->audioIn;
	delete x->audioOut;
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void balance_assist(t_balance *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 	// Inlets
		strcpy(dst, "(signal) input, control messages");		
	else if(msg==2) // Outlets
		strcpy(dst, "(signal) Balanced output");
	#pragma unused(x)
	#pragma unused(b)
	#pragma unused(arg)
}


void balance_clear(t_balance *x)
{
	x->balance->sendMessage("clear");
}


// Perform (signal) Method
t_int *balance_perform(t_int *w)
{
   	t_balance	*x = (t_balance *)(w[1]);
	short		i, j, k;
	
	for(i=0; i < x->audioOut->numChannels; i++){
		j = i*2;
		k = (i*3) + 1;
		x->audioIn->setVector(j, 	(t_float *)(w[k+1]));
		x->audioIn->setVector(j+1, 	(t_float *)(w[k+2]));
		x->audioOut->setVector(i, 	(t_float *)(w[k+3]));
	}

	if(!x->obj.z_disabled)									// if we are not muted...
		x->balance->process(*x->audioIn, *x->audioOut);		// Actual balance process

	return w + ((x->audioIn->numChannels*3)+2);				// +2 = +1 for the x pointer and +1 to point to the next object
}


// DSP Method: Adds our perform method to the DSP call chain
void balance_dsp(t_balance *x, t_signal **sp, short *count)
{
	short	i, j, k, l=0;
	void	**audioVectors = NULL;
	
	audioVectors = (void**)sysmem_newptr(sizeof(void*) * ((x->maxNumChannels * 3) + 1));
	audioVectors[l] = x;
	l++;
	
	x->audioIn->numChannels = 0;
	x->audioOut->numChannels = 0;
	// audioVectors[] passed to balance_perform() as {x, audioInL[0], audioInR[0], audioOut[0], audioInL[1], audioInR[1], audioOut[1],...}
	for(i=0; i < x->maxNumChannels; i++){
		j = x->maxNumChannels + i;
		k = x->maxNumChannels*2 + i;
		if(count[i] && count[j] && count[k]){
			audioVectors[l] = sp[i]->s_vec;
			x->audioIn->numChannels++;
			x->audioIn->vs = sp[i]->s_n;
			l++;
			audioVectors[l] = sp[j]->s_vec;
			x->audioIn->numChannels++;
			x->audioIn->vs = sp[j]->s_n;
			l++;
			audioVectors[l] = sp[k]->s_vec;
			x->audioOut->numChannels++;
			x->audioIn->vs = sp[k]->s_n;
			l++;
		}
	}
	
	x->balance->setAttributeValue(TT("sr"), sp[0]->s_sr);
	
	dsp_addv(balance_perform, l, audioVectors);
	sysmem_freeptr(audioVectors);
}


t_max_err balance_setBypass(t_balance *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrBypass = atom_getlong(argv);
		x->balance->setAttributeValue(TT("bypass"), x->attrBypass);
	}
	return MAX_ERR_NONE;
}


t_max_err balance_setFrequency(t_balance *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrFrequency = atom_getfloat(argv);
		x->balance->setAttributeValue(TT("srRatio"), x->attrFrequency);
	}
	return MAX_ERR_NONE;
}
