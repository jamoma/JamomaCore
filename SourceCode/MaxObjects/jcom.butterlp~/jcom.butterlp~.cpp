/* 
 * jcom.butterlp
 * External for Jamoma: 2nd order Butterworth lowpass filter
 * By Trond Lossius, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"
#define NUM_INPUTS 1
#define NUM_OUTPUTS 1

// Data Structure for this object
typedef struct _butterlp{
    t_pxobject				x_obj;					// Required by MSP (must be first)
    void					*obex;
	tt_lowpass_butterworth	*myFilter;
    tt_audio_signal			*signal_in[NUM_INPUTS];
    tt_audio_signal			*signal_out[NUM_OUTPUTS];
    float					attr_frequency;			// ATTRIBUTE: filter cutoff frequency
} t_butterlp;


// Prototypes for methods: need a method for each incoming message type:
void *butterlp_new(t_symbol *s, long argc, t_atom *argv);
t_int *butterlp_perform(t_int *w);
void butterlp_dsp(t_butterlp *x, t_signal **sp, short *count);
void butterlp_assist(t_butterlp *x, void *b, long msg, long arg, char *dst);
void butterlp_free(t_butterlp *x);
void butterlp_clear(t_butterlp *x);
t_max_err butterlp_setfrequency(t_butterlp *x, void *attr, long argc, t_atom *argv);


// Globals
static t_class	*butterlp_class;


/************************************************************************************/
// Main() Function

int main(void)				// main recieves a copy of the Max function macros table
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	jamoma_init();

	// Define our class
	c = class_new("jcom.butterlp~",(method)butterlp_new, (method)butterlp_free, (short)sizeof(t_butterlp), 
		(method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_butterlp, obex));

	// Make methods accessible for our class: 
	class_addmethod(c, (method)butterlp_clear,					"clear", 				0);
	class_addmethod(c, (method)butterlp_dsp, 					"dsp", 					A_CANT, 0);
    class_addmethod(c, (method)butterlp_assist, 				"assist",			 	A_CANT, 0);	
    class_addmethod(c, (method)object_obex_dumpout, 			"dumpout", 				A_CANT, 0);  
    class_addmethod(c, (method)object_obex_quickref,			"quickref", 			A_CANT, 0);
	class_addmethod(c, (method)butterlp_setfrequency,			"/frequency",			A_GIMME, 0);

	// Add attributes to our class:
	// ATTRIBUTE: frequency
	attr = attr_offset_new("frequency", _sym_float32, attrflags,
		(method)0L, (method)butterlp_setfrequency, calcoffset(t_butterlp, attr_frequency));
	class_addattr(c, attr);

	// Setup our class to work with MSP
	class_dspinit(c);

	// Finalize our class
	class_register(CLASS_BOX, c);
	butterlp_class = c;
	return 0;
}


/************************************************************************************/
// Object Life

// Create
void *butterlp_new(t_symbol *s, long argc, t_atom *argv)
{
	t_butterlp *x = (t_butterlp *)object_alloc(butterlp_class);
	
	if(x){
   		object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
		dsp_setup((t_pxobject *)x, 2);							// Create object with 2 inlets
	    x->x_obj.z_misc = Z_NO_INPLACE;  						// ESSENTIAL!   		
		outlet_new((t_object *)x, "signal");					// Create signal outlet

		tt_audio_base::set_global_sr((int)sys_getsr());			// Set Tap.Tools global SR...
		tt_audio_base::set_global_vectorsize(sys_getblksize());	// Set Tap.Tools global vector size...
		x->myFilter = new tt_lowpass_butterworth;				// Tap.Tools Blue Objects

		x->signal_in[0] = new tt_audio_signal;
		x->signal_out[0] = new tt_audio_signal;

		x->attr_frequency = 4000.;								// Defaults

		attr_args_process(x,argc,argv);							// Handle attribute args					
	}
	return (x);													// Return the pointer
}

// Destroy
void butterlp_free(t_butterlp *x)
{
	
	dsp_free((t_pxobject *)x);					// Always call dsp_free first in this routine
	delete x->myFilter;

	delete x->signal_in[0];
	delete x->signal_out[1];
}

/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void butterlp_assist(t_butterlp *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 			// Inlet
		strcpy(dst, "(signal) Input, (anything) attributes");
	else if(msg==2){ 	// Outlet
		switch(arg){
			case 0: strcpy(dst, "(signal) output"); break;
			case 1: strcpy(dst, "dumpout"); break;
		}
	}
}


// Clear Message: Reste the filter
void butterlp_clear(t_butterlp *x)
{
	x->myFilter->clear();
}


// ATTRIBUTE: Frequency
t_max_err butterlp_setfrequency(t_butterlp *x, void *attr, long argc, t_atom *argv)
{
	x->attr_frequency = atom_getfloat(argv);
	x->myFilter->set_attr(tt_lowpass_butterworth::k_frequency, x->attr_frequency);
	
	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// Perform Method: Mono
t_int *butterlp_perform(t_int *w)
{
	t_butterlp *x = (t_butterlp *)(w[1]);		
	x->signal_in[0]->set_vector((t_float *)(w[2]));
	x->signal_out[0]->set_vector((t_float *)(w[3]));
	x->signal_in[0]->vectorsize = (int)(w[4]);

	x->myFilter->dsp_vector_calc(x->signal_in[0], x->signal_out[0]);

	return (w+5);
}


// DSP Method
void butterlp_dsp(t_butterlp *x, t_signal **sp, short *count)
{
	x->myFilter->set_sr((int)sp[0]->s_sr);
	x->myFilter->clear();
	
	dsp_add(butterlp_perform, 4, x, sp[0]->s_vec, sp[2]->s_vec, sp[0]->s_n);
}