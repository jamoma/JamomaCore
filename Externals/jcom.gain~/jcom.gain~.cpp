/* 
 * jcom.gain~
 * External for Jamoma: multichannel gain control
 * By Tim Place, Copyright © 2005
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"					// Max Header
#include "z_dsp.h"					// MSP Header
#include "ext_strings.h"			// String Functions
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "ext_obex.h"				// Max Object Extensions (attributes) Header
#include "tt_audio_base.h"			// Tap.Tools Blue Headers...
#include "tt_audio_signal.h"
#include "tt_crossfade.h"
#include "tt_gain.h"
#include "tt_copy.h"

#define MAX_NUM_CHANNELS 16

// Data Structure for this object
typedef struct _gain{
	t_pxobject 			x_obj;
	void				*obex;
	tt_crossfade		*xfade;							// crossgain object from the ttblue library
	tt_gain				*gain;							// gain control object the ttblue library
	tt_audio_signal		*signal_in[2];
	tt_audio_signal		*signal_out;
	tt_audio_signal		*signal_temp;
	short				num_chans;
	long				attr_bypass;					// toggle 1 = bypass
	float				attr_mix;						// mix in %
	float				attr_gain;						// gain in midi units
} t_gain;

// Prototypes for methods
void *gain_new(t_symbol *s, long argc, t_atom *argv);				// New Object Creation Method
void gain_free(t_gain *x);											// Object Deletion Method
void gain_dsp(t_gain *x, t_signal **sp, short *count);				// DSP Method
void gain_assist(t_gain *x, void *b, long m, long a, char *s);		// Assistance Method
t_int *gain_perform(t_int *w);										// MSP Perform Method
t_max_err attr_set_gain(t_gain *x, void *attr, long argc, t_atom *argv);
t_max_err attr_set_mix(t_gain *x, void *attr, long argc, t_atom *argv);
t_max_err attr_set_bypass(t_gain *x, void *attr, long argc, t_atom *argv);

// Globals
t_class		*gain_class;					// Required. Global pointing to this class
t_symbol	*ps_float32;
t_symbol	*ps_long;
t_symbol	*ps_dumpout;


/************************************************************************************/
// Main() Function

int main(void)				// main recieves a copy of the Max function macros table
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	common_symbols_init();
	ps_float32 = gensym("float32");
	ps_long = gensym("long");
	ps_dumpout = gensym("dumpout");

	// Define our class
	c = class_new("jcom.gain~",(method)gain_new, (method)gain_free, (short)sizeof(t_gain), 
		(method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_gain, obex));

	// Make methods accessible for our class: 
	class_addmethod(c, (method)gain_dsp, 				"dsp", A_CANT, 0L);
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout", A_CANT,0);  
    class_addmethod(c, (method)object_obex_quickref,	"quickref", A_CANT, 0);
    class_addmethod(c, (method)gain_assist, 			"assist", A_CANT, 0L);

	// Add attributes to our class:
	attr = attr_offset_new("bypass", ps_long, attrflags,
		(method)0L,(method)attr_set_bypass, calcoffset(t_gain, attr_bypass));
	class_addattr(c, attr);
	
	attr = attr_offset_new("mix", ps_float32, attrflags,
		(method)0L,(method)attr_set_mix, calcoffset(t_gain, attr_mix));
	class_addattr(c, attr);	
	
	attr = attr_offset_new("gain_midi", ps_float32, attrflags,
		(method)0L,(method)attr_set_gain, calcoffset(t_gain, attr_gain));
	class_addattr(c, attr);	
	
	// Setup our class to work with MSP
	class_dspinit(c);

	// Finalize our class
	class_register(CLASS_BOX, c);
	gain_class = c;
	return 0;
}


/************************************************************************************/
// Object Life

// Create
void *gain_new(t_symbol *s, long argc, t_atom *argv)
{
	long attrstart = attr_args_offset(argc, argv);		// support normal arguments
	short i;
	
	t_gain *x = (t_gain *)object_alloc(gain_class);
	if(x){
		object_obex_store((void *)x, ps_dumpout, (object *)outlet_new(x, NULL));	// dumpout

		x->num_chans = 1;
		if(attrstart && argv){
			int argument = atom_getlong(argv);
			x->num_chans = tt_audio_base::clip(argument, 1, MAX_NUM_CHANNELS);
		}

		dsp_setup((t_pxobject *)x, x->num_chans * 2);	// Create Object and Inlets
		x->x_obj.z_misc = Z_NO_INPLACE;  				// ESSENTIAL!   		
		for(i=0; i< (x->num_chans); i++)
			outlet_new((t_pxobject *)x, "signal");		// Create a signal Outlet   		

		x->xfade = new tt_crossfade;						// Constructors
		x->gain = new tt_gain;
		x->signal_temp = new tt_audio_signal;
		x->signal_out = new tt_audio_signal;
		for(i=0; i<2; i++){
			x->signal_in[i] = new tt_audio_signal;
		}
		
		x->xfade->set_attr(tt_crossfade::k_mode, 0);		// defaults
		x->xfade->set_attr(tt_crossfade::k_shape, 0);
		x->xfade->set_attr(tt_crossfade::k_position, 1);
		x->gain->set_attr(tt_gain::k_gain_direct, 0);
		
		x->attr_bypass = 0;
		x->attr_gain = 0;

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
	delete x->signal_temp;
	delete x->signal_out;
	for(i=0; i<2; i++){
		delete x->signal_in[i];
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
	x->gain->set_attr(tt_gain::k_gain, (x->attr_gain - 127) * .6);		// convert midi to db for tap_gain

	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// ATTRIBUTE: mix
t_max_err attr_set_mix(t_gain *x, void *attr, long argc, t_atom *argv)
{
	x->attr_mix = atom_getfloat(argv);
	if(x->attr_bypass == 0)
		x->xfade->set_attr(tt_crossfade::k_position, x->attr_mix * 0.01);

	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// ATTRIBUTE: bypass
t_max_err attr_set_bypass(t_gain *x, void *attr, long argc, t_atom *argv)
{
	x->attr_bypass = atom_getlong(argv);
	if(x->attr_bypass == 0)
		x->xfade->set_attr(tt_crossfade::k_position, x->attr_mix * 0.01);
	else
		x->xfade->set_attr(tt_crossfade::k_position, 0.0);

	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// Perform Method
t_int *gain_perform(t_int *w)
{
  	t_gain *x = (t_gain *)(w[1]);						// Pointer
	x->signal_in[0]->set_vector((t_float *)(w[2]));		// Input Dry
	x->signal_in[1]->set_vector((t_float *)(w[3]));		// Input Wet
	x->signal_out->set_vector((t_float *)(w[4]));		// Output
	x->signal_in[0]->set_vectorsize((int)(w[5]));		// Vector Size

	x->xfade->dsp_vector_calc(x->signal_in[0], x->signal_in[1], x->signal_temp);	// perform bypass operation on processed input
	x->gain->dsp_vector_calc(x->signal_temp, x->signal_out);						// perform gain boost/cut on processed/bypassed input

	return(w+6);
}


// DSP Method
void gain_dsp(t_gain *x, t_signal **sp, short *count)
{
	short i;
	
	x->signal_temp->alloc(sp[0]->s_n);	// re-allocate memory associated with our temp signal vector
	
	for(i=0; i < x->num_chans; i++)		//add an instance of the perform method for each channel
		dsp_add(gain_perform, 5, 
			x, 
			sp[i]->s_vec, 
			sp[i + x->num_chans]->s_vec, 
			sp[i + (x->num_chans * 2)]->s_vec, 
			sp[i]->s_n 
		);
}

