// External Object for Jamoma: queues messages to the back of Max's main thread, 
// 								usurping them if a new message is received
// By Timothy Place, Copyright © 2005
// License: GNU LGPL

#include "ext.h"					// Max Header
#include "z_dsp.h"					// MSP Header
#include "ext_strings.h"			// String Functions
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "ext_obex.h"				// Max Object Extensions (attributes) Header
#include "taptools_base.h"			// Tap.Tools Blue Headers...
#include "taptools_audio_signal.h"
#include "tap_crossfade.h"
#include "tap_gain.h"
#include "tap_copy.h"

#define MAX_NUM_CHANNELS 16

// Data Structure for this object
typedef struct _gain{
	t_pxobject 			x_obj;
	void				*obex;
	tap_crossfade		*xfade;							// crossgain object from the ttblue library
	tap_gain			*gain;							// gain control object the ttblue library
	tap_copy			*copy;							// signal copier
	tt_audio_signal		*signal_in[2];
	tt_audio_signal		*signal_out[2];
	tt_audio_signal		*signal_temp;
	short				num_chans;
	long				attr_bypass;					// toggle 1 = bypass
	float				attr_gain;						// gain in midi units
} t_gain;

// Prototypes for methods
void *gain_new(t_symbol *s, short argc, t_atom *argv);				// New Object Creation Method
void gain_free(t_gain *x);											// Object Deletion Method
void gain_dsp(t_gain *x, t_signal **sp, short *count);				// DSP Method
void gain_assist(t_gain *x, void *b, long m, long a, char *s);		// Assistance Method
t_int *gain_perform(t_int *w);										// MSP Perform Method
t_max_err attr_set_gain(t_gain *x, void *attr, long argc, t_atom *argv);
t_max_err attr_set_bypass(t_gain *x, void *attr, long argc, t_atom *argv);

// Globals
t_class *gain_class;					// Required. Global pointing to this class


/************************************************************************************/
// Main() Function

void main(void)				// main recieves a copy of the Max function macros table
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	common_symbols_init();

	// Define our class
	c = class_new("jmod.gain~",(method)gain_new, (method)gain_free, (short)sizeof(t_gain), 
		(method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_gain, obex));

	// Make methods accessible for our class: 
	class_addmethod(c, (method)gain_dsp, 				"dsp", A_CANT, 0L);
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout", A_CANT,0);  
    class_addmethod(c, (method)object_obex_quickref,	"quickref", A_CANT, 0);
    class_addmethod(c, (method)gain_assist, 			"assist", A_CANT, 0L);

	// Add attributes to our class:
	attr = attr_offset_new("bypass", _sym_long, attrflags,
		(method)0L,(method)attr_set_bypass, calcoffset(t_gain, attr_bypass));
	class_addattr(c, attr);
	
	attr = attr_offset_new("gain_midi", _sym_float32, attrflags,
		(method)0L,(method)attr_set_gain, calcoffset(t_gain, attr_gain));
	class_addattr(c, attr);	
	
	// Setup our class to work with MSP
	class_dspinit(c);

	// Finalize our class
	class_register(CLASS_BOX, c);
	gain_class = c;
}


/************************************************************************************/
// Object Life

// Create
void *gain_new(t_symbol *s, short argc, t_atom *argv)
{
	long attrstart = attr_args_offset(argc, argv);		// support normal arguments
	short i;
	
	t_gain *x = (t_gain *)object_alloc(gain_class);
	if(x){
		object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x, NULL));	// dumpout

		x->num_chans = 1;
		if(attrstart && argv){
			int argument = atom_getlong(argv);
			x->num_chans = taptools_audio::clip(argument, 1, MAX_NUM_CHANNELS);
		}

		dsp_setup((t_pxobject *)x, x->num_chans * 2);	// Create Object and Inlets
		x->x_obj.z_misc = Z_NO_INPLACE;  				// ESSENTIAL!   		
		for(i=0; i< (x->num_chans * 2); i++)
			outlet_new((t_pxobject *)x, "signal");		// Create a signal Outlet   		

		x->xfade = new tap_crossfade;						// Constructors
		x->gain = new tap_gain;
		x->copy = new tap_copy;
		x->signal_temp = new tt_audio_signal;
		for(i=0; i<2; i++){
			x->signal_in[i] = new tt_audio_signal;
			x->signal_out[i] = new tt_audio_signal;
		}
		
		x->xfade->set_attr(tap_crossfade::k_mode, 0);		// defaults
		x->xfade->set_attr(tap_crossfade::k_shape, 0);
		x->xfade->set_attr(tap_crossfade::k_position, 0.5);

		attr_args_process(x, argc, argv);					// handle attribute args				
	}
	return (x);												// Return the pointer
}

// Destroy
void gain_free(t_gain *x)
{
	short i;
	
	dsp_free((t_pxobject *)x);					// Always call dsp_free first in this routine
	delete x->xfade;
	delete x->gain;
	delete x->copy;
	delete x->signal_temp;
	for(i=0; i<2; i++){
		delete x->signal_in[i];
		delete x->signal_out[i];
	}
}

/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void gain_assist(t_gain *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1){ 	// Inlets
		if(arg < x->num_chans) strcpy(dst, "(signal) Raw (unprocessed) signal");
		else strcpy(dst, "(signal) Processed signal");
	}
	else if(msg==2){ // Outlets
		if(arg < x->num_chans) strcpy(dst, "(signal) Raw (unprocessed) signal");
		else strcpy(dst, "(signal) Processed signal");
	}
}


// ATTRIBUTE: gain
t_max_err attr_set_gain(t_gain *x, void *attr, long argc, t_atom *argv)
{
	x->attr_gain = atom_getfloat(argv);
	x->gain->set_attr(tap_gain::k_gain, (x->attr_gain - 127) * .6);		// convert midi to db for tap_gain

	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// ATTRIBUTE: bypass
t_max_err attr_set_bypass(t_gain *x, void *attr, long argc, t_atom *argv)
{
	x->attr_bypass = atom_getlong(argv);
	x->xfade->set_attr(tap_crossfade::k_position, !x->attr_bypass);

	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// Perform Method
t_int *gain_perform(t_int *w)
{
  	t_gain *x = (t_gain *)(w[1]);						// Pointer
	x->signal_in[0]->set_vector((t_float *)(w[2]));		// Input1L
	x->signal_in[1]->set_vector((t_float *)(w[3]));		// Input1R
	x->signal_out[0]->set_vector((t_float *)(w[4]));	// Input2L
	x->signal_out[1]->set_vector((t_float *)(w[5]));	// Input2R
	x->signal_in[0]->set_vectorsize((int)(w[6]));		// Vector Size

	x->copy->dsp_vector_calc(x->signal_in[0], x->signal_out[0]);					// copy the raw input to the raw output
	x->xfade->dsp_vector_calc(x->signal_in[0], x->signal_in[1], x->signal_temp);	// perform bypass operation on processed input
	x->gain->dsp_vector_calc(x->signal_temp, x->signal_out[1]);						// perform gain boost/cut on processed/bypassed input

	return(w+7);
}


// DSP Method
void gain_dsp(t_gain *x, t_signal **sp, short *count)
{
	short i;
	
	x->signal_temp->alloc(sp[0]->s_n);	// re-allocate memory associated with our temp signal vector
	
	for(i=0; i < x->num_chans; i++)		//add an instance of the perform method for each channel
		dsp_add(gain_perform, 6, 
			x, 
			sp[i]->s_vec, 
			sp[i + x->num_chans]->s_vec, 
			sp[i + (x->num_chans * 2)]->s_vec, 
			sp[i + (x->num_chans * 3)]->s_vec, 
			sp[i]->s_n 
		);
}

