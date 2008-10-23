/* 
 * jcom.in~
 * External for Jamoma: manage audio inputs for a module
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */


/*
	The user specifies @channel_config mono or @channel_config stereo 
	as arg to the module.  That makes the hub responsible for cleaning
	up any unused inlets and outlets for the configuration.  
	
	It may also signal to the module to handle the poly differently,
	i.e. if the algorithm should be true stereo instead of multi-mono
	
	This all means that we need this object to subscribe to the hub.
*/

#include "Jamoma.h"
#include "jcom.in.h"

// Globals
t_class		*in_class;					// Required. Global pointing to this class
t_atom		ga_zero;


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
#ifdef JCOM_IN_TILDE
	c = class_new("jcom.in~",(method)in_new, (method)in_free, sizeof(t_in), (method)0L, A_GIMME, 0);
#else
	c = class_new("jcom.in",(method)in_new, (method)in_free, sizeof(t_in), (method)0L, A_GIMME, 0);
#endif

	// Make methods accessible for our class: 
	class_addmethod(c, (method)in_dispatched,			"dispatched",			A_GIMME, 0L);
	class_addmethod(c, (method)in_algorithm_message,	"algorithm_message",	A_GIMME, 0L);
	class_addmethod(c, (method)in_view_internals,		"open",					A_GIMME, 0L);	// method used to view algorithm
	class_addmethod(c, (method)in_link,					"link_out",				A_CANT, 0L);	// maybe used to forward messages in jmod.in
	class_addmethod(c, (method)in_unlink,				"unlink_out",			0L);
#ifdef JCOM_IN_TILDE
	class_addmethod(c, (method)in_dsp,					"dsp", 					A_GIMME, 0L);
	class_addmethod(c, (method)in_remoteaudio,			"remoteaudio",			A_CANT, 0);
#else
	class_addmethod(c, (method)in_bang,					"bang", 				0L);
	class_addmethod(c, (method)in_int,					"int", 					A_LONG, 0L);
	class_addmethod(c, (method)in_float,				"float", 				A_FLOAT, 0L);
	class_addmethod(c, (method)in_anything,				"list", 				A_GIMME, 0L);
	class_addmethod(c, (method)in_anything,				"anything",				A_GIMME, 0L);	
#endif
	class_addmethod(c, (method)in_release,				"release",				A_CANT, 0L);	// notification of hub being freed
    class_addmethod(c, (method)in_assist,				"assist", 				A_CANT, 0L);

	jcom_core_subscriber_classinit_common(c, attr);	
		
	// ATTRIBUTE: num_inputs
	attr = attr_offset_new("num_inputs", _sym_long, attrflags,
		(method)0, (method)0, calcoffset(t_in, numInputs));
	class_addattr(c, attr);
	
	CLASS_ATTR_SYM(c,	"algorithm/type",	0,	t_in,	attr_algorithm_type);

#ifdef JCOM_IN_TILDE
//	// ATTRIBUTE: manage_channels
//	attr = attr_offset_new("manage_channels", _sym_long, attrflags,
//		(method)0, (method)0, calcoffset(t_in, attr_manage_channels));
//	class_addattr(c, attr);
	
	// Setup our class to work with MSP
	class_dspinit(c);
#endif

	// Finalize our class
	class_register(CLASS_BOX, c);
	in_class = c;

	atom_setlong(&ga_zero, 0);
	return 0;
}


/************************************************************************************/
// Object Life

// Create
void *in_new(t_symbol *s, long argc, t_atom *argv)
{
	long 		attrstart = attr_args_offset(argc, argv);		// support normal arguments
	t_in 		*x = (t_in *)object_alloc(in_class);
	short 		i;
		
	if(x){
		x->dumpout = outlet_new(x, NULL);
		x->algout = outlet_new(x, NULL);
		
		object_obex_store((void *)x, jps_dumpout, (object *)x->dumpout);		// setup the dumpout

		x->numInputs = 0;
		x->attr_bypass = 0;
		x->attr_mute = 0;
		x->attr_freeze = 0;
		x->attr_algorithm_type = _sym_patcher;

		if(attrstart > 0){
			int argument = atom_getlong(argv);
			x->numInputs = TTClip(argument, 1, MAX_NUM_CHANNELS);
		} 
		else
			x->outlet[0] = x->algout;  // no arguments send any input out the first outlet

#ifdef JCOM_IN_TILDE
		if(x->numInputs > 0)
			dsp_setup((t_pxobject *)x, x->numInputs);		// Create Object and Inlets
		else
			dsp_setup((t_pxobject *)x, 1);					// Create Object and Inlet

		x->common.ob.z_misc = Z_NO_INPLACE | Z_PUT_FIRST;
		
		for(i=0; i < (x->numInputs); i++)
			outlet_new((t_pxobject *)x, "signal");			// Create a signal outlet
		
		x->audioIn = new TTAudioSignal(x->numInputs);
		x->audioOut = new TTAudioSignal(x->numInputs);
//		for(i=0; i < x->numInputs; i++){
//			x->remote_vectors[i] = NULL;
//		}
//		in_alloc(x, sys_getblksize());						// allocates the vectors for the audio signals
#else
		for(i = x->numInputs-1; i >= 1; i--)
			x->inlet[i] = proxy_new(x, i, 0L);
		for(i = x->numInputs-1; i >= 0; i--)
			x->outlet[i] = outlet_new(x, 0L);
#endif

		jcom_core_subscriber_new_common(&x->common, jps__jcom_in__, jps_subscribe_in);
		jcom_core_subscriber_setcustomsubscribe_method(&x->common, &in_subscribe);
		attr_args_process(x, argc, argv);					// handle attribute args				
		defer_low(x, (method)jcom_core_subscriber_subscribe, 0, 0, 0);
	}
	return (x);												// Return the pointer
}


// deferred function for registering with the jcom.hub object
void in_subscribe(void *z)
{
	;
}


// Destroy
void in_free(t_in *x)
{
#ifdef JCOM_IN_TILDE
	dsp_free((t_pxobject *)x);			// Always call dsp_free first in this routine
	delete x->audioIn;
	delete x->audioOut;
#endif
	jcom_core_subscriber_common_free(&x->common);
}


// Notification that the hub no longer exists
void in_release(t_in *x)
{
	jcom_core_subscriber_hubrelease(&x->common);
	x->out_object = NULL;
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void in_assist(t_in *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 	// Inlets
		strcpy(dst, "(signal) input to the module");
	else if(msg==2){ // Outlets
		if(arg < x->numInputs) 
			strcpy(dst, "(signal) connect to the algorithm");
		else if(arg == x->numInputs) 
			strcpy(dst, "connect to algorithm");
		else 
			strcpy(dst, "dumpout");
	}
}


// this stuff is needed for muting the algorithm patchers without using the pcontrol object

#include "jpatcher_api.h"

typedef struct dll {
	t_object d_ob;
	struct dll *d_next;
	struct dll *d_prev;
	void *d_x1;
} t_dll;

typedef struct outlet {
	struct tinyobject o_ob;
	struct dll *o_dll;
} t_outlet;

typedef struct inlet {
	struct tinyobject i_ob;
	void *i_who;
	struct object *i_owner;
} t_inlet;

// end of required stuff for our built-in pcontrol functionality


// messages received from jcom.hub for the algorithm
void in_algorithm_message(t_in *x, t_symbol *msg, long argc, t_atom *argv)
{
	char		namestring[256];
	t_symbol	*osc;

	if((argv->a_w.w_sym == jps_audio_mute) || (argv->a_w.w_sym == jps_slash_audio_mute)){
		x->attr_mute = atom_getlong(argv+1);
		if(x->attr_algorithm_type == _sym_patcher){
			t_atom		a[2];
			t_dll*		connecteds = NULL;
			t_object*	o;
			t_symbol*	name;
			t_object*	box;
			t_outlet*	myoutlet = NULL;
			
			atom_setlong(a+0, !x->attr_mute);
			atom_setlong(a+1, 1);

			object_obex_lookup(x, _sym_pound_B, &box);
			myoutlet = (t_outlet*)jbox_getoutlet((t_jbox*)box, x->numInputs);
			if(myoutlet)
				connecteds = (t_dll*)myoutlet->o_dll;
			
			// search through all connected objects for an inlet object (which indicates that we found a patcher to mute)
			while(connecteds){
				o = (t_object*)connecteds->d_x1;
				name = object_classname(o);
				if(name == _sym_inlet){
					o = ((t_inlet *)connecteds->d_x1)->i_owner;
					name = object_classname(o);
					if(name == _sym_jpatcher)
						// 'setrock' is the message that is used for pcontrol sends to the patcher of enabling
						object_method(o, gensym("setrock"), 2, a);
				}
				o = NULL;
				name = NULL;
				connecteds = connecteds->d_next;
			}
		}
	}
	else if((argv->a_w.w_sym == jps_video_mute) || (argv->a_w.w_sym == jps_slash_video_mute) || (argv->a_w.w_sym == gensym("mute")) || (argv->a_w.w_sym == gensym("/mute")))
		x->attr_mute = atom_getlong(argv+1);
	else if((argv->a_w.w_sym == jps_video_bypass) || (argv->a_w.w_sym == jps_slash_video_bypass) || (argv->a_w.w_sym == gensym("bypass")) || (argv->a_w.w_sym == gensym("/bypass")))
		x->attr_bypass = atom_getlong(argv+1);
	else if((argv->a_w.w_sym == jps_video_freeze) || (argv->a_w.w_sym == jps_slash_video_freeze) || (argv->a_w.w_sym == gensym("freeze")) || (argv->a_w.w_sym == gensym("/freeze")))
		x->attr_freeze = atom_getlong(argv+1);

	if(argv->a_w.w_sym->s_name[0] != '/')
		strcpy(namestring, "/");						// perhaps we could optimize this operation
	else
		namestring[0] = 0;

	strcat(namestring, argv->a_w.w_sym->s_name);	//	by creating a table when the param is bound
	osc = gensym(namestring);						//	then we could look-up the symbol instead of using gensym()

	outlet_anything(x->algout, osc, argc-1, argv+1);
}


void in_view_internals(t_in *x, t_symbol *msg, long argc, t_atom *argv)
{
	if(x->attr_algorithm_type == _sym_patcher){
		t_atom		a[2];
		t_dll*		connecteds = NULL;
		t_object*	o;
		t_symbol*	name;
		t_object*	box;
		t_outlet*	myoutlet = NULL;
		
		atom_setlong(a+0, !x->attr_mute);
		atom_setlong(a+1, 1);
		
		object_obex_lookup(x, _sym_pound_B, &box);
		myoutlet = (t_outlet*)jbox_getoutlet((t_jbox*)box, x->numInputs);
		if(myoutlet)
			connecteds = (t_dll*)myoutlet->o_dll;
		
		// search through all connected objects for an inlet object (which indicates that we found a patcher to mute)
		while(connecteds){
			o = (t_object*)connecteds->d_x1;
			name = object_classname(o);
			if(name == _sym_inlet){
				o = ((t_inlet *)connecteds->d_x1)->i_owner;
				name = object_classname(o);
				if(name == _sym_jpatcher)
					object_method(o, gensym("vis"));
			}
			o = NULL;
			name = NULL;
			connecteds = connecteds->d_next;
		}
	}
	outlet_anything(x->algout, jps_open, 0, 0L);
}


// messages received from jcom.hub for various reasons
void in_dispatched(t_in *x, t_symbol *msg, long argc, t_atom *argv)
{
	;
}


// set pointer to the out object so we can forward messages to it 
void in_link(t_in *x, t_object *y)
{
	x->out_object = y;
}


void in_unlink(t_in *x)
{
	x->out_object = NULL;
}


void in_bang(t_in *x)
{
	if(x->attr_mute)
		;
	else if(x->attr_freeze)
		object_method(x->out_object, jps_sendlastvalue);
	else if(x->attr_bypass)
		object_method(x->out_object, jps_sendbypassedvalue, proxy_getinlet((t_object *)x), _sym_bang, 0, NULL);
	else
		outlet_bang(x->outlet[proxy_getinlet((t_object *)x)]);
}


void in_int(t_in *x, long value)
{
	if(x->attr_mute)
		;
	else if(x->attr_freeze)
		object_method(x->out_object, jps_sendlastvalue);
	else if(x->attr_bypass){
		t_atom a;
		atom_setlong(&a, value);
		object_method(x->out_object, jps_sendbypassedvalue, proxy_getinlet((t_object *)x), _sym_int, 1, &a);
	}
	else
		outlet_int(x->outlet[proxy_getinlet((t_object *)x)], value);
}


void in_float(t_in *x, double value)
{
	if(x->attr_mute)
		;
	else if(x->attr_freeze)
		object_method(x->out_object, jps_sendlastvalue);
	else if(x->attr_bypass){
		t_atom a;
		atom_setfloat(&a, value);
		object_method(x->out_object, jps_sendbypassedvalue, proxy_getinlet((t_object *)x), _sym_float, 1, &a);
	}
	else
		outlet_float(x->outlet[proxy_getinlet((t_object *)x)], value);
}


void in_anything(t_in *x, t_symbol *msg, long argc, t_atom *argv)
{
	if(x->attr_mute)
		;
	else if(x->attr_freeze)
		object_method(x->out_object, jps_sendlastvalue);
	else if(x->attr_bypass)
		object_method(x->out_object, jps_sendbypassedvalue, proxy_getinlet((t_object *)x), msg, argc, argv);
	else
		outlet_anything(x->outlet[proxy_getinlet((t_object *)x)], msg, argc, argv);
}


// Perform Method - just pass the whole vector straight through
// (the work is all done in the dsp method)
t_int *in_perform(t_int *w)
{
   	t_in		*x = (t_in *)(w[1]);
	short		i, j;
	
	// Store the input from the inlets
	for(i=0; i < x->numChannels; i++){
		j = (i*2) + 1;
		x->audioIn->setVector(i, x->vectorSize, (TTFloat32*)w[j+1]);
	}
	
	// TODO: need to mix in input here from jcom.send~ objects (as in the old code above)
	TTAudioSignal::copy(*x->audioIn, *x->audioOut);
	
	// Send the input on to the outlets for the algorithm
	for(i=0; i < x->numChannels; i++){
		j = (i*2) + 1;
		x->audioOut->getVector(i, x->vectorSize, (TTFloat32*)w[j+2]);
	}

	return w + ((x->numChannels*2)+2);
}


// TODO: We are not guaranteed that this will be called after in_perform, right?
// If that is so then our mixing is bogus, and perform needs to perform mixing too...
void in_remoteaudio(t_in *x, float *audioVectors[], long numAudioVectors)
{
//	short	i;
//	float	*vector, *out;
//	long	n;
//	
//	for(i=0; i<numAudioVectors; i++){
//		vector = audioVectors[i];
//		n = x->vectorSize;
//		out = x->remote_vectors[i];
//		while(n--)
//			*out++ += *vector++;
//	}
}


#ifdef JCOM_IN_TILDE


// DSP Method
void in_dsp(t_in *x, t_signal **sp, short *count)
{
	short		i, j, k=0;
	void**		audioVectors = NULL;
	TTUInt8		numChannels = 0;
	TTUInt16	vs = 0;
	
	audioVectors = (void**)sysmem_newptr(sizeof(void*) * ((x->numInputs * 2) + 1));
	audioVectors[k] = x;
	k++;
	
	for(i=0; i < x->numInputs; i++){
		j = x->numInputs + i;
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
	x->vectorSize = vs;
	
	x->audioIn->setAttributeValue(TT("numChannels"), numChannels);
	x->audioOut->setAttributeValue(TT("numChannels"), numChannels);
	x->audioIn->setAttributeValue(TT("vectorSize"), vs);
	x->audioOut->setAttributeValue(TT("vectorSize"), vs);
	//audioIn will be set in the perform method
	x->audioOut->sendMessage(TT("alloc"));
	
	dsp_addv(in_perform, k, audioVectors);
	sysmem_freeptr(audioVectors);
}


void in_alloc(t_in *x, int vector_size)
{
// TODO: Do we still need this?  The remote audio from jcom.send~ still needs to be re-implemented!
/*
	short i;
	
	if(vector_size != x->vector_size) {
		x->vector_size = vector_size;
		x->signal_in->setNumChannels(MAX_NUM_CHANNELS);
		x->signal_in->setVectorSize(vector_size);
		x->signal_in->alloc();

		for(i=0; i < MAX_NUM_CHANNELS; i++){
			if(x->remote_vectors[i])
				sysmem_freeptr(x->remote_vectors[i]);
			x->remote_vectors[i] = (float*)sysmem_newptr(sizeof(float) * x->vector_size);
		}
	}
*/
}


#endif // JCOM_IN_TILDE
