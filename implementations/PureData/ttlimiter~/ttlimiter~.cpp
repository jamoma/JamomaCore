/*
 * ttlimiter~ Object for Pure Data
 * Written by Tim Place
 * Copyright © 2008
 * 
 */

#include "m_pd.h"
#include "TTDSP.h"


// Types & Structs
typedef struct _ttlimiter {
	t_object		obj;
	t_outlet*		outlet;			// outlet for status and version messages
	t_float			f;				// dummy for signal in first inlet
	TTAudioObject*	limiter;		// the TTBlue limiter object
	TTAudioSignal*	audioIn;
	TTAudioSignal*	audioOut;
} t_ttlimiter;


// Prototypes
extern "C" {
	void ttlimiter_tilde_setup();
}

void* ttlimiter_new(t_symbol *s, long ac, t_atom *at);
void ttlimiter_free(t_ttlimiter *x);
void ttlimiter_setpreamp(t_ttlimiter *x, double f);
t_int* ttlimiter_perform(t_int *w);
void ttlimiter_dsp(t_ttlimiter *x, t_signal **sp);


// Statics & Globals
static t_class *ttlimiter_class;


// Class Definition
void ttlimiter_tilde_setup(void) 
{	
	TTDSPInit();
	
	ttlimiter_class = class_new(gensym("ttlimiter~"), (t_newmethod)ttlimiter_new, (t_method)ttlimiter_free, 
		sizeof(t_ttlimiter), 0, A_GIMME, 0);

	CLASS_MAINSIGNALIN(ttlimiter_class, t_ttlimiter, f);
    class_addmethod(ttlimiter_class, (t_method)ttlimiter_dsp, gensym("dsp"), A_NULL);
	class_addmethod(ttlimiter_class, (t_method)ttlimiter_setpreamp,	gensym("preamp"), A_FLOAT, 0);

    class_sethelpsymbol(ttlimiter_class, gensym("help-ttlimiter~.pd"));
}


// Life Cycle

void *ttlimiter_new(t_symbol *s, long ac, t_atom *at)
{
	t_ttlimiter*	x = (t_ttlimiter*)pd_new(ttlimiter_class);
	TTUInt16		numChannels = 1;	// Just a mono limiter for now...

	if(x){
		outlet_new(&x->obj, gensym("signal"));	// Create new signal outlet
		TTObjectInstantiate(TT("limiter"), &x->limiter, numChannels);		
		TTObjectInstantiate(kTTSym_audiosignal, &x->audioIn, numChannels);		
		TTObjectInstantiate(kTTSym_audiosignal, &x->audioOut, numChannels);		
	}
	return(x);
}


void ttlimiter_free(t_ttlimiter *x)
{
	TTObjectRelease(&x->limiter);
	TTObjectRelease(&x->audioIn);
	TTObjectRelease(&x->audioOut);
}


// Methods

// Method for Posting Status
void ttlimiter_setpreamp(t_ttlimiter *x, double f)
{
	x->limiter->setAttributeValue(TT("Preamp"), f);
}


// Perform (signal) Method
t_int *ttlimiter_perform(t_int *w)
{
	t_ttlimiter*	x = (t_ttlimiter*)(w[1]);		
	t_float*		in = (t_float*)(w[2]);
	t_float*		out = (t_float*)(w[3]);
	TTUInt16		vs = x->audioIn->getVectorSizeAsInt();

	x->audioIn->setVector(0, vs, (t_float*)in);
	x->limiter->process(x->audioIn, x->audioOut);
	x->audioOut->getVector(0, vs, (t_float*)out);
	
	return (w+5);
}


// DSP Method
void ttlimiter_dsp(t_ttlimiter *x, t_signal **sp)
{
	x->audioIn->setNumChannels(1);
	x->audioOut->setNumChannels(1);
	x->audioIn->setVectorSizeWithInt(sp[0]->s_n);
	x->audioOut->setVectorSizeWithInt(sp[0]->s_n);
	//audioIn will be set in the perform method
	x->audioOut->alloc();
	
	x->limiter->setAttributeValue(kTTSym_SampleRate, sp[0]->s_sr);
	
    dsp_add(ttlimiter_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

