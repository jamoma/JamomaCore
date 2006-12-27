/* 
 * jcom.xfade~
 * External for Jamoma: multichannel crossfader using ttblue
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

#define MAX_NUM_CHANNELS 16


// Data Structure for this object
typedef struct _fade{					// Data Structure for this object
	t_pxobject 			x_obj;
	void				*obex;
	tt_crossfade		*xfade;			// crossfade object from the TapTools library
	long				attr_shape;
	long				attr_mode;
	float				attr_position;
	short				num_chans;
	tt_audio_signal 	*signal_in[3];
	tt_audio_signal		*signal_out;
} t_fade;

// Prototypes for methods
void *fade_new(t_symbol *s, short argc, t_atom *argv);				// New Object Creation Method
t_int *fade_perform1(t_int *w);										// An MSP Perform (signal) Method
t_int *fade_perform2(t_int *w);										// An MSP Perform (signal) Method
void fade_dsp(t_fade *x, t_signal **sp, short *count);				// DSP Method
void fade_assist(t_fade *x, void *b, long m, long a, char *s);		// Assistance Method
void fade_float(t_fade *x, double value );							// Float Method
void fade_free(t_fade *x);
t_max_err attr_set_position(t_fade *x, void *attr, long argc, t_atom *argv);
t_max_err attr_set_shape(t_fade *x, void *attr, long argc, t_atom *argv);
t_max_err attr_set_mode(t_fade *x, void *attr, long argc, t_atom *argv);
t_int *fade_perform_stereo_1(t_int *w);
t_int *fade_perform_stereo_2(t_int *w);

// Globals
t_class		*fade_class;		// Required. Global pointing to this class
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
	c = class_new("jcom.xfade~",(method)fade_new, (method)fade_free, (short)sizeof(t_fade), 
		(method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_fade, obex));

	// Make methods accessible for our class: 
	class_addmethod(c, (method)fade_float,				"float", A_FLOAT, 0L);
	class_addmethod(c, (method)fade_dsp, 				"dsp", A_CANT, 0L);
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout", A_CANT,0);  
    class_addmethod(c, (method)object_obex_quickref,	"quickref", A_CANT, 0);
    class_addmethod(c, (method)fade_assist, 			"assist", A_CANT, 0L);

	// Add attributes to our class:
	attr = attr_offset_new("shape", ps_long, attrflags,
		(method)0L,(method)attr_set_shape, calcoffset(t_fade, attr_shape));
	class_addattr(c, attr);
	
	attr = attr_offset_new("mode", ps_long, attrflags,
		(method)0L,(method)attr_set_mode, calcoffset(t_fade, attr_mode));
	class_addattr(c, attr);
	
	attr = attr_offset_new("position", ps_float32, attrflags,
		(method)0L,(method)attr_set_position, calcoffset(t_fade, attr_position));
	class_addattr(c, attr);	
	
	// Setup our class to work with MSP
	class_dspinit(c);

	// Finalize our class
	class_register(CLASS_BOX, c);
	fade_class = c;
	return 0;
}


/************************************************************************************/
// Object Life

// Create
void *fade_new(t_symbol *s, short argc, t_atom *argv)
{
	long attrstart = attr_args_offset(argc, argv);		// support normal arguments
	short i;
	
	t_fade *x = (t_fade *)object_alloc(fade_class);
	if(x){
		object_obex_store((void *)x, ps_dumpout, (object *)outlet_new(x, NULL));	// dumpout

		x->num_chans = 1;
		if(attrstart && argv){
			int argument = atom_getlong(argv);
			x->num_chans = tt_audio_base::clip(argument, 1, MAX_NUM_CHANNELS);
		}

		dsp_setup((t_pxobject *)x, (x->num_chans * 2) + 1);	// Create Object and N Inlets (last argument)
		x->x_obj.z_misc = Z_NO_INPLACE;  					// ESSENTIAL!   		
		for(i=0; i< (x->num_chans); i++)
			outlet_new((t_pxobject *)x, "signal");			// Create a signal Outlet   		
		
		x->xfade = new tt_crossfade;						// Constructors
		x->signal_out = new tt_audio_signal;
		for(i=0; i<3; i++){
			x->signal_in[i] = new tt_audio_signal;
		}
		
		x->xfade->set_attr(tt_crossfade::k_mode, 0);		// defaults
		x->xfade->set_attr(tt_crossfade::k_shape, 0);
		x->xfade->set_attr(tt_crossfade::k_position, 0.5);

		attr_args_process(x, argc, argv);					// handle attribute args				
	}
	return (x);												// Return the pointer
}

// Destroy
void fade_free(t_fade *x)
{
	short i;
	
	dsp_free((t_pxobject *)x);					// Always call dsp_free first in this routine
	delete x->xfade;
	delete x->signal_out;
	for(i=0; i<3; i++){
		delete x->signal_in[i];
	}
}

/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void fade_assist(t_fade *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1){ 	// Inlets
		if(arg < x->num_chans) strcpy(dst, "(signal) Input A");
		else if(arg < x->num_chans*2) strcpy(dst, "(signal) Input B");
		else strcpy(dst, "(float/signal) Crossfade Position");
	}
	else if(msg==2){ // Outlets
		if(arg < x->num_chans) strcpy(dst, "(signal) Crossfaded between A and B");
		else strcpy(dst, "dumpout");
	}
}


// Float Method
void fade_float(t_fade *x, double value)
{
	x->attr_position = value;
	x->xfade->set_attr(tt_crossfade::k_position, value);
}


// ATTRIBUTE: position
t_max_err attr_set_position(t_fade *x, void *attr, long argc, t_atom *argv)
{
	x->attr_position = atom_getfloat(argv);
	x->xfade->set_attr(tt_crossfade::k_position, x->attr_position);

	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// ATTRIBUTE: shape
t_max_err attr_set_shape(t_fade *x, void *attr, long argc, t_atom *argv)
{
	x->attr_shape = atom_getlong(argv);
	if(x->attr_shape == 0) x->xfade->set_attr(tt_crossfade::k_shape, tt_crossfade::k_shape_equalpower);
	else x->xfade->set_attr(tt_crossfade::k_shape, tt_crossfade::k_shape_linear);

	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// ATTRIBUTE: mode
t_max_err attr_set_mode(t_fade *x, void *attr, long argc, t_atom *argv)
{
	x->attr_mode = atom_getlong(argv);
	if(x->attr_mode == 0) x->xfade->set_attr(tt_crossfade::k_mode, tt_crossfade::k_mode_lookup);
	else x->xfade->set_attr(tt_crossfade::k_mode, tt_crossfade::k_mode_calculate);

	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// control rate fading
t_int *fade_perform1(t_int *w)
{
  	t_fade *x = (t_fade *)(w[1]);						// Pointer
	x->signal_in[0]->set_vector((t_float *)(w[2]));		// Input Dry
	x->signal_in[1]->set_vector((t_float *)(w[3]));		// Input Wet
	x->signal_out->set_vector((t_float *)(w[4]));		// Output
	x->signal_in[0]->set_vectorsize((int)(w[5]));		// Vector Size

	if(!(x->x_obj.z_disabled))
		x->xfade->dsp_vector_calc(x->signal_in[0], x->signal_in[1], x->signal_out);

	return(w+6);
}


// signal rate fading
t_int *fade_perform2(t_int *w)
{
  	t_fade *x = (t_fade *)(w[1]);						// Pointer
	x->signal_in[0]->set_vector((t_float *)(w[2]));		// Input Dry
	x->signal_in[1]->set_vector((t_float *)(w[3]));		// Input Wet
	x->signal_in[2]->set_vector((t_float *)(w[4]));		// Input Control
	x->signal_out->set_vector((t_float *)(w[5]));		// Output
	x->signal_in[0]->set_vectorsize((int)(w[6]));		// Vector Size

	if(!(x->x_obj.z_disabled)){
		x->xfade->set_attr(tt_crossfade::k_position, *x->signal_in[2]->vector);	// automated at vector-rate rather than the sample-rate
		x->xfade->dsp_vector_calc(x->signal_in[0], x->signal_in[1], x->signal_out);
	}
	return(w+7);		// Return a pointer to the NEXT object in the DSP call chain
}


// DSP Method
void fade_dsp(t_fade *x, t_signal **sp, short *count)
{
	short i;

	// determine if a signal is being used to drive the crossfade position
	if(count[x->num_chans * 2]){			// SIGNAL RATE CROSSFADE CONNECTED
		for(i=0; i < x->num_chans; i++)		//add an instance of the perform method for each channel
			dsp_add(fade_perform2, 6, 
				x, 
				sp[i]->s_vec, 
				sp[i + x->num_chans]->s_vec, 
				sp[x->num_chans * 2]->s_vec, 
				sp[i + (x->num_chans * 2) + 1]->s_vec, 
				sp[i]->s_n 
			);
	}
	else{									// CONTROL RATE CROSSFADE
		for(i=0; i < x->num_chans; i++)		//add an instance of the perform method for each channel
			dsp_add(fade_perform1, 5, 
				x, 
				sp[i]->s_vec, 
				sp[i + x->num_chans]->s_vec, 
				sp[i + (x->num_chans * 2) + 1]->s_vec, 
				sp[i]->s_n 
			);
	}
}

