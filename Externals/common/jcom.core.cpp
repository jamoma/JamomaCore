/* 
 * jcom.core
 * shared code used by the jamoma core externals
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"		// Max externals header
#include "ext_obex.h"	// Obex header
#include "jcom.core.h"

#pragma mark -
#pragma mark Globals/Init/Etc.

t_symbol	*ps_done,
			*ps_none,					// ramp stuff
			*ps_linear,
			*ps_linear_q,
			*ps_low, 
			*ps_high, 
			*ps_both, 
			*ps_inc,					// increase, decrease
			*ps_dec,
			*ps_msg_generic, 				// types
			*ps_msg_int, 
			*ps_msg_float, 
			*ps_msg_symbol,
			*ps_msg_list,
			*ps_msg_toggle, 
			*ps_msg_none,				// this type only used by jcom.message
			*ps_jcom_hub, 
			*ps_feedback,
			*ps_module_name_get,		// common OSC messages according to the JIG
			*ps_dumpout,
			*ps_audio, 
			*ps_video, 
			*ps_control, 
			*ps_dispatched, 
			*ps_parameter_name,
			*ps_message_name,
			*ps_message_return,
			*ps_parameter_names_start, 
			*ps_parameter_names_end,			
			*ps_message_names_start, 
			*ps_message_names_end,
			*ps_return_names_start, 
			*ps_return_names_end,
			*ps_parameter_values_start,
			*ps_parameter_values_end,
			*ps_parameter_value,
			*ps_subscribe,				// subscribe stuff
			*ps_unsubscribe,
			*ps_release,
			*ps_subscribe_in,
			*ps_subscribe_out,
			*ps_subscribe_message,
			*ps_subscribe_parameter,
			*ps_subscribe_remote,
			*ps_subscribe_return,
			*ps_subscribe_init,
			*ps_subscribe_meter,
			*ps_inspector,
			*ps_num_inputs,				// signal inlets and outlets
			*ps_num_outputs,
			*ps_type,					// parameter/message/return attributes
			*ps_algorithm_type,
			*ps_name,
			*ps_range,
			*ps_clipmode,
			*ps_ramp,
			*ps_repetitions,
			*ps_description,
			*ps_value,
			*ps_sigcount,				// signals to module
			*ps_siglist,
			*ps_config_changed,
			*ps_algorithm,
			*ps_get_num_channels,
			*ps_module_type,			// module type
			*ps_poly,
			*ps_default,
			*ps_jitter,
			*ps_1U,
			*ps_algorithm_message,
			*ps_private,
			*ps__gui__,
			*ps__jcom_in__,
			*ps__jcom_out__,
			*ps___preview__,
			*ps_return,
			*ps_return_extended,
			*ps_go,
			*ps_init,
			*ps_ATTRIBUTES,
			*ps_BUILD,
			*ps_MODULE_NAME,			// name of this module class
			*ps_MODULE_TITLE,			// OSC name of this module instance
			*ps_PARAMETER,
			*ps_NEW_PRESETS_START,
			*ps_NEW_PRESETS,
			*ps_MENU_REBUILD,
			*ps_size,
			*ps_skin,
			*ps_jcom_send,	
			*ps_jcom_receive,
			*ps_jcom_remote_fromModule, 			
			*ps_jcom_remote_toModule,
			*ps_jcom_broadcast_fromHub,
			*ps_from_in_object,
			*ps_box,
			*ps_setcallback,
			*ps_link_in,				// common OSC messages, etc.
			*ps_link_out,
			*ps_unlink_in,
			*ps_unlink_out,
			*ps_audio_gain_midi,
			*ps_slash_audio_gain_midi,
			*ps_audio_mute,
			*ps_slash_audio_mute,
			*ps_audio_bypass,
			*ps_slash_audio_bypass,
			*ps_audio_mix,
			*ps_slash_audio_mix,
			*ps_audio_sample_rate,
			*ps_slash_audio_sample_rate,
			*ps_audio_meters_freeze,
			*ps_slash_audio_meters_freeze,
			*ps_video_mute,
			*ps_slash_video_mute,
			*ps_video_bypass,
			*ps_slash_video_bypass,
			*ps_video_freeze,
			*ps_slash_video_freeze,
			*ps_video_preview,
			*ps_slash_video_preview,			
			*ps_open,							// 	open
			*ps_slash_module_view_internals,	//	/module/view_internals
			*ps_slash_preset_slash_default,		// 	/preset/default
			*ps_slash_preset_slash_load,		// 	/preset/load
			*ps_slash_preset_slash_recall,
			*ps_slash_preset_slash_write,		// 	/preset/save
			*ps_ui_slash_freeze,				//	ui/freeze
			*ps_slash_ui_slash_freeze,			//	/ui/freeze
			*ps_ui_slash_refresh,				//	ui/refresh
			*ps_slash_ui_slash_refresh,			//	/ui/refresh		
			*ps_register_meter,
			*ps_register_preview,
			*ps_voices,
			*ps_mute,
			*ps_target,
			*ps_sendlastvalue,
			*ps_sendbypassedvalue,
			*ps_star,
			*ps_priority;
			


void jcom_core_init(void)
{
	ps_done						= gensym("done");
	// ramp stuff
	ps_none						= gensym("none");
	ps_linear					= gensym("linear");
	ps_linear_q					= gensym("linear.q");
	ps_low						= gensym("low"); 
	ps_high						= gensym("high"); 
	ps_both						= gensym("both");
	// increase and decrease
	ps_inc						= gensym("inc");
	ps_dec						= gensym("dec");
	// types
	ps_msg_generic				= gensym("msg_generic"); 
	ps_msg_int					= gensym("msg_int"); 
	ps_msg_float				= gensym("msg_float"); 
	ps_msg_symbol				= gensym("msg_symbol");
	ps_msg_list					= gensym("msg_list");
	ps_msg_toggle				= gensym("msg_toggle");
	ps_msg_none					= gensym("msg_none");			// this type only used by jcom.message
	ps_jcom_hub					= gensym("jcom.hub"); 
    ps_feedback					= gensym("feedback");
	// common OSC messages according to the JIG
	ps_module_name_get			= gensym("/module_name/get");
	ps_dumpout					= gensym("dumpout");
	ps_audio					= gensym("audio");
	ps_video					= gensym("video");
	ps_control					= gensym("control");
	ps_dispatched				= gensym("dispatched");
	ps_parameter_name			= gensym("/parameter_name");
	ps_message_name				= gensym("/message_name");
	ps_message_return			= gensym("/return_name");
	ps_parameter_names_start	= gensym("/parameter_names_start");
	ps_parameter_names_end		= gensym("/parameter_names_end");
	ps_message_names_start		= gensym("/message_names_start"); 
	ps_message_names_end		= gensym("/message_names_end");
	ps_return_names_start		= gensym("/return_names_start");
	ps_return_names_end			= gensym("/return_names_end");
	ps_parameter_values_start	= gensym("/parameter_values_start");
	ps_parameter_values_end		= gensym("/parameter_values_end");
	ps_parameter_value			= gensym("/parameter_value");
	// subscribe stuff
    ps_subscribe				= gensym("subscribe");
	ps_unsubscribe				= gensym("unsubscribe");
	ps_release					= gensym("release");
	ps_subscribe_in				= gensym("subscribe_in"); 
	ps_subscribe_out			= gensym("subscribe_out"); 
	ps_subscribe_message		= gensym("subscribe_message"); 
	ps_subscribe_parameter		= gensym("subscribe_parameter"); 
	ps_subscribe_remote			= gensym("subscribe_remote"); 
	ps_subscribe_return			= gensym("subscribe_return");
	ps_subscribe_init			= gensym("subscribe_init");
	ps_subscribe_meter			= gensym("subscribe_meter");
	// signal inlets and outlets
	ps_num_inputs				= gensym("num_inputs");
	ps_num_outputs				= gensym("num_outputs");
	// parameter/message/return attributes
	ps_inspector				= gensym("inspector");
	ps_type						= gensym("type");
	ps_range					= gensym("range");
	ps_clipmode					= gensym("clipmode");
	ps_ramp						= gensym("ramp");
	ps_repetitions				= gensym("repetitions");
	ps_description				= gensym("description");
	ps_value					= gensym("value");
	ps_algorithm_type			= gensym("algorithm_type");
	ps_name						= gensym("name");
	// signals to module
	ps_sigcount					= gensym("sigcount");
	ps_siglist					= gensym("siglist");
	ps_config_changed			= gensym("config_changed");
	ps_algorithm				= gensym("algorithm");
	ps_get_num_channels			= gensym("get_num_channels");
	// module type
	ps_module_type				= gensym("module_type");
	ps_poly						= gensym("poly");
	ps_default					= gensym("default");
	ps_jitter					= gensym("jitter");
	ps_1U						= gensym("ps_1U");
	ps_algorithm_message		= gensym("algorithm_message");
	ps_private					= gensym("private");		// method called in the hub by jcom.remote
	ps__gui__					= gensym("__GUI__");		// name of jcom.remote in the gui
	ps__jcom_in__				= gensym("__jcom_in__");	// name of the module's jcom.in object
	ps__jcom_out__				= gensym("__jcom_out__");	// name of the module's jcom.out object
	ps___preview__				= gensym("__preview__");	// name of the remote for jitter preview matrices
	ps_return					= gensym("return");			// method called in the hub by jcom.return
	ps_return_extended			= gensym("return_extended");
	ps_go						= gensym("go");				// method in jcom.init called by the hub
	ps_init						= gensym("/init");			// method in the hub called from jcom.init
	ps_ATTRIBUTES				= gensym("ATTRIBUTES");
	ps_BUILD					= gensym("BUILD");
	ps_MODULE_NAME				= gensym("MODULE_NAME");	// name of this module class
	ps_MODULE_TITLE				= gensym("MODULE_TITLE");	// OSC id of of this module instance
	ps_PARAMETER				= gensym("PARAMETER");
	ps_NEW_PRESETS_START		= gensym("NEW_PRESETS_START");
	ps_NEW_PRESETS				= gensym("NEW_PRESETS");
	ps_MENU_REBUILD				= gensym("MENU_REBUILD");
	ps_size						= gensym("size");
	ps_skin						= gensym("skin");
	ps_jcom_send				= gensym("jcom.send");	
	ps_jcom_receive				= gensym("jcom.receive");
	ps_jcom_remote_fromModule 	= gensym("jcom.remote.module.from");	// different than in jamoma 0.3.x to avoid conflicts...
	ps_jcom_remote_toModule 	= gensym("jcom.remote.module.to");
	ps_jcom_broadcast_fromHub	= gensym("jcom.broadcast.hub.from");	// used to tell subscribers in a module to subscribe (hub has changed)
	ps_from_in_object			= gensym("from_in_object");	// messages to the jcom.out object
	ps_box						= gensym("box");
	ps_setcallback				= gensym("setcallback");
	ps_link_in					= gensym("link_in");
	ps_link_out					= gensym("link_out");
	ps_unlink_in				= gensym("unlink_in");
	ps_unlink_out				= gensym("unlink_out");
	ps_audio_gain_midi			= gensym("audio/gain/midi");		// used by the i/o objects...
	ps_slash_audio_gain_midi	= gensym("/audio/gain/midi");
	ps_audio_mute				= gensym("audio/mute");
	ps_slash_audio_mute			= gensym("/audio/mute");
	ps_audio_bypass				= gensym("audio/bypass");
	ps_slash_audio_bypass		= gensym("/audio/bypass");
	ps_audio_mix				= gensym("audio/mix");
	ps_slash_audio_mix			= gensym("/audio/mix");
	ps_audio_sample_rate		= gensym("audio/sample_rate");
	ps_slash_audio_sample_rate	= gensym("/audio/sample_rate");
	ps_audio_meters_freeze		= gensym("audio/meters/freeze");
	ps_slash_audio_meters_freeze = gensym("/audio/meters/freeze");
	ps_video_mute				= gensym("video/mute");
	ps_slash_video_mute			= gensym("/video/mute");
	ps_video_bypass				= gensym("video/bypass");
	ps_slash_video_bypass		= gensym("/video/bypass");
	ps_video_freeze				= gensym("video/freeze");
	ps_slash_video_freeze		= gensym("/video/freeze");
	ps_video_preview			= gensym("video/preview");
	ps_slash_video_preview		= gensym("/video/preview");	
	ps_register_meter			= gensym("register_meter");
	ps_register_preview			= gensym("register_preview");
	ps_open						= gensym("open");
	ps_slash_module_view_internals = gensym("/module/view_internals");
	ps_slash_preset_slash_default = gensym("/preset/default");
	ps_slash_preset_slash_load	= gensym("/preset/load");
	ps_slash_preset_slash_recall	= gensym("/preset/recall");
	ps_slash_preset_slash_write	= gensym("/preset/write");		
	ps_ui_slash_freeze			= gensym("ui/freeze");
	ps_slash_ui_slash_freeze	= gensym("/ui/freeze");
	ps_ui_slash_refresh			= gensym("ui/refresh");
	ps_slash_ui_slash_refresh	= gensym("/ui/refresh");
	ps_voices					= gensym("voices");
	ps_mute						= gensym("mute");
	ps_target					= gensym("target");
	ps_sendlastvalue			= gensym("sendlastvalue");
	ps_sendbypassedvalue		= gensym("sendbypassedvalue");
	ps_star						= gensym("*");
	ps_priority					= gensym("priority");
}


#pragma mark -
#pragma mark Hub Bindings

// Registering with the jcom.hub object
void *jcom_core_subscribe(void *x, t_symbol *name, t_patcher *container, t_symbol *object_type)
{
	t_patcher	*p = container;
	t_box		*b;
	t_class		*theclass;
	void		*hub = NULL;
	
again:	
	for(b = p->p_box; b; b = b->b_next){							// traverse the linked list of boxes in the patch
		theclass = object_class(b->b_firstin);
		if(object_classname_compare(b->b_firstin, ps_jcom_hub)){	// if this is a jcom.hub...
			object_method(b->b_firstin, ps_subscribe, name, x, object_type);
			hub = b->b_firstin;										// store the pointer
			break;													// then stop looking
		}
	}
	if(hub == NULL){							// failed to find a hub in the patch...
		if(p->p_vnewobj != NULL){				//	go one level higher and search there
			b = (t_box *)p->p_vnewobj;
			p = b->b_patcher;
			goto again;
		}
		else
			error("object named '%s' could not find a jcom.hub for subscribing", name->s_name);
	}
	return hub;
}


// Unregister from the jcom.hub object
//void jcom_core_unsubscribe(void *hub, t_symbol *name)
void jcom_core_unsubscribe(void *hub, void *object)
{
	if(hub)
		object_method(hub, ps_unsubscribe, object);
}


#pragma mark -
#pragma mark Atom Utilities

// Copying all of the elements should be faster than branching and copying one element
//	(that's the theory anyway...)
void jcom_core_atom_copy(t_atom *dst, t_atom *src)
{
	dst->a_type = src->a_type;
	dst->a_w.w_long = src->a_w.w_long;
	dst->a_w.w_float = src->a_w.w_float;
	dst->a_w.w_sym = src->a_w.w_sym;
}


bool jcom_core_atom_compare(t_symbol *type, t_atom *a1, t_atom *a2)
{
	if(type == ps_msg_float){				// float is first so that it gets process the most quickly
		if(atom_getfloat(a1) == atom_getfloat(a2))
			return 1;
	}
	else if((type == ps_msg_int) || (type == ps_msg_toggle)){
		if(atom_getlong(a1) == atom_getlong(a2))
			return 1;
	}
	else if(type == ps_msg_symbol){
		if(atom_getsym(a1) == atom_getsym(a2))
			return 1;
	}
	else if((type == ps_msg_generic) || (type == ps_msg_list)){
		// type msg_list should be checked here as well.  If type == msg_list and this function is called
		// it means we are dealing with a list of length 1, so we only need to compare one atom anyway.
		
		// note that if the two are of different types, then they are obviously not the same
		if((a1->a_type == A_LONG) && (a2->a_type == A_LONG)){
			if(a1->a_w.w_long == a2->a_w.w_long)
				return 1;
		}
		else if((a1->a_type == A_FLOAT) && (a2->a_type == A_FLOAT)){
			if(a1->a_w.w_float == a2->a_w.w_float)
				return 1;
		}
		else if((a1->a_type == A_SYM) && (a2->a_type == A_SYM)){
			if(a1->a_w.w_sym == a2->a_w.w_sym)
				return 1;
		}
	}
	else
		error("atom_compare: cannot do comparison on this data type");
		
	return 0;
}



void jcom_core_file_writeline(t_filehandle *fh, long *the_eof, char *the_text)
{
	char 	tempstring[4096];
	short	err = 0;
	long	len = 0;
	
	strcpy(tempstring, the_text);
	strcat(tempstring, "\n");
	len = strlen(tempstring);
	err = sysfile_write(*fh, &len, &tempstring);
	if(err){
		error("jamoma: sysfile_write error (%d)", err);
		return;
	}
	*the_eof = *the_eof + len;
}


// Compare Strings: Is s2 after s1 in alphabetical order?
bool jcom_core_string_compare(char *s1, char *s2)
{
	short i;
	short len1 = strlen(s1);
	short len2 = strlen(s2);
	bool result = false;
	bool keepgoing = true;
	
	if(len2 < len1)
		len1 = len2;	// only compare the characters of the short string
		
	for(i=0; i<len1 && keepgoing; i++){
		if(s1[i] < s2[i]){
			result = true;
			keepgoing = false;
		}
		else if(s1[i] > s2[i])
			keepgoing = false;
	}
	return result;
}


// Load an external for internal use
// returns true if successful
bool jcom_core_loadextern(t_symbol *objectname, t_symbol *argument, t_object **object)
{
	t_atom		a;
	t_class 	*c = NULL;
	t_object	*p = NULL;

	c = class_findbyname(ps_box, objectname);	// presumably ps_jcom_send or ps_jcom_receive
	if(!c){
		p = (t_object *)newinstance(objectname, 0, NULL);
		if(p){
			c = class_findbyname(ps_box, objectname);
			freeobject(p);
			p = NULL;
		}
		else{
			error("jamoma: could not load extern (%s) within the core", objectname->s_name);
			return false;
		}
	}

	if(*object != NULL)			// if there was an object set previously, free it first...
		object_free(object);

	atom_setsym(&a, argument);
	*object = (t_object *)object_new_typed(CLASS_BOX, objectname, 1, &a);
	return true;
}


// Function the translates a Max path+filename combo into a correct absolutepath
void jcom_core_getfilepath(short in_path, char *in_filename, char *out_filepath)
{
	char	path[512];
	
	path_topathname(in_path, in_filename, path);

	#ifdef MAC_VERSION
		char *temppath;
		temppath = strchr(path, ':');
		*temppath = '\0';
		temppath += 1;
		
		// at this point temppath points to the path after the volume, and out_filepath points to the volume
		sprintf(out_filepath, "/Volumes/%s%s", path, temppath);
	#else // WIN_VERSION
		strcpy(out_filepath, path);
	#endif
}



// Add attributes that are common to many subscribers (such as parameter, message, and return)
void jcom_core_subscriber_classinit_common(t_class *c, t_object *attr, long offset, bool define_name)
{
	long 		attrflags = 0;
	long		attroffset;

	// METHODS
	class_addmethod(c, (method)jcom_core_subscriber_hubrelease,	"release",		A_CANT, 0);	// notification of hub being freed
	class_addmethod(c, (method)object_obex_dumpout,				"dumpout",		A_CANT, 0);  
	class_addmethod(c, (method)object_obex_quickref,			"quickref",		A_CANT, 0);

	// ATTRIBUTE: name
	if(define_name){
		attroffset = offset + calcoffset(t_jcom_core_subscriber_common, attr_name);
		attr = attr_offset_new("name", _sym_symbol, attrflags,
			(method)0, (method)jcom_core_subscriber_attribute_common_setname,
	 		attroffset);
		class_addattr(c, attr);	
	}
}


void jcom_core_subscriber_classinit_extended(t_class *c, t_object *attr, long offset, bool define_name)
{
	long 		attrflags = 0;
	long		attroffset;

	jcom_core_subscriber_classinit_common(c, attr, offset);

	// ATTRIBUTE: range <low, high>
	attroffset = offset + calcoffset(t_jcom_core_subscriber_extended, attr_range);
	attr = attr_offset_array_new("range", _sym_float32, 2, attrflags,
		(method)0, (method)0, 
		offset + calcoffset(t_jcom_core_subscriber_extended, attr_range_len), attroffset);
	class_addattr(c, attr);

	// ATTRIBUTE: repetitions - 0 means repetitive values are not allowed, 1 means they are
	attroffset = offset + calcoffset(t_jcom_core_subscriber_extended, attr_repetitions);
	attr = attr_offset_new("repetitions", _sym_long, attrflags,
		(method)0, (method)0, 
		attroffset);
	class_addattr(c, attr);

	// ATTRIBUTE: type 
	// this is not defined here because some objects (i.e jcom.parameter) need to treat this in different ways
	
	// ATTRIBUTE: clipmode - options are none, low, high, both
	attroffset = offset + calcoffset(t_jcom_core_subscriber_extended, attr_clipmode);
	attr = attr_offset_new("clipmode", _sym_symbol, attrflags,
		(method)0, (method)0, 
		attroffset);
	class_addattr(c, attr);

	// ATTRIBUTE: description - does nothing, but is accessed by jcom.dispatcher for /autodoc generation
	attroffset = offset + calcoffset(t_jcom_core_subscriber_extended, attr_description);
	attr = attr_offset_new("description", _sym_symbol, attrflags,
		(method)0, (method)0, 
		attroffset);
	class_addattr(c, attr);	
}


// arg is subscriber name
void jcom_core_subscriber_new_common(t_jcom_core_subscriber_common *x, t_symbol *name, t_symbol *subscriber_type)
{
	t_atom 	a;
	
	x->subscriber_type = subscriber_type;
	x->custom_subscribe = NULL;
	x->hub = NULL;
	x->obj_hub_broadcast = NULL;
	x->module_name = _sym_nothing;
	atom_setsym(&a, name);
	object_attr_setvalueof(x, ps_name, 1, &a);	
	x->container = (t_patcher *)gensym("#P")->s_thing;
	
	// set up the jcom.receive the listens to broadcast messages from the hub
	if(!jcom_core_loadextern(ps_jcom_receive, ps_jcom_broadcast_fromHub, &x->obj_hub_broadcast))
		error("jcom.core: loading jcom.receive extern failed");
	else
		object_method(x->obj_hub_broadcast, ps_setcallback, &jcom_core_broadcast_callback, x);
	
}


void jcom_core_subscriber_new_extended(t_jcom_core_subscriber_extended *x, t_symbol *name, t_symbol *subscriber_type)
{
	jcom_core_subscriber_new_common((t_jcom_core_subscriber_common *)x, name, subscriber_type);
	
	x->attr_range[0] = 0.0;
	x->attr_range[1] = 1.0;
	x->attr_clipmode = ps_none;
	x->attr_description = _sym_nothing;
	x->attr_type = ps_msg_generic;
	x->attr_repetitions = 1;
}


//t_max_err return_setname(t_return *x, void *attr, long argc, t_atom *argv)
// COMMON ATTRIBUTE: name
t_max_err jcom_core_subscriber_attribute_common_setname(t_jcom_core_subscriber_common *x, void *attr, long argc, t_atom *argv)
{	
	t_symbol *arg = atom_getsym(argv);
	x->attr_name = arg;

	if(arg->s_name[strlen(arg->s_name)-1] == '*')
		x->has_wildcard = true;
	else
		x->has_wildcard = false;

	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// function for registering with the jcom.hub object
//void jcom_core_subscriber_subscribe(t_jcom_core_subscriber_common *x, t_symbol *subscriber_type)
void jcom_core_subscriber_subscribe(t_jcom_core_subscriber_common *x)
{
	if(x->hub == NULL){			// do not allow multiple subscribes of this object 
		x->hub = jcom_core_subscribe(x, x->attr_name, x->container, x->subscriber_type);
		if(x->hub)
			x->module_name = (t_symbol *)object_method(x->hub, ps_module_name_get);
		if(x->custom_subscribe)
			x->custom_subscribe(x);
	}
}


// Notification that the hub no longer exists
void jcom_core_subscriber_hubrelease(t_jcom_core_subscriber_common *x)
{
	x->hub = NULL;
}


// Set a custom subscribe method
void jcom_core_subscriber_setcustomsubscribe_method(t_jcom_core_subscriber_common *x, t_subscribe_method meth)
{
	x->custom_subscribe = meth;
}


// Unsubscribe and common freeing code
void jcom_core_subscriber_common_free(t_jcom_core_subscriber_common *x)
{
	jcom_core_unsubscribe(x->hub, x);
	x->hub = NULL;
	object_free(x->obj_hub_broadcast);
	x->obj_hub_broadcast = NULL;
}


// receive messages from our internal jcom.receive external
void jcom_core_broadcast_callback(void *z, t_symbol *msg, short argc, t_atom *argv)
{
	t_jcom_core_subscriber_common	*x = (t_jcom_core_subscriber_common *)z;
	
	if(msg == gensym("hub.changed"))
		defer_low(x, (method)jcom_core_subscriber_subscribe, 0, 0, 0);
//		jcom_core_subscriber_subscribe(x);
}
