/* 
 * jcom.saturation
 * External for Jamoma: add harmonic distortion (overdrive/saturation) to a signal
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
#include "tt_overdrive.h"
#include "tt_copy.h"

#define NUM_INPUTS 2
#define NUM_OUTPUTS 2

// Data Structure for this object
typedef struct _saturation{
    t_pxobject		x_obj;					// Required by MSP (must be first)
    void			*obex;
    tt_overdrive	*overdrive;
    tt_copy			*copy;
    tt_audio_signal	*signal_in[NUM_INPUTS];
    tt_audio_signal	*signal_out[NUM_OUTPUTS];
    float			attr_overdrive;			// ATTRIBUTE: amount of overdrive
    long			attr_bypass_dcblocker;
    long			attr_bypass;
	long			attr_mode;
	long			attr_mute;
	float			attr_preamp_db;
} t_saturation;

// Prototypes for methods: need a method for each incoming message type:
void *saturation_new(t_symbol *s, long argc, t_atom *argv);
t_int *saturation_perform(t_int *w);
t_int *saturation_perform2(t_int *w);
void saturation_dsp(t_saturation *x, t_signal **sp, short *count);
void saturation_assist(t_saturation *x, void *b, long msg, long arg, char *dst);
t_max_err saturation_setsaturation(t_saturation *x, void *attr, long argc, t_atom *argv);
t_max_err saturation_setbypass_dcblocker(t_saturation *x, void *attr, long argc, t_atom *argv);
t_max_err saturation_setbypass_overdrive(t_saturation *x, void *attr, long argc, t_atom *argv);
t_max_err saturation_setmode(t_saturation *x, void *attr, long argc, t_atom *argv);
t_max_err saturation_setpreamp(t_saturation *x, void *attr, long argc, t_atom *argv);
t_max_err saturation_setmute(t_saturation *x, void *attr, long argc, t_atom *argv);
void saturation_anything(t_saturation *x, t_symbol *msg, long argc, t_atom *argv);
void set_bypass(t_saturation *x);
void saturation_clear(t_saturation *x);
void saturation_free(t_saturation *x);

// Globals
t_class		*saturation_class;					// Required. Global pointing to this class
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
	c = class_new("jcom.saturation~",(method)saturation_new, (method)saturation_free, (short)sizeof(t_saturation), 
		(method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_saturation, obex));

	// Make methods accessible for our class: 
	class_addmethod(c, (method)saturation_dsp, 					"dsp", 					A_CANT, 0);
    class_addmethod(c, (method)object_obex_dumpout, 			"dumpout", 				A_CANT, 0);  
    class_addmethod(c, (method)object_obex_quickref,			"quickref", 			A_CANT, 0);
    class_addmethod(c, (method)saturation_assist, 				"assist",			 	A_CANT, 0);
	class_addmethod(c, (method)saturation_clear,				"clear", 				0);
	class_addmethod(c, (method)saturation_setpreamp,			"/preamp",				A_GIMME, 0);
	class_addmethod(c, (method)saturation_setsaturation,		"/saturation",			A_GIMME, 0);
	class_addmethod(c, (method)saturation_setmode,				"/mode",				A_GIMME, 0);
	class_addmethod(c, (method)saturation_setbypass_dcblocker,	"/dcblocker/bypass",	A_GIMME, 0);
	class_addmethod(c, (method)saturation_setmute,				"/audio/mute",			A_GIMME, 0);
	class_addmethod(c, (method)saturation_anything,				"anything",				A_GIMME, 0);

	// Add attributes to our class:
	// ATTRIBUTE: overdrive
	attr = attr_offset_new("overdrive", ps_float32, attrflags,
		(method)0L, (method)saturation_setsaturation, calcoffset(t_saturation, attr_overdrive));
	class_addattr(c, attr);

	// ATTRIBUTE: bypass_dcblocker (toggle)
	attr = attr_offset_new("bypass_dcblocker", ps_long, attrflags,
		(method)0L, (method)saturation_setbypass_dcblocker, calcoffset(t_saturation, attr_bypass_dcblocker));
	class_addattr(c, attr);

	// ATTRIBUTE: bypass_overdrive (toggle)
	attr = attr_offset_new("bypass", ps_long, attrflags,
		(method)0L, (method)0L, calcoffset(t_saturation, attr_bypass));
	class_addattr(c, attr);

	// ATTRIBUTE: mode (int)
	attr = attr_offset_new("mode", ps_long, attrflags,
		(method)0L, (method)saturation_setmode, calcoffset(t_saturation, attr_mode));
	class_addattr(c, attr);
	
	// ATTRIBUTE: preamp
	attr = attr_offset_new("preamp", ps_float32, attrflags,
		(method)0L, (method)saturation_setpreamp, calcoffset(t_saturation, attr_preamp_db));
	class_addattr(c, attr);

	// Setup our class to work with MSP
	class_dspinit(c);

	// Finalize our class
	class_register(CLASS_BOX, c);
	saturation_class = c;
	return 0;
}


/************************************************************************************/
// Object Life

// Create
void *saturation_new(t_symbol *s, long argc, t_atom *argv)
{
	t_saturation *x = (t_saturation *)object_alloc(saturation_class);
	short i;
	
	if(x){
   		object_obex_store((void *)x, ps_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
		dsp_setup((t_pxobject *)x, 2);							// Create object with 2 inlets
	    x->x_obj.z_misc = Z_NO_INPLACE;  						// ESSENTIAL!   		
		outlet_new((t_object *)x, "signal");					// Create signal outlet
		outlet_new((t_object *)x, "signal");					// Create signal outlet	

		tt_audio_base::set_global_sr((int)sys_getsr());				// Set Tap.Tools global SR...
		tt_audio_base::set_global_vectorsize(sys_getblksize());	// Set Tap.Tools global vector size...

		x->overdrive = new tt_overdrive;						// Tap.Tools Blue Objects
		x->copy = new tt_copy;

		for(i=0; i<NUM_INPUTS; i++)
			x->signal_in[i] = new tt_audio_signal;
		for(i=0; i<NUM_OUTPUTS; i++)
			x->signal_out[i] = new tt_audio_signal;

		x->attr_overdrive = 1.;									// Defaults
	    x->attr_bypass = 0;
		x->attr_bypass_dcblocker = 0;
		x->attr_mode = 1;
		x->overdrive->set_attr(tt_overdrive::k_mode, 1);
		x->attr_preamp_db = 0;

		attr_args_process(x,argc,argv);							// handle attribute args					
	}
	return (x);													// Return the pointer
}

// Destroy
void saturation_free(t_saturation *x)
{
	short i;
	
	dsp_free((t_pxobject *)x);					// Always call dsp_free first in this routine
	delete x->overdrive;
	delete x->copy;
	for(i=0; i<NUM_INPUTS; i++)
		delete x->signal_in[i];
	for(i=0; i<NUM_OUTPUTS; i++)
		delete x->signal_out[i];
}

/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void saturation_assist(t_saturation *x, void *b, long msg, long arg, char *dst)
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
void saturation_clear(t_saturation *x)
{
	x->overdrive->clear();
}


// ATTRIBUTE: Overdrive
t_max_err saturation_setsaturation(t_saturation *x, void *attr, long argc, t_atom *argv)
{
	x->attr_overdrive = atom_getfloat(argv);
	x->overdrive->set_attr(tt_overdrive::k_drive, x->attr_overdrive);
	
	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// ATTRIBUTE: Bypass the DC Blocker
t_max_err saturation_setbypass_dcblocker(t_saturation *x, void *attr, long argc, t_atom *argv)
{
	x->attr_bypass_dcblocker = atom_getlong(argv);
	x->overdrive->set_attr(tt_overdrive::k_defeat_dcblocker, x->attr_bypass_dcblocker);
	
	return MAX_ERR_NONE;
	#pragma unused(attr)
}


t_max_err saturation_setmute(t_saturation *x, void *attr, long argc, t_atom *argv)
{
	x->attr_mute = atom_getlong(argv);
	return MAX_ERR_NONE;
}


// ATTRIBUTE: Mode that the overdrive uses for calculation
t_max_err saturation_setmode(t_saturation *x, void *attr, long argc, t_atom *argv)
{
	if(argv->a_type == A_SYM){
		if(argv->a_w.w_sym == gensym("sinus"))
			x->attr_mode = 1;
		else if(argv->a_w.w_sym == gensym("s-shaped"))
			x->attr_mode = 0;
		else
			error("jcom.saturation - invalid mode specified");
	}
	else
		x->attr_mode = atom_getlong(argv);
		
	x->overdrive->set_attr(tt_overdrive::k_mode, x->attr_mode);
	
	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// when used as the algorithm for a module, we use this to suppress errors for unhandles messages
void saturation_anything(t_saturation *x, t_symbol *msg, long argc, t_atom *argv)
{
	//post("anything: %s", msg->s_name);
}


t_max_err saturation_setpreamp(t_saturation *x, void *attr, long argc, t_atom *argv)
{
	x->attr_preamp_db = atom_getfloat(argv);
	x->overdrive->set_attr(tt_overdrive::k_preamp, x->attr_preamp_db);
	
	return MAX_ERR_NONE;
	#pragma unused(attr)
}



// Perform Method: mono
t_int *saturation_perform(t_int *w)
{
	t_saturation *x = (t_saturation *)(w[1]);		
	x->signal_in[0]->set_vector((t_float *)(w[2]));
	x->signal_out[0]->set_vector((t_float *)(w[3]));
	x->signal_in[0]->vectorsize = (int)(w[4]);

	if(x->x_obj.z_disabled || x->attr_mute) 
		goto out;

	if(x->attr_bypass == 0)
		x->overdrive->dsp_vector_calc(x->signal_in[0], x->signal_out[0]);
	else
		x->copy->dsp_vector_calc(x->signal_in[0], x->signal_out[0]);
out:
	return (w+5);
}


// Perform Method: stereo
t_int *saturation_perform2(t_int *w)
{
	t_saturation *x = (t_saturation *)(w[1]);		
	x->signal_in[0]->set_vector((t_float *)(w[2]));
	x->signal_in[1]->set_vector((t_float *)(w[3]));
	x->signal_out[0]->set_vector((t_float *)(w[4]));
	x->signal_out[1]->set_vector((t_float *)(w[5]));
	x->signal_in[0]->vectorsize = (int)(w[6]);

	if(x->x_obj.z_disabled || x->attr_mute) 
		goto out;
	
	if(x->attr_bypass == 0)
		x->overdrive->dsp_vector_calc(x->signal_in[0], x->signal_in[1], x->signal_out[0], x->signal_out[1]);
	else
		x->copy->dsp_vector_calc(x->signal_in[0], x->signal_in[1], x->signal_out[0], x->signal_out[1]);
out:
	return (w+7);
}


// DSP Method
void saturation_dsp(t_saturation *x, t_signal **sp, short *count)
{
	x->overdrive->set_sr((int)sp[0]->s_sr);
	x->overdrive->clear();
	
	if(count[1])
		dsp_add(saturation_perform2, 6, x, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec, sp[3]->s_vec, sp[0]->s_n);
	else
		dsp_add(saturation_perform, 4, x, sp[0]->s_vec, sp[2]->s_vec, sp[0]->s_n);
}

