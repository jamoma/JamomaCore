/*
 * ttclip~ Object for Pure Data
 * Written by Tim Place
 * Copyright © 2009
 * 
 */

#include "m_pd.h"
#include "TTDSP.h"


// Types & Structs
typedef struct _ttclip {
	t_object		obj;
	t_outlet*		outlet;			// outlet for status and version messages
	t_float			f;				// dummy for signal in first inlet
	TTAudioObject*	clipper;		// the Jamoma DSP clipper object
	TTAudioSignal*	audioIn;
	TTAudioSignal*	audioOut;
} t_ttclip;


// Prototypes
extern "C" {
	void ttclip_tilde_setup();
}

void*	ttclip_new(t_symbol *s, long ac, t_atom *at);
void	ttclip_free(t_ttclip *x);
void	ttclip_setlowbound(t_ttclip *x, float f);
void	ttclip_sethighbound(t_ttclip *x, float f);
t_int*	ttclip_perform(t_int *w);
void	ttclip_dsp(t_ttclip *x, t_signal **sp);


// Statics & Globals
static t_class *ttclip_class;


// Class Definition
void ttclip_tilde_setup(void) 
{	
	TTDSPInit();
	
	ttclip_class = class_new(gensym("ttclip~"), (t_newmethod)ttclip_new, (t_method)ttclip_free, sizeof(t_ttclip), 0, A_GIMME, 0);

	CLASS_MAINSIGNALIN(ttclip_class, t_ttclip, f);
    class_addmethod(ttclip_class, (t_method)ttclip_dsp,				gensym("dsp"),			A_NULL);
	class_addmethod(ttclip_class, (t_method)ttclip_setlowbound,		gensym("lowbound"),		A_FLOAT, 0);
	class_addmethod(ttclip_class, (t_method)ttclip_sethighbound,	gensym("highbound"),	A_FLOAT, 0);

    class_sethelpsymbol(ttclip_class, gensym("help-ttclip~.pd"));
}


// Life Cycle

void *ttclip_new(t_symbol *s, long ac, t_atom *at)
{
	t_ttclip*	x = (t_ttclip*)pd_new(ttclip_class);
	TTUInt16	numChannels = 1;	// Just mono now...
	TTErr		err;

	if(x){
		outlet_new(&x->obj, gensym("signal"));	// Create new signal outlet
		x->clipper = NULL;
		err = TTObjectInstantiate(TT("clipper"), &x->clipper, numChannels);
		if (err)
			post("ERROR FROM TTCLIP_NEW: %ld", err);		
		
		TTObjectInstantiate(kTTSym_audiosignal, &x->audioIn, numChannels);		
		TTObjectInstantiate(kTTSym_audiosignal, &x->audioOut, numChannels);		
	}
	return(x);
}


void ttclip_free(t_ttclip *x)
{
	TTObjectRelease(&x->clipper);
	TTObjectRelease(&x->audioIn);
	TTObjectRelease(&x->audioOut);
}


// Methods

// set attr
void ttclip_setlowbound(t_ttclip *x, float f)
{
	x->clipper->setAttributeValue(TT("lowBound"), f);
}

// set attr
void ttclip_sethighbound(t_ttclip *x, float f)
{
	x->clipper->setAttributeValue(TT("highBound"), f);
}


// Perform (signal) Method
t_int *ttclip_perform(t_int *w)
{
	t_ttclip*	x = (t_ttclip*)(w[1]);		
	t_float*		in = (t_float*)(w[2]);
	t_float*		out = (t_float*)(w[3]);
	TTUInt16		vs = x->audioIn->getVectorSizeAsInt();

	x->audioIn->setVector(0, vs, (t_float*)in);
	x->clipper->process(x->audioIn, x->audioOut);
	x->audioOut->getVector(0, vs, (t_float*)out);
	
	return (w+5);
}


// DSP Method
void ttclip_dsp(t_ttclip *x, t_signal **sp)
{
	x->audioIn->setNumChannels(1);
	x->audioOut->setNumChannels(1);
	x->audioIn->setVectorSizeWithInt(sp[0]->s_n);
	x->audioOut->setVectorSizeWithInt(sp[0]->s_n);
	//audioIn will be set in the perform method
	x->audioOut->alloc();
	
	x->clipper->setAttributeValue(kTTSym_sampleRate, sp[0]->s_sr);
	
    dsp_add(ttclip_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}

