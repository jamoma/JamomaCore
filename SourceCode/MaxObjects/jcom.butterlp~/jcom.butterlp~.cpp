/* 
 * jcom.butterlp
 * External for Jamoma: add harmonic distortion (overdrive/butterlp) to a signal
 * By Tim Place, Copyright © 2005
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"

// Data Structure for this object
typedef struct _butterlp{
    t_pxobject		x_obj;					// Required by MSP (must be first)
    void			*obex;
	tt_lowpass_butterworth	*lowpass_butterworth;
    tt_copy			*copy;
    tt_audio_signal	*signal_in;
    tt_audio_signal	*signal_out;
    float			attr_frequency;			// ATTRIBUTE: filter cutoff frequency
    long			attr_bypass;
	long			attr_mute;
} t_butterlp;

// Prototypes for methods: need a method for each incoming message type:
void *butterlp_new(t_symbol *s, long argc, t_atom *argv);
t_int *butterlp_perform(t_int *w);
void butterlp_dsp(t_butterlp *x, t_signal **sp, short *count);
void butterlp_assist(t_butterlp *x, void *b, long msg, long arg, char *dst);
t_max_err butterlp_setfrequency(t_butterlp *x, void *attr, long argc, t_atom *argv);
t_max_err butterlp_setbypass_overdrive(t_butterlp *x, void *attr, long argc, t_atom *argv);
t_max_err butterlp_setmute(t_butterlp *x, void *attr, long argc, t_atom *argv);
void butterlp_anything(t_butterlp *x, t_symbol *msg, long argc, t_atom *argv);
void set_bypass(t_butterlp *x);
void butterlp_clear(t_butterlp *x);
void butterlp_free(t_butterlp *x);

// Globals
t_class		*butterlp_class;					// Required. Global pointing to this class
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
	
	jamoma_init();
	ps_symbol = gensym("symbol");
	ps_long = gensym("long");
	ps_float32 = gensym("float32");
	ps_dumpout = gensym("dumpout");

	// Define our class
	c = class_new("jcom.butterlp~",(method)butterlp_new, (method)butterlp_free, (short)sizeof(t_butterlp), 
		(method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_butterlp, obex));

	// Make methods accessible for our class: 
	class_addmethod(c, (method)butterlp_dsp, 					"dsp", 					A_CANT, 0);
    class_addmethod(c, (method)object_obex_dumpout, 			"dumpout", 				A_CANT, 0);  
    class_addmethod(c, (method)object_obex_quickref,			"quickref", 			A_CANT, 0);
    class_addmethod(c, (method)butterlp_assist, 				"assist",			 	A_CANT, 0);
	class_addmethod(c, (method)butterlp_clear,					"clear", 				0);
	class_addmethod(c, (method)butterlp_setfrequency,			"/frequency",			A_GIMME, 0);
	class_addmethod(c, (method)butterlp_setmute,				"/audio/mute",			A_GIMME, 0);
	class_addmethod(c, (method)butterlp_anything,				"anything",				A_GIMME, 0);

	// Add attributes to our class:
	// ATTRIBUTE: overdrive
	attr = attr_offset_new("frequency", ps_float32, attrflags,
		(method)0L, (method)butterlp_setbutterlp, calcoffset(t_butterlp, attr_frequency));
	class_addattr(c, attr);


	// ATTRIBUTE: bypass_overdrive (toggle)
	attr = attr_offset_new("bypass", ps_long, attrflags,
		(method)0L, (method)0L, calcoffset(t_butterlp, attr_bypass));
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
   		object_obex_store((void *)x, ps_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
		dsp_setup((t_pxobject *)x, 2);							// Create object with 2 inlets
	    x->x_obj.z_misc = Z_NO_INPLACE;  						// ESSENTIAL!   		
		outlet_new((t_object *)x, "signal");					// Create signal outlet
		outlet_new((t_object *)x, "signal");					// Create signal outlet	

		tt_audio_base::set_global_sr((int)sys_getsr());			// Set Tap.Tools global SR...
		tt_audio_base::set_global_vectorsize(sys_getblksize());	// Set Tap.Tools global vector size...
		x->lowpass_butterworth = new tt_lowpass_butterworth;	// Tap.Tools Blue Objects
		x->copy = new tt_copy;


		x->signal_in = new tt_audio_signal;
		x->signal_out = new tt_audio_signal;

		x->attr_overdrive = 1.;									// Defaults
	    x->attr_bypass = 0;
		x->attr_mute = 0;

		attr_args_process(x,argc,argv);							// handle attribute args					
	}
	return (x);													// Return the pointer
}

// Destroy
void butterlp_free(t_butterlp *x)
{
	
	dsp_free((t_pxobject *)x);					// Always call dsp_free first in this routine
	delete x->lowpass_butterworth;
	delete x->copy;

	delete x->signal_in;
	delete x->signal_out;
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
			case 1: strcpy(dst, "(signal) output"); break;
			case 2: strcpy(dst, "dumpout"); break;
		}
	}
}


// Clear Message
void butterlp_clear(t_butterlp *x)
{
	x->tt_lowpass_butterworth->clear();
}


// ATTRIBUTE: Frequency
t_max_err butterlp_setfrequency(t_butterlp *x, void *attr, long argc, t_atom *argv)
{
	x->attr_frequency = atom_getfloat(argv);
	x->lowpass_butterworth->set_attr(tt_lowpass_butterworth::k_frequency, x->attr_frequency);
	
	return MAX_ERR_NONE;
	#pragma unused(attr)
}


t_max_err butterlp_setmute(t_butterlp *x, void *attr, long argc, t_atom *argv)
{
	x->attr_mute = atom_getlong(argv);
	return MAX_ERR_NONE;
}


// when used as the algorithm for a module, we use this to suppress errors for unhandles messages
void butterlp_anything(t_butterlp *x, t_symbol *msg, long argc, t_atom *argv)
{
	//post("anything: %s", msg->s_name);
}


// Perform Method: mono
t_int *butterlp_perform(t_int *w)
{
	t_butterlp *x = (t_butterlp *)(w[1]);		
	x->signal_in->set_vector((t_float *)(w[2]));
	x->signal_out->set_vector((t_float *)(w[3]));
	x->signal_in->vectorsize = (int)(w[4]);

	if(x->x_obj.z_disabled || x->attr_mute) 
		goto out;

	if(x->attr_bypass == 0)
		x->overdrive->dsp_vector_calc(x->signal_in, x->signal_out);
	else
		x->copy->dsp_vector_calc(x->signal_in, x->signal_out);
out:
	return (w+5);
}


// DSP Method
void butterlp_dsp(t_butterlp *x, t_signal **sp, short *count)
{
	x->overdrive->set_sr((int)sp[0]->s_sr);
	x->overdrive->clear();
	
	dsp_add(butterlp_perform, 4, x, sp[0]->s_vec, sp[2]->s_vec, sp[0]->s_n);
}

