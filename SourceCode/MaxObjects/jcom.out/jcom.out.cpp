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


#include "Jamoma.h"
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
	
	jamoma_init();
	common_symbols_init();

	// Define our class
#ifdef JCOM_OUT_TILDE
	c = class_new("jcom.out~",(method)out_new, (method)out_free, sizeof(t_out), (method)0L, A_GIMME, 0);
#else
	c = class_new("jcom.out",(method)out_new, (method)out_free, sizeof(t_out), (method)0L, A_GIMME, 0);
#endif

	// Make methods accessible for our class: 
	class_addmethod(c, (method)out_dispatched,			"dispatched",			A_GIMME, 0L);
	class_addmethod(c, (method)out_algorithm_message,	"algorithm_message",	A_GIMME, 0L);
	class_addmethod(c, (method)out_link_to_in_object,	"link_in", 				A_CANT, 0L);
	class_addmethod(c, (method)out_unlink,				"unlink_in",			0L);
	class_addmethod(c, (method)out_register_meter,		"register_meter",		A_CANT, 0L);
	class_addmethod(c, (method)out_remove_meters,		"remove_meters",		A_CANT, 0L);
	class_addmethod(c, (method)out_register_preview,	"register_preview",		A_CANT, 0L);
#ifdef JCOM_OUT_TILDE
	class_addmethod(c, (method)out_getAudioForChannel,	"getAudioForChannel",	A_CANT, 0);
	class_addmethod(c, (method)out_dsp,					"dsp", 					A_CANT, 0L);
#else
	class_addmethod(c, (method)out_anything,			"anything",				A_GIMME, 0L);
	class_addmethod(c, (method)out_sendbypassedvalue,	"sendbypassedvalue",	A_CANT, 0L);
	class_addmethod(c, (method)out_sendlastvalue,		"sendlastvalue",		A_CANT, 0L);
#endif
	class_addmethod(c, (method)out_release,				"release",				A_CANT, 0L);	// notification of hub being freed
    class_addmethod(c, (method)out_assist,				"assist", 				A_CANT, 0L);

	jcom_core_subscriber_classinit_common(c, attr);	
	
	// ATTRIBUTE: algorithm_type
	attr = attr_offset_new("algorithm_type", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_out, attr_algorithm_type));
	class_addattr(c, attr);
	
	// ATTRIBUTE: num_inputs
	attr = attr_offset_new("num_outputs", _sym_long, attrflags,
		(method)0, (method)0, calcoffset(t_out, numOutputs));
	class_addattr(c, attr);	

#ifdef JCOM_OUT_TILDE
	// Setup our class to work with MSP
	class_dspinit(c);
#endif 

	// Finalize our class
	class_register(CLASS_BOX, c);
	out_class = c;
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
		object_obex_store((void *)x, jps_dumpout, (object *)x->dumpout);		// setup the dumpout

		x->numOutputs =  1;
		x->attr_preview = 0;
		x->preview_object = NULL;
		x->attr_bypass = 0;
		x->attr_mute = 0;
		x->attr_mix = 100;										// Assume 100%, so that processed signal is passed through if @has_mix is false
		x->attr_algorithm_type = _sym_nothing;
		if(attrstart > 0){
			int argument = atom_getlong(argv);
			x->numOutputs = TTClip(argument, 1, MAX_NUM_CHANNELS);
		}
#ifdef JCOM_OUT_TILDE
		if(x->numOutputs > 0)
			dsp_setup((t_pxobject *)x, x->numOutputs);		// Create Object and Inlets
		else
			dsp_setup((t_pxobject *)x, 1);					// Create Object and Inlets
			
		x->common.ob.z_misc = Z_NO_INPLACE | Z_PUT_LAST;	// Z_PUT_LAST so that thispoly~ gets it's message properly?  		
		for(i=0; i < (x->numOutputs); i++)
			outlet_new((t_pxobject *)x, "signal");			// Create a signal Outlet   		

		x->clock = clock_new(x, (method)update_meters);
		x->clock_is_set = 0;
		x->audioIn = new TTAudioSignal(x->numOutputs);
		x->audioOut = new TTAudioSignal(x->numOutputs);
		x->audioTemp = new TTAudioSignal(x->numOutputs);
		x->zeroSignal = new TTAudioSignal(x->numOutputs);
		
		TTObjectInstantiate(TT("crossfade"), &x->xfade, x->numOutputs);
		x->xfade->setAttributeValue(TT("position"), 1.0);
		TTObjectInstantiate(TT("gain"), &x->gain, x->numOutputs);
		TTObjectInstantiate(TT("ramp"), &x->ramp_gain, x->numOutputs);
		TTObjectInstantiate(TT("ramp"), &x->ramp_xfade, x->numOutputs);

//		out_alloc(x, sys_getblksize());						// allocates the vectors for the audio signals
		x->gain->setAttributeValue(TT("linearGain"), 1.0);
#else
		for(i=x->numOutputs-1; i >= 1; i--)
			x->inlet[i] = proxy_new(x, i, 0L);
		for(i=x->numOutputs-1; i >= 0; i--)
			x->outlet[i] = outlet_new(x, 0L);
#endif		
		jcom_core_subscriber_new_common(&x->common, jps__jcom_out__, jps_subscribe_out);
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
	
	//x->common.hub = jcom_core_subscribe(x, x->common.attr_name, x->common.container, jps_subscribe_out);
	if(x->common.hub != NULL){
		object_attr_getvalueof(x->common.hub, jps_name, &argc, &argv);
		x->common.module_name = atom_getsym(argv);
// [TAP] Not sure why we are zeroing here -- it doesn't make much sense
//		x->num_meter_objects = 0;
		
		// Find out what type of algorithm this is supposed to control
		object_attr_getvalueof(x->common.hub, jps_algorithm_type, &argc, &argv);
		result = atom_getsym(argv);
		if(result == jps_default){
			object_attr_getvalueof(x->common.hub, jps_module_type, &argc, &argv);
			modtype = atom_getsym(argv);
		
			if(modtype == jps_audio)
				x->attr_algorithm_type = jps_poly;
			else if(modtype == jps_video)
				x->attr_algorithm_type = jps_jitter;
			else
				x->attr_algorithm_type = jps_control;
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
	
	delete x->audioIn;
	delete x->audioOut;
	delete x->audioTemp;
	delete x->zeroSignal;
	TTObjectRelease(x->xfade);
	TTObjectRelease(x->gain);
	TTObjectRelease(x->ramp_gain);
	TTObjectRelease(x->ramp_xfade);
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
		if(arg < x->numOutputs) 
			strcpy(dst, "(signal) connect to the module's outlets");
		else 
			strcpy(dst, "dumpout");
	}
}


// messages received from jcom.hub for the algorithm
void out_algorithm_message(t_out *x, t_symbol *msg, long argc, t_atom *argv)
{
	if(argc < 2)
		return;
		
	if(argv->a_type == A_SYM){
// jamoma 0.4
//		if((argv->a_w.w_sym == jps_slash_audio_gain_midi) || (argv->a_w.w_sym == jps_audio_gain_midi)){
// jamoma 0.5
		if((argv->a_w.w_sym == gensym("/audio/gain")) || (argv->a_w.w_sym == gensym("audio/gain")) || (argv->a_w.w_sym == gensym("gain")) || (argv->a_w.w_sym == gensym("/gain"))){
			// Do gain control here...
			// Should be that the gain change triggers a short tt_ramp to the new value
			x->attr_gain = atom_getfloat(argv+1);	// store as midi values
#ifdef JCOM_OUT_TILDE
			x->gain->setAttributeValue(TT("midiGain"), x->attr_gain);
#endif
		}
		else if((argv->a_w.w_sym == jps_audio_mute) || (argv->a_w.w_sym == jps_slash_audio_mute) || (argv->a_w.w_sym == gensym("mute")) || (argv->a_w.w_sym == gensym("/mute"))){
			x->attr_mute = atom_getlong(argv+1);
#ifdef JCOM_OUT_TILDE
			if(x->attr_mute)
				x->gain->setAttributeValue(TT("linearGain"), 0.0);
			else 
				x->gain->setAttributeValue(TT("midiGain"), x->attr_gain);			
#endif
		}
		else if((argv->a_w.w_sym == jps_audio_bypass) || (argv->a_w.w_sym == jps_slash_audio_bypass) || (argv->a_w.w_sym == gensym("bypass")) || (argv->a_w.w_sym == gensym("/bypass"))){
			x->attr_bypass = atom_getlong(argv+1);
#ifdef JCOM_OUT_TILDE
			if(x->attr_bypass == 0)
				x->xfade->setAttributeValue(TT("position"), x->attr_mix * 0.01);
			else
				x->xfade->setAttributeValue(TT("position"), 0.0);
#endif
		}
		else if((argv->a_w.w_sym == jps_audio_mix) || (argv->a_w.w_sym == jps_slash_audio_mix) || (argv->a_w.w_sym == gensym("mix")) || (argv->a_w.w_sym == gensym("/mix"))){
			x->attr_mix = atom_getfloat(argv+1);
#ifdef JCOM_OUT_TILDE
			if(x->attr_bypass == 0)
				x->xfade->setAttributeValue(TT("position"), x->attr_mix * 0.01);		
#endif
		}
		else if((argv->a_w.w_sym == jps_audio_meters_freeze) || (argv->a_w.w_sym == jps_slash_audio_meters_freeze) || (argv->a_w.w_sym == gensym("freeze")) || (argv->a_w.w_sym == gensym("/freeze"))){
			x->attr_defeat_meters = atom_getlong(argv+1);
		}
		else if((argv->a_w.w_sym == jps_video_preview) || (argv->a_w.w_sym == jps_slash_video_preview) || (argv->a_w.w_sym == gensym("preview")) || (argv->a_w.w_sym == gensym("/preview")))
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
	for(i=0; i<MAX_NUM_CHANNELS; i++)
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
	if(inletnum < x->numOutputs)
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

	for(i=0; i< x->numOutputs; i++)
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


#ifdef JCOM_OUT_TILDE

void update_meters(t_out *x)
{
	short	i;
	t_atom	a[2];
	
	for(i=0; i < x->num_meter_objects; i++){
		if(x->meter_object[i]){
			atom_setsym(&a[0], _sym_float);
			atom_setfloat(&a[1], x->peakamp[i]);
			object_method_typed(x->meter_object[i], jps_dispatched, 2, a, NULL);
		}
	}
	x->clock_is_set = 0;
}


// Perform Method - just pass the whole vector straight through
// (the work is all done in the dsp method)
t_int *out_perform(t_int *w)
{
  	t_out*			x = (t_out *)(w[1]);
	short			i, j;
	TTUInt16		n;
	float			currentvalue = 0;
	float			peakvalue = 0;	// values for calculating metering
	
	// Store the input from the inlets
	for(i=0; i<x->numChannels; i++){
		j = (i*2) + 1;
		x->audioIn->setVector(i, x->vectorSize, (TTFloat32*)w[j+1]);
	}
	
	if(x->attr_bypass)
		TTAudioSignal::copy(*x->in_object->audioOut, *x->audioOut);
	else if(x->attr_mute)
		TTAudioSignal::copy(*x->zeroSignal, *x->audioOut);
	else{
		if(x->in_object && x->in_object->numChannels)
			x->xfade->process(x->in_object->audioOut, x->audioIn, x->audioTemp);	// perform bypass/mix control
		else
			TTAudioSignal::copy(*x->audioIn, *x->audioTemp);
	
		x->gain->process(x->audioTemp, x->audioOut);								// perform gain control
	}
	
	// Send the input on to the outlets for the algorithm
	for(i=0; i<x->numChannels; i++){
		j = (i*2) + 1;
		x->audioOut->getVector(i, x->vectorSize, (TTFloat32*)w[j+2]);
		
		// since we are already looping through the channels here, we will also do the per-channel metering here
		if(x->attr_defeat_meters == 0 && x->num_meter_objects){
			t_float* envelope = (t_float *)(w[j+2]);
			peakvalue = 0.0;
			
			n = x->vectorSize;
			while(n--){
				if((*envelope) < 0 )						// get the current sample's absolute value
					currentvalue = -(*envelope);
				else
					currentvalue = *envelope;
			
				if(currentvalue > peakvalue) 					// if it's a new peak amplitude...
					peakvalue = currentvalue;
				envelope++; 										// increment pointer in the vector
			}
			if(peakvalue != x->peakamp[i]){					// filter out repetitions
				x->peakamp[i] = peakvalue;
				if(x->clock_is_set == 0){
					clock_delay(x->clock, POLL_INTERVAL); 		// start the clock
					x->clock_is_set = 1;
				}
			}
		}		
	}

	return w + ((x->numChannels*2)+2);
}


void out_getAudioForChannel(t_out *x, int channel, float **vector)
{
//	*vector = x->out_vectors[channel];
}


// DSP Method
void out_dsp(t_out *x, t_signal **sp, short *count)
{
	short		i, j, k=0;
	void**		audioVectors = NULL;
	TTUInt8		numChannels = 0;
	TTUInt16	vs = sp[0]->s_n;
	int			sr = sp[0]->s_sr;

	x->ramp_gain->setAttributeValue(TT("sr"), sr);	// convert midi to db for tap_gain
	x->ramp_xfade->setAttributeValue(TT("sr"), sr);	// convert midi to db for tap_gain

	audioVectors = (void**)sysmem_newptr(sizeof(void*) * ((x->numOutputs * 2) + 1));
	audioVectors[k] = x;
	k++;
	
	for(i=0; i < x->numOutputs; i++){
		j = x->numOutputs + i;
		if(count[i] || count[j]){
			numChannels++;
			if(sp[i]->s_n > vs)
				vs = sp[i]->s_n;
				
			audioVectors[k] = sp[i]->s_vec;
			k++;
			audioVectors[k] = sp[j]->s_vec;
			k++;
		}
	}
	
	x->numChannels = numChannels;
	x->audioIn->setAttributeValue(TT("numChannels"), numChannels);
	x->audioOut->setAttributeValue(TT("numChannels"), numChannels);
	x->audioTemp->setAttributeValue(TT("numChannels"), numChannels);
	x->zeroSignal->setAttributeValue(TT("numChannels"), numChannels);
	
	x->vectorSize = vs;
	x->audioIn->setAttributeValue(TT("vectorSize"), vs);
	x->audioOut->setAttributeValue(TT("vectorSize"), vs);
	x->audioTemp->setAttributeValue(TT("vectorSize"), vs);
	x->zeroSignal->setAttributeValue(TT("vectorSize"), vs);
	
	//audioIn will be set in the perform method
	x->audioOut->sendMessage(TT("alloc"));
	x->audioTemp->sendMessage(TT("alloc"));
	x->zeroSignal->sendMessage(TT("alloc"));
	x->zeroSignal->sendMessage(TT("clear"));
		
	dsp_addv(out_perform, k, audioVectors);
	sysmem_freeptr(audioVectors);	
}


void out_alloc(t_out *x, int vector_size)
{
// TODO: Do we still need this?  The remote audio from jcom.send~ still needs to be re-implemented!
/*
	if(vector_size != x->vector_size){
		x->vector_size = vector_size;
		x->signal_temp->alloc(vector_size);		
		x->ramp_gain->set_vectorsize(vector_size);
		x->ramp_xfade->set_vectorsize(vector_size);
	}
*/
}

#endif // JCOM_OUT_TILDE
