// External Object for Cycling '74's Max/MSP: lookahead limiter
// Demonstrates the wrapping of a TapTools Blue object
// By Timothy Place, Copyright © 2005
// License: GNU LGPL

#include "ext.h"					// Max Header
#include "z_dsp.h"					// MSP Header
#include "ext_strings.h"			// String Functions
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "ext_obex.h"				// Max Object Extensions (attributes) Header
#include "tt_audio_base.h"			// Tap.Tools Blue Headers...
#include "tt_audio_signal.h"
#include "tt_limiter.h"
#include "tt_copy.h"

#define NUM_INPUTS 2
#define NUM_OUTPUTS 2

// Data Structure for this object
typedef struct _limiter{
    t_pxobject		x_obj;					// Required by MSP (must be first)
    void			*obex;
    tt_limiter		*limiter;
    tt_copy			*copy;
    tt_audio_signal	*signal_in[NUM_INPUTS];
    tt_audio_signal	*signal_out[NUM_OUTPUTS];
    float			attr_threshold;			// ATTRIBUTE: threshold in decibels
    float			attr_release;			// ATTRIBUTE: release time in ms
    long			attr_lookahead;			// ATTRIBUTE: lookahead time in samples
    long			attr_bypass_dcblocker;
    long			attr_bypass;
    t_symbol		*attr_mode;				// ATTRIBUTE: mode (linear/exponential)
    float			attr_preamp;			// ATTRIBUTE: preamp in decibels
    float			attr_postamp;			// ATTRIBUTE: preamp in decibels  
} t_limiter;

// Prototypes for methods: need a method for each incoming message type:
void *limiter_new(t_symbol *s, long argc, t_atom *argv);
t_int *limiter_perform(t_int *w);
t_int *limiter_perform2(t_int *w);
void limiter_dsp(t_limiter *x, t_signal **sp, short *count);
void limiter_assist(t_limiter *x, void *b, long msg, long arg, char *dst);
t_max_err limiter_setthreshold(t_limiter *x, void *attr, long argc, t_atom *argv);
t_max_err limiter_setpreamp(t_limiter *x, void *attr, long argc, t_atom *argv);
t_max_err limiter_setpostamp(t_limiter *x, void *attr, long argc, t_atom *argv);
t_max_err limiter_setmode(t_limiter *x, void *attr, long argc, t_atom *argv);
t_max_err limiter_setrelease(t_limiter *x, void *attr, long argc, t_atom *argv);
t_max_err limiter_setlookahead(t_limiter *x, void *attr, long argc, t_atom *argv);
t_max_err limiter_setbypass_limiter(t_limiter *x, void *attr, long argc, t_atom *argv);
t_max_err limiter_setbypass_dcblocker(t_limiter *x, void *attr, long argc, t_atom *argv);
void limiter_clear(t_limiter *x);
void limiter_free(t_limiter *x);

// Globals
t_class		*limiter_class;					// Required. Global pointing to this class
t_symbol	*ps_linear;
t_symbol	*ps_exponential;
t_symbol	*ps_symbol;
t_symbol	*ps_long;
t_symbol	*ps_float32;
t_symbol	*ps_dumpout;

/************************************************************************************/
// Main() Function

int main(void)				// main recieves a copy of the Max function macros table
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	common_symbols_init();
	ps_symbol = gensym("symbol");
	ps_long = gensym("long");
	ps_float32 = gensym("float32");
	ps_dumpout = gensym("dumpout");

	// Define our class
	c = class_new("blue.limiter~",(method)limiter_new, (method)limiter_free, (short)sizeof(t_limiter), 
		(method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_limiter, obex));

	// Make methods accessible for our class: 
	class_addmethod(c, (method)limiter_dsp, 			"dsp", A_CANT, 0L);
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout", A_CANT,0);  
    class_addmethod(c, (method)object_obex_quickref,	"quickref", A_CANT, 0);
    class_addmethod(c, (method)limiter_assist, 			"assist", A_CANT, 0L);
	class_addmethod(c, (method)limiter_clear,			"clear", 0L);

	// Add attributes to our class:
	// ATTRIBUTE: threshold
	attr = attr_offset_new("threshold", ps_float32,attrflags,
		(method)0L,(method)limiter_setthreshold,calcoffset(t_limiter, attr_threshold));
	class_addattr(c, attr);

	// ATTRIBUTE: preamp
	attr = attr_offset_new("preamp", ps_float32,attrflags,
		(method)0L,(method)limiter_setpreamp,calcoffset(t_limiter, attr_preamp));
	class_addattr(c, attr);

	// ATTRIBUTE: postamp
	attr = attr_offset_new("postamp", ps_float32,attrflags,
		(method)0L,(method)limiter_setpostamp,calcoffset(t_limiter, attr_postamp));
	class_addattr(c, attr);

	// ATTRIBUTE: release
	attr = attr_offset_new("release", ps_float32,attrflags,
		(method)0L,(method)limiter_setrelease,calcoffset(t_limiter, attr_release));
	class_addattr(c, attr);

	// ATTRIBUTE: lookahead
	attr = attr_offset_new("lookahead", ps_long,attrflags,
		(method)0L,(method)limiter_setlookahead,calcoffset(t_limiter, attr_lookahead));
	class_addattr(c, attr);

	// ATTRIBUTE: mode (linear/exponential)
	attr = attr_offset_new("mode", ps_symbol, attrflags,
		(method)0L,(method)limiter_setmode,calcoffset(t_limiter, attr_mode));
	class_addattr(c, attr);

	// ATTRIBUTE: bypass_limiter (toggle)
	attr = attr_offset_new("bypass_dcblocker", ps_long, attrflags,
		(method)0L, (method)limiter_setbypass_dcblocker, calcoffset(t_limiter, attr_bypass_dcblocker));
	class_addattr(c, attr);

	// ATTRIBUTE: bypass_overdrive (toggle)
	attr = attr_offset_new("bypass", ps_long, attrflags,
		(method)0L, (method)0L, calcoffset(t_limiter, attr_bypass));
	class_addattr(c, attr);

	// Setup our class to work with MSP
	class_dspinit(c);

	// Finalize our class
	class_register(CLASS_BOX, c);
	limiter_class = c;
	
	// Init Globals
	ps_linear = gensym("linear");
	ps_exponential = gensym("exponential");
	return 0;
}


/************************************************************************************/
// Object Life

// Create
void *limiter_new(t_symbol *s, long argc, t_atom *argv)
{
	t_limiter *x = (t_limiter *)object_alloc(limiter_class);
	short i;
	
	if(x){
   		object_obex_store((void *)x, ps_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
		dsp_setup((t_pxobject *)x, 2);							// Create object with 2 inlets
	    x->x_obj.z_misc = Z_NO_INPLACE;  						// ESSENTIAL!   		
		outlet_new((t_object *)x, "signal");					// Create signal outlet
		outlet_new((t_object *)x, "signal");					// Create signal outlet	

		tt_audio_base::set_global_sr(sys_getsr());	// Set Tap.Tools global SR...
		tt_audio_base::set_global_vectorsize(sys_getblksize());	// Set Tap.Tools global vector size...

		x->limiter = new tt_limiter;							// Tap.Tools Blue Objects
		x->copy = new tt_copy;

		for(i=0; i<NUM_INPUTS; i++)
			x->signal_in[i] = new tt_audio_signal;
		for(i=0; i<NUM_OUTPUTS; i++)
			x->signal_out[i] = new tt_audio_signal;

		x->attr_threshold = 1.;						// Set the defaults before I go loading in values from the attributes
	    x->attr_release = 1000.;
	    x->attr_lookahead = 100;
	    x->attr_mode = ps_exponential;
	    x->attr_preamp = 1.;
	    x->attr_postamp = 1.;
	    x->attr_bypass = 0;
	    x->attr_bypass_dcblocker = 0;

		attr_args_process(x,argc,argv);					//handle attribute args					
	}
	return (x);									// Return the pointer
}

// Destroy
void limiter_free(t_limiter *x)
{
	short i;
	
	dsp_free((t_pxobject *)x);					// Always call dsp_free first in this routine
	delete x->limiter;
	delete x->copy;
	for(i=0; i<NUM_INPUTS; i++)
		delete x->signal_in[i];
	for(i=0; i<NUM_OUTPUTS; i++)
		delete x->signal_out[i];
}

/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void limiter_assist(t_limiter *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 			// Inlet
		strcpy(dst, "(signal) Input, (anything) attributes");
	else if(msg==2){ 	// Outlet
		switch(arg){
			case 0: strcpy(dst, "(signal) output"); break;
			case 1: strcpy(dst, "(signal) output"); break;
			case 2: strcpy(dst, "dumpout"); break;
		}
	}
}


// Clear Message
void limiter_clear(t_limiter *x)
{
	x->limiter->clear();
}


// ATTRIBUTE: Threshold
t_max_err limiter_setthreshold(t_limiter *x, void *attr, long argc, t_atom *argv)
{
	x->attr_threshold = atom_getfloat(argv);
	x->limiter->set_attr(tt_limiter::k_threshold, x->attr_threshold);
	
	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// ATTRIBUTE: Preamp
t_max_err limiter_setpreamp(t_limiter *x, void *attr, long argc, t_atom *argv)
{
	x->attr_preamp = atom_getfloat(argv);
	x->limiter->set_attr(tt_limiter::k_preamp, x->attr_preamp);
	
	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// ATTRIBUTE: Postamp
t_max_err limiter_setpostamp(t_limiter *x, void *attr, long argc, t_atom *argv)
{
	x->attr_postamp = atom_getfloat(argv);
	x->limiter->set_attr(tt_limiter::k_postamp, x->attr_postamp);
	
	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// ATTRIBUTE: Release
t_max_err limiter_setrelease(t_limiter *x, void *attr, long argc, t_atom *argv)
{
	x->attr_release = atom_getfloat(argv);
	x->limiter->set_attr(tt_limiter::k_release, x->attr_release);
	
	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// ATTRIBUTE: Lookahead
t_max_err limiter_setlookahead(t_limiter *x, void *attr, long argc, t_atom *argv)
{
	x->attr_lookahead = atom_getfloat(argv);
	x->limiter->set_attr(tt_limiter::k_lookahead, x->attr_lookahead);
	
	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// ATTRIBUTE: Bypass the Limiter
t_max_err limiter_setbypass_dcblocker(t_limiter *x, void *attr, long argc, t_atom *argv)
{
	x->attr_bypass_dcblocker = atom_getlong(argv);
	x->limiter->set_attr(tt_limiter::k_defeat_dcblocker, x->attr_bypass_dcblocker);
	
	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// ATTRIBUTE: Mode
t_max_err limiter_setmode(t_limiter *x, void *attr, long argc, t_atom *argv)
{
	t_symbol	*arg;
	arg = atom_getsym(argv);

	if(arg == ps_linear){
		x->attr_mode = ps_linear;
		x->limiter->set_attr(tt_limiter::k_mode, tt_limiter::k_mode_linear);
	}
	else{
		x->attr_mode = ps_exponential;	
		x->limiter->set_attr(tt_limiter::k_mode, tt_limiter::k_mode_exponential);
	}

	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// Perform Method: mono
t_int *limiter_perform(t_int *w)
{
	t_limiter *x = (t_limiter *)(w[1]);		
	x->signal_in[0]->set_vector((t_float *)(w[2]));
	x->signal_out[0]->set_vector((t_float *)(w[3]));
	x->signal_in[0]->vectorsize = (int)(w[4]);

	if(x->x_obj.z_disabled) goto out;

	if(x->attr_bypass == 0)
		x->limiter->dsp_vector_calc(x->signal_in[0], x->signal_out[0]);
	else
		x->copy->dsp_vector_calc(x->signal_in[0], x->signal_out[0]);
out:
	return (w+5);
}


// Perform Method: stereo
t_int *limiter_perform2(t_int *w)
{
	t_limiter *x = (t_limiter *)(w[1]);		
	x->signal_in[0]->set_vector((t_float *)(w[2]));
	x->signal_in[1]->set_vector((t_float *)(w[3]));
	x->signal_out[0]->set_vector((t_float *)(w[4]));
	x->signal_out[1]->set_vector((t_float *)(w[5]));
	x->signal_in[0]->vectorsize = (int)(w[6]);

	if(x->x_obj.z_disabled) goto out;
	
	if(x->attr_bypass == 0)
		x->limiter->dsp_vector_calc(x->signal_in[0], x->signal_in[1], x->signal_out[0], x->signal_out[1]);
	else
		x->copy->dsp_vector_calc(x->signal_in[0], x->signal_in[1], x->signal_out[0], x->signal_out[1]);
out:
	return (w+7);
}


// DSP Method
void limiter_dsp(t_limiter *x, t_signal **sp, short *count)
{
	x->limiter->set_sr(sp[0]->s_sr);
	x->limiter->clear();
	
	if(count[1])
		dsp_add(limiter_perform2, 6, x, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec, sp[3]->s_vec, sp[0]->s_n);
	else
		dsp_add(limiter_perform, 4, x, sp[0]->s_vec, sp[2]->s_vec, sp[0]->s_n);
}

