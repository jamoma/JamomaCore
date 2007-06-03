/* 
 * jcom.out~
 * External for Jamoma: manage audio outputs for a module
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */


/*
	The user specifies @channel_config mono or @channel_config stereo 
	as arg to the module.  That makes the hub responsible for cleaning
	up an unused inlets and outlets for the configuration.  
	
	It may also signal to the module to handle the poly differently,
	i.e. if the algorithm should be true stereo instead of multi-mono
	
	This all means that we need this object to subscribe to the hub.
*/

#include "ext.h"					// Max Header
#include "z_dsp.h"					// MSP Header
#include "ext_strings.h"			// String Functions
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "ext_obex.h"				// Max Object Extensions (attributes) Header
#include "jcom.core.h"
#include "jcom.io.h"
#include "jcom.out.h"

#define POLL_INTERVAL	150			// metro time

// Globals
t_class		*out_class;					// Required. Global pointing to this class


/************************************************************************************/
// Main() Function

int main(void)				// main recieves a copy of the Max function macros table
{
	long 		attrflags = 0;
	t_class 	*c;
	t_object 	*attr = NULL;
	long		offset;
	
	common_symbols_init();

	// Define our class
#ifdef JCOM_OUT_TILDE
	c = class_new("jcom.out~",(method)out_new, (method)out_free, (short)sizeof(t_out), (method)0L, A_GIMME, 0);
#else
	c = class_new("jcom.out",(method)out_new, (method)out_free, (short)sizeof(t_out), (method)0L, A_GIMME, 0);
#endif

	offset = calcoffset(t_out, common);
	class_obexoffset_set(c, offset + calcoffset(t_jcom_core_subscriber_common, obex));

	// Make methods accessible for our class: 
	class_addmethod(c, (method)out_dispatched,			"dispatched",			A_GIMME, 0L);
	class_addmethod(c, (method)out_algorithm_message,	"algorithm_message",	A_GIMME, 0L);
	class_addmethod(c, (method)out_link_to_in_object,	"link_in", 				A_CANT, 0L);
	class_addmethod(c, (method)out_unlink,				"unlink_in",			0L);
	class_addmethod(c, (method)out_register_meter,		"register_meter",		A_CANT, 0L);
	class_addmethod(c, (method)out_remove_meters,		"remove_meters",		A_CANT, 0L);
	class_addmethod(c, (method)out_register_preview,	"register_preview",		A_CANT, 0L);
#ifdef JCOM_OUT_TILDE
	class_addmethod(c, (method)out_dsp,					"dsp", 					A_CANT, 0L);
#else
	class_addmethod(c, (method)out_anything,			"anything",				A_GIMME, 0L);
	class_addmethod(c, (method)out_sendbypassedvalue,	"sendbypassedvalue",	A_CANT, 0L);
	class_addmethod(c, (method)out_sendlastvalue,		"sendlastvalue",		A_CANT, 0L);
#endif
	class_addmethod(c, (method)out_release,				"release",				A_CANT, 0L);	// notification of hub being freed
    class_addmethod(c, (method)out_assist,				"assist", 				A_CANT, 0L);

	jcom_core_subscriber_classinit_common(c, attr, offset);	
	
	// ATTRIBUTE: algorithm_type
	attr = attr_offset_new("algorithm_type", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_out, attr_algorithm_type));
	class_addattr(c, attr);
	
	// ATTRIBUTE: num_inputs
	attr = attr_offset_new("num_outputs", _sym_long, attrflags,
		(method)0, (method)0, calcoffset(t_out, num_outputs));
	class_addattr(c, attr);	

#ifdef JCOM_OUT_TILDE
	// Setup our class to work with MSP
	class_dspinit(c);
#endif 

	// Finalize our class
	class_register(CLASS_BOX, c);
	out_class = c;
	jcom_core_init();
	return 0;
}


/************************************************************************************/
// Object Life

// Create
void *out_new(t_symbol *s, long argc, t_atom *argv)
{
	long 		attrstart = attr_args_offset(argc, argv);		// support normal arguments
	t_out 		*x = (t_out *)object_alloc(out_class);
	short 		i;

	if(x){
		x->dumpout = outlet_new(x, NULL);
		object_obex_store((void *)x, ps_dumpout, (object *)x->dumpout);		// setup the dumpout

		x->num_outputs =  1;
		x->vector_size = 0;
		x->attr_preview = 0;
		x->preview_object = NULL;
		x->attr_bypass = 0;
		x->attr_mute = 0;
		x->attr_algorithm_type = _sym_nothing;
		if(attrstart > 0){
			int argument = atom_getlong(argv);
			x->num_outputs = tt_audio_base::clip(argument, 0, MAX_NUM_CHANNELS);
		}
#ifdef JCOM_OUT_TILDE
		if(x->num_outputs > 0)
			dsp_setup((t_pxobject *)x, x->num_outputs);		// Create Object and Inlets
		else
			dsp_setup((t_pxobject *)x, 1);					// Create Object and Inlets
			
		x->common.ob.z_misc = Z_NO_INPLACE | Z_PUT_LAST;	// Z_PUT_LAST so that thispoly~ gets it's message properly?  		
		for(i=0; i < (x->num_outputs); i++)
			outlet_new((t_pxobject *)x, "signal");			// Create a signal Outlet   		

		x->clock = clock_new(x, (method)update_meters);
		x->clock_is_set = 0;
		x->signal_in = new tt_audio_signal;
		x->signal_out = new tt_audio_signal;
		x->signal_temp = new tt_audio_signal;
		x->xfade = new tt_crossfade;
		x->gain = new tt_gain;
		x->ramp_gain = new tt_ramp;
		x->ramp_xfade = new tt_ramp;
		out_alloc(x, sys_getblksize());						// allocates the vectors for the audio signals
#else
		for(i=x->num_outputs-1; i >= 1; i--)
			x->inlet[i] = proxy_new(x, i, 0L);
		for(i=x->num_outputs-1; i >= 0; i--)
			x->outlet[i] = outlet_new(x, 0L);
#endif		
		jcom_core_subscriber_new_common(&x->common, ps__jcom_out__, ps_subscribe_out);
		jcom_core_subscriber_setcustomsubscribe_method(&x->common, &out_subscribe);
		
		attr_args_process(x, argc, argv);					// handle attribute args				
		defer_low(x, (method)jcom_core_subscriber_subscribe, 0, 0, 0);
	}
	return (x);												// Return the pointer
}


// deferred function for registering with the jcom.hub object
void out_subscribe(void *z)
{
	long		argc;
	t_atom		a;
	t_atom		*argv = &a;
	t_symbol	*result;
	t_symbol	*modtype;
	t_out		*x = (t_out *)z;
	
	//x->common.hub = jcom_core_subscribe(x, x->common.attr_name, x->common.container, ps_subscribe_out);
	if(x->common.hub != NULL){
		object_attr_getvalueof(x->common.hub, ps_name, &argc, &argv);
		x->common.module_name = atom_getsym(argv);
		x->num_meter_objects = 0;
		
		// Find out what type of algorithm this is supposed to control
		object_attr_getvalueof(x->common.hub, ps_algorithm_type, &argc, &argv);
		result = atom_getsym(argv);
		if(result == ps_default){
			object_attr_getvalueof(x->common.hub, ps_module_type, &argc, &argv);
			modtype = atom_getsym(argv);
		
			if(modtype == ps_audio)
				x->attr_algorithm_type = ps_poly;
			else if(modtype == ps_video)
				x->attr_algorithm_type = ps_jitter;
			else
				x->attr_algorithm_type = ps_control;
		}
		else
			x->attr_algorithm_type = result;
	}
}


// Destroy
void out_free(t_out *x)
{
#ifdef JCOM_OUT_TILDE
	dsp_free((t_pxobject *)x);			// Always call dsp_free first in this routine
	freeobject((t_object *)x->clock);	// delete our clock
	
	delete x->signal_in;
	delete x->signal_out;
	delete x->signal_temp;
	delete x->xfade;
	delete x->gain;
	delete x->ramp_gain;
	delete x->ramp_xfade;
#endif
	jcom_core_subscriber_common_free(&x->common);
}


// Notification that the hub no longer exists
void out_release(t_out *x)
{
	short i;
	
	jcom_core_subscriber_hubrelease(&x->common);	
	x->in_object = NULL;
	for(i=0; i<MAX_NUM_CHANNELS; i++)
		x->meter_object[i] = NULL;
	x->num_meter_objects = 0;
	x->preview_object = NULL;
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void out_assist(t_out *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 	// Inlets
		strcpy(dst, "(signal) connect to the module algorithm");
	else if(msg==2){ // Outlets
		if(arg < x->num_outputs) strcpy(dst, "(signal) connect to the module's outlets");
		else strcpy(dst, "dumpout");
	}
}


// messages received from jcom.hub for the algorithm
void out_algorithm_message(t_out *x, t_symbol *msg, long argc, t_atom *argv)
{
	if(argc < 2)
		return;
		
	if(argv->a_type == A_SYM){
		if((argv->a_w.w_sym == ps_slash_audio_gain_midi) || (argv->a_w.w_sym == ps_audio_gain_midi)){
			// Do gain control here...
			// Should be that the gain change triggers a short tt_ramp to the new value
			x->attr_gain = atom_getfloat(argv+1);	// store as midi values
			x->gain->set_attr(tt_gain::k_gain, (x->attr_gain - 127) * .6);		// convert midi to db for tap_gain			
		}
		else if((argv->a_w.w_sym == ps_audio_mute) || (argv->a_w.w_sym == ps_slash_audio_mute)){
			x->attr_mute = atom_getlong(argv+1);
			if(x->attr_mute)
				x->gain->set_attr(tt_gain::k_gain_direct, 0.);
			else 
				x->gain->set_attr(tt_gain::k_gain, (x->attr_gain - 127)  * .6);			
		}
		else if((argv->a_w.w_sym == ps_audio_bypass) || (argv->a_w.w_sym == ps_slash_audio_bypass)){
			x->attr_bypass = atom_getlong(argv+1);
			if(x->attr_bypass == 0)
				x->xfade->set_attr(tt_crossfade::k_position, x->attr_mix * 0.01);
			else
				x->xfade->set_attr(tt_crossfade::k_position, 0.0);
		}
		else if((argv->a_w.w_sym == ps_audio_mix) || (argv->a_w.w_sym == ps_slash_audio_mix)){
			x->attr_mix = atom_getfloat(argv+1);
			if(x->attr_bypass == 0)
				x->xfade->set_attr(tt_crossfade::k_position, x->attr_mix * 0.01);			
		}
		else if((argv->a_w.w_sym == ps_audio_sample_rate) || (argv->a_w.w_sym == ps_slash_audio_sample_rate)){
			;
		}
		else if((argv->a_w.w_sym == ps_audio_meters_freeze) || (argv->a_w.w_sym == ps_slash_audio_meters_freeze)){
			x->attr_defeat_meters = atom_getlong(argv+1);
		}
		else if((argv->a_w.w_sym == ps_video_preview) || (argv->a_w.w_sym == ps_slash_video_preview))
			x->attr_preview = atom_getlong(argv+1);
	}
}


void out_link_to_in_object(t_out *x, t_in *y)
{
	x->in_object = y;
}

void out_unlink(t_out *x)
{
	x->in_object = NULL;
}


void out_register_meter(t_out *x, int meternum, void *meter_object)
{
	x->meter_object[meternum] = meter_object;
	if((meternum+1) > x->num_meter_objects)
		x->num_meter_objects = meternum+1;
}


void out_remove_meters(t_out *x)
{
	short i;
	for(i=0; i<16; i++)
		x->meter_object[i] = NULL;
	x->num_meter_objects = 0;
}


void out_register_preview(t_out *x, void *preview_object)
{
	x->preview_object = preview_object;
}


// messages received from jcom.hub
void out_dispatched(t_out *x, t_symbol *msg, long argc, t_atom *argv)
{
	;
}


// messages received from jcom.in
void out_sendbypassedvalue(t_out *x, short inletnum, t_symbol *msg, long argc, t_atom *argv)
{
	if(inletnum < x->num_outputs)
		outlet_anything(x->outlet[inletnum], msg, argc, argv);
}


void out_sendlastvalue(t_out *x)
{
	// we need to cache the most recently sent values for this to work...
	// in the case of jitter, i guess we need to cache a *copy* of a Jitter matrix
	// ick
	// or maybe we just send the matrix name as passed in from this out objects inlets
	// because it shouldn't have changed since input to the algorithm is turned off...
	short i;

	for(i=0; i< x->num_outputs; i++)
		outlet_anything(x->outlet[i], x->last_msg[i], x->last_argc[i], x->last_argv[i]);
}


void out_anything(t_out *x, t_symbol *msg, long argc, t_atom *argv)
{
	short inletnum = proxy_getinlet((t_object *)x);
	x->last_msg[inletnum] = msg;
	x->last_argc[inletnum] = argc;
	sysmem_copyptr(argv, x->last_argv[inletnum], argc * sizeof(t_atom));
	
	if(x->attr_preview == 1){
		if(msg == _sym_jit_matrix){
			object_method_typed(x->preview_object, _sym_jit_matrix, argc, argv, NULL);
		}
	}
	outlet_anything(x->outlet[inletnum], msg, argc, argv);
}


void out_send_to_algorithm(t_out *x)
{
	short	i;
	t_atom 	a[MAX_NUM_CHANNELS];

	atom_setlong(&a[0], x->sigcount);
	outlet_anything(x->dumpout, ps_sigcount, 1, &a[0]);

	for(i=0; i < x->num_outputs; i++)
		atom_setlong(&a[i], x->siglist[i]);

	outlet_anything(x->dumpout, ps_siglist, x->num_outputs, &a[0]);
	outlet_anything(x->dumpout, ps_config_changed, 0, NULL);
}


void update_meters(t_out *x)
{
	short	i;
	t_atom	a[2];
	
	for(i=0; i < x->num_meter_objects; i++){
		if(x->meter_object[i]){
			atom_setsym(&a[0], _sym_float);
			atom_setfloat(&a[1], x->peakamp[i]);
			object_method_typed(x->meter_object[i], ps_dispatched, 2, a, NULL);
		}
	}
	x->clock_is_set = 0;
}


// Perform Method - just pass the whole vector straight through
// (the work is all done in the dsp method)
t_int *out_perform(t_int *w)
{
  	t_out 		*x 		= (t_out *)(w[1]);			// Object Struct
	short		i		= (short)(w[2]);			// Channel Number (zero-based)
	short		n 		= (int)(w[5]);
	float		*sig  	= (t_float *)(w[4]);
	float 		currentvalue = 0, peakvalue = 0;	// values for calculating metering
	x->signal_in->set_vector((t_float *)(w[3]));	// Input Wet
	x->signal_out->set_vector(sig);					// Output
	x->signal_in->set_vectorsize(n);				// Vector Size

	if(x->attr_bypass){
		while(n--)
			*sig++ = *(x->in_object->signal_in[i]->vector++);
		x->in_object->signal_in[i]->reset();	
		goto out;
	}
	
	if(x->attr_mute){
		while(n--)
			*sig++ = 0;
		goto out;
	}

	if(x->in_object)
		x->xfade->dsp_vector_calc(x->in_object->signal_in[i], x->signal_in, x->signal_temp);	// perform bypass/mix control
	x->gain->dsp_vector_calc(x->signal_temp, x->signal_out);								// perform gain control

	if(x->attr_defeat_meters == 0){
		while(n--){
			currentvalue = ((*sig) < 0)?-(*sig):*sig; // get the current sample's absolute value
			if(currentvalue > peakvalue) 					// if it's a new peak amplitude...
				peakvalue = currentvalue;
			sig++; 										// increment pointer in the vector
		}
		if(peakvalue != x->peakamp[i]){					// filter out repetitions
			x->peakamp[i] = peakvalue;
			if(x->clock_is_set == 0){
				clock_delay(x->clock, POLL_INTERVAL); 		// start the clock
				x->clock_is_set = 1;
			}
		}
	}
out:
	return(w+6);
}


t_int *out_perform_zero(t_int *w)
{
  	t_float *out 	= (t_float *)(w[1]);	// Output
	long	n		= (long)(w[2]);			// vectorsize

	while(n--)
		*out++ = 0;
	return(w+3);
}


// DSP Method
/* Our strategy here is to figure out which signals have connections
 * Knowing which signals have connections, we then count them and
 * send the number of signals to dumpout (which can presumably then be
 * used to make the algorithm or patch do the right thing)
 * 
 * At some point we may want to look for other patterns of things to.
 * For example, what should really happen if it is only inputs 1 and 3 
 * that are connected?
 */
void out_dsp(t_out *x, t_signal **sp, short *count)
{
	short 	i;
	long	connection[MAX_NUM_CHANNELS];
	bool	connection_changed = false;
	int 	vs = sp[0]->s_n;			// Vector Size
	int		sr = sp[0]->s_sr;			// Sample Rate	

	x->ramp_gain->set_sr(sr);
	x->ramp_xfade->set_sr(sr);
	out_alloc(x, vs);

	x->sigcount = 0;					// reset
	for(i=0; i < x->num_outputs; i++){	//take a look at each
		connection[i] = count[i];
		if(connection[i] != x->siglist[i])
			connection_changed = true;
		if(count[i]){
			x->sigcount++;
			dsp_add(out_perform, 5, x, i, sp[i]->s_vec, sp[x->num_outputs + i]->s_vec, sp[i]->s_n);
		}
		else
			dsp_add(out_perform_zero, 2, sp[x->num_outputs + i]->s_vec, sp[i]->s_n);
	}

	if(connection_changed){				// notify the module
		for(i=0; i < x->num_outputs; i++)
			x->siglist[i] = connection[i];
		out_send_to_algorithm(x);
	}	
}


void out_alloc(t_out *x, int vector_size)
{
	if(vector_size != x->vector_size){
		x->vector_size = vector_size;
		x->signal_temp->alloc(vector_size);		
		x->ramp_gain->set_vectorsize(vector_size);
		x->ramp_xfade->set_vectorsize(vector_size);
	}
}
