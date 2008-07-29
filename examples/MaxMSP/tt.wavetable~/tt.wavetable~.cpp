/* 
 *	tt.wavetable~
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
typedef struct _wavetable	{
    t_pxobject 		obj;
	TTAudioObject*	wavetable;
	TTAudioSignal*	audioOut;
	t_symbol*		attrMode;
	t_symbol*		attrInterpolation;
	float			attrFrequency;
	float			attrGain;
	TTUInt16		maxNumChannels;
} t_wavetable;


// Prototypes for methods: need a method for each incoming message type
void*		wavetable_new(t_symbol *msg, short argc, t_atom *argv);					// New Object Creation Method
void		wavetable_free(t_wavetable *x);
void		wavetable_assist(t_wavetable *x, void *b, long msg, long arg, char *dst);	// Assistance Method
t_int*		wavetable_perform(t_int *w);												// An MSP Perform (signal) Method
void		wavetable_dsp(t_wavetable *x, t_signal **sp, short *count);					// DSP Method
void		wavetable_stop(t_wavetable *x);
void		wavetable_int(t_wavetable *x, long newCurrentValue);
void		wavetable_float(t_wavetable *x, double newCurrentValue);
void		wavetable_list(t_wavetable *x, double endValue, double time);
t_max_err	wavetable_setMode(t_wavetable *x, void *attr, long argc, t_atom *argv);
t_max_err	wavetable_setInterpolation(t_wavetable *x, void *attr, long argc, t_atom *argv);
t_max_err	wavetable_setFrequency(t_wavetable *x, void *attr, long argc, t_atom *argv);
t_max_err	wavetable_setGain(t_wavetable *x, void *attr, long argc, t_atom *argv);


// Globals
static t_class *s_wavetable_class;


/************************************************************************************/
// Main() Function

int main(void)
{
	t_class *c;
	
	TTBlueInit();	
	common_symbols_init();

	c = class_new("tt.wavetable~",(method)wavetable_new, (method)wavetable_free, sizeof(t_wavetable), (method)0L, A_GIMME, 0);

 	class_addmethod(c, (method)wavetable_dsp,			"dsp",		A_CANT, 0L);		
	class_addmethod(c, (method)wavetable_assist,		"assist",	A_CANT, 0L); 
    class_addmethod(c, (method)object_obex_dumpout,		"dumpout", 	A_CANT, 0);  

	CLASS_ATTR_SYM(c,		"mode",				0,		t_wavetable,	attrInterpolation);
	CLASS_ATTR_ACCESSORS(c,	"mode",				NULL,	wavetable_setMode);
	
	CLASS_ATTR_SYM(c,		"interpolation",	0,		t_wavetable,	attrMode);
	CLASS_ATTR_ACCESSORS(c,	"interpolation",	NULL,	wavetable_setInterpolation);
	
	CLASS_ATTR_FLOAT(c,		"frequency",		0,		t_wavetable,	attrFrequency);
	CLASS_ATTR_ACCESSORS(c,	"frequency",		NULL,	wavetable_setFrequency);

	CLASS_ATTR_FLOAT(c,		"gain",				0,		t_wavetable,	attrGain);
	CLASS_ATTR_ACCESSORS(c,	"gain",				NULL,	wavetable_setGain);
	
	class_dspinit(c);
	class_register(CLASS_BOX, c);
	s_wavetable_class = c;
	return 0;
}


/************************************************************************************/
// Object Creation Method

void* wavetable_new(t_symbol *msg, short argc, t_atom *argv)
{
    t_wavetable	*x;
	TTValue		sr(sys_getsr());
 	long		attrstart = attr_args_offset(argc, argv);		// support normal arguments
	short		i;
   
    x = (t_wavetable *)object_alloc(s_wavetable_class);
    if(x){
		x->maxNumChannels = 2;
		if(attrstart && argv)
			x->maxNumChannels = atom_getlong(argv);

		ttEnvironment->setAttributeValue(kTTSym_sr, sr);
		//x->wavetable = new TTWavetable(x->maxNumChannels);
		TTObjectInstantiate(TT("wavetable"), &x->wavetable, x->maxNumChannels);
		x->audioOut = new TTAudioSignal(x->maxNumChannels);

		attr_args_process(x,argc,argv);				// handle attribute args	
				
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
//	    dsp_setup((t_pxobject *)x, x->maxNumChannels);								// inlets
	    dsp_setup((t_pxobject *)x, 0);								// inlets
		for(i=0; i < x->maxNumChannels; i++)
			outlet_new((t_pxobject *)x, "signal");									// outlets
		
		x->obj.z_misc = Z_NO_INPLACE;
	}
	return (x);
}

// Memory Deallocation
void wavetable_free(t_wavetable *x)
{
	dsp_free((t_pxobject *)x);
	TTObjectRelease(x->wavetable);
	delete x->audioOut;
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void wavetable_assist(t_wavetable *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 	// Inlets
		strcpy(dst, "(signal) input, control messages");		
	else if(msg==2) // Outlets
		strcpy(dst, "(signal) Filtered output");
}


// Perform (signal) Method
t_int *wavetable_perform(t_int *w)
{	
	t_wavetable *x = (t_wavetable *)(w[1]);
			
	if(!(x->obj.z_disabled))
		x->wavetable->process(*x->audioOut);

	x->audioOut->getVector(0, x->audioOut->getVectorSize(), (t_float *)(w[2]));
    return w+3;
}


// DSP Method
void wavetable_dsp(t_wavetable *x, t_signal **sp, short *count)
{
	x->wavetable->setAttributeValue(TT("sr"), sp[0]->s_sr);

	x->audioOut->setNumChannels(x->maxNumChannels);
	x->audioOut->setVectorSize(sp[0]->s_n);
	x->audioOut->alloc();

	dsp_add(wavetable_perform, 2, x, sp[0]->s_vec);
}


t_max_err wavetable_setMode(t_wavetable *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrMode = atom_getsym(argv);
		x->wavetable->setAttributeValue(TT("mode"), TT(x->attrMode->s_name));
	}
	return MAX_ERR_NONE;
}


t_max_err wavetable_setInterpolation(t_wavetable *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrInterpolation = atom_getsym(argv);
		x->wavetable->setAttributeValue(TT("interpolation"), TT(x->attrInterpolation->s_name));
	}
	return MAX_ERR_NONE;
}


t_max_err wavetable_setFrequency(t_wavetable *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrFrequency = atom_getfloat(argv);
		x->wavetable->setAttributeValue(TT("frequency"), x->attrFrequency);
	}
	return MAX_ERR_NONE;
}


t_max_err wavetable_setGain(t_wavetable *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrGain	= atom_getfloat(argv);
		x->wavetable->setAttributeValue(TT("gain"), x->attrGain);
	}
	return MAX_ERR_NONE;
}

