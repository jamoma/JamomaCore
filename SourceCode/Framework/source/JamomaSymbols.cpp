/* 
 * Jamoma Symbols
 * Symbols cached to avoid repeated calls to the expensive gensym() function
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifdef WIN_VERSION
 #pragma warning(disable:4083) //warning C4083: expected 'newline'; found identifier 's'
#endif // WIN_VERSION

#include "ext.h"		// Max externals header

t_symbol	*jps_done,
			*jps_none,					// ramp stuff
			*jps_linear,
			*jps_linear_q,
			*jps_ramp_update,
			*jps_low, 
			*jps_high, 
			*jps_both, 
			*jps_inc,					// increase, decrease
			*jps_dec,
			*jps_msg_generic, 				// types
			*jps_msg_int, 
			*jps_msg_float, 
			*jps_msg_symbol,
			*jps_msg_list,
			*jps_msg_toggle, 
			*jps_msg_none,				// this type only used by jcom.message
			*jps_jcom_hub, 
			*jps_feedback,
			*jps_module_name_get,		// common OSC messages according to the JIG
			*jps_core_module_name_get,
			*jps_dumpout,
			*jps_audio, 
			*jps_video, 
			*jps_control, 
			*jps_dispatched, 
			*jps_parameter_name,
			*jps_message_name,
			*jps_message_return,
			*jps_parameter_names_start, 
			*jps_parameter_names_end,			
			*jps_message_names_start, 
			*jps_message_names_end,
			*jps_return_names_start, 
			*jps_return_names_end,
			*jps_parameter_values_start,
			*jps_parameter_values_end,
			*jps_parameter_value,
			*jps_subscribe,				// subscribe stuff
			*jps_unsubscribe,
			*jps_release,
			*jps_subscribe_in,
			*jps_subscribe_out,
			*jps_subscribe_message,
			*jps_subscribe_parameter,
			*jps_subscribe_remote,
			*jps_subscribe_return,
			*jps_subscribe_init,
			*jps_subscribe_meter,
			*jps_inspector,
			*jps_num_inputs,				// signal inlets and outlets
			*jps_num_outputs,
			*jps_type,						// parameter/message/return attributes
			*jps_algorithm_type,
			*jps_name,
			*jps_dataspace,
			*jps_range,
			*jps_range_bounds,
			*jps_range_clipmode,
			*jps_clipmode,
			*jps_ramp,
			*jps_ramp_drive,
			*jps_ramp_function,
			*jps_repetitions,
			*jps_repetitions_allow,
			*jps_description,
			*jps_value,
			*jps_sigcount,				// signals to module
			*jps_siglist,
			*jps_config_changed,
			*jps_algorithm,
			*jps_get_num_channels,
			*jps_module_type,			// module type
			*jps_poly,
			*jps_default,
			*jps_jitter,
			*jps_1U,
			*jps_1U_half,
			*jps_algorithm_message,
			*jps_private,
			*jps__gui__,
			*jps__jcom_in__,
			*jps__jcom_out__,
			*jps___preview__,
			*jps_return,
			*jps_return_extended,
			*jps_go,
			*jps_init,
			*jps_ATTRIBUTES,
			*jps_BUILD,
			*jps_MODULE_NAME,			// name of this module class
			*jps_MODULE_TITLE,			// OSC name of this module instance
			*jps_PARAMETER,
			*jps_NEW_PRESETS_START,
			*jps_NEW_PRESETS,
			*jps_MENU_REBUILD,
			*jps_size,
			*jps_skin,
			*jps_jcom_send,	
			*jps_jcom_receive,
			*jps_jcom_remote_fromModule, 			
			*jps_jcom_remote_toModule,
			*jps_jcom_broadcast_fromHub,
			*jps_from_in_object,
			*jps_box,
			*jps_setcallback,
			*jps_link_in,				// common OSC messages, etc.
			*jps_link_out,
			*jps_unlink_in,
			*jps_unlink_out,
			*jps_audio_gain_midi,
			*jps_slash_audio_gain_midi,
			*jps_audio_mute,
			*jps_slash_audio_mute,
			*jps_audio_bypass,
			*jps_slash_audio_bypass,
			*jps_audio_mix,
			*jps_slash_audio_mix,
			*jps_audio_sample_rate,
			*jps_slash_audio_sample_rate,
			*jps_audio_meters_freeze,
			*jps_slash_audio_meters_freeze,
			*jps_video_mute,
			*jps_slash_video_mute,
			*jps_video_bypass,
			*jps_slash_video_bypass,
			*jps_video_freeze,
			*jps_slash_video_freeze,
			*jps_video_preview,
			*jps_slash_video_preview,			
			*jps_open,							// 	open
			*jps_slash_module_view_internals,	//	/module/view_internals
			*jps_slash_preset_slash_default,		// 	/preset/default
			*jps_slash_preset_slash_load,		// 	/preset/load
			*jps_slash_preset_slash_store,
			*jps_slash_preset_slash_storenext,
			*jps_slash_preset_slash_recall,
			*jps_slash_preset_slash_write,		// 	/preset/save
			*jps_slash_preset_slash_copy,		// 	/preset/save
			*jps_ui_slash_freeze,				//	ui/freeze
			*jps_slash_ui_slash_freeze,			//	/ui/freeze
			*jps_ui_slash_refresh,				//	ui/refresh
			*jps_slash_ui_slash_refresh,			//	/ui/refresh		
			*jps_register_meter,
			*jps_register_preview,
			*jps_voices,
			*jps_mute,
			*jps_target,
			*jps_sendlastvalue,
			*jps_sendbypassedvalue,
			*jps_star,
			*jps_priority,
			*jps_add,							// used for calling methods on jcom.receivemaster
			*jps_remove,
			*jps_dispatch
			;

void jamomaSymbolsInit()
{
	jps_done						= gensym("done");
	// ramp stuff
	jps_none						= gensym("none");
	jps_linear						= gensym("linear");
	jps_linear_q					= gensym("linear.q");
	jps_ramp_update					= gensym("ramp_update");
	jps_low							= gensym("low"); 
	jps_high						= gensym("high"); 
	jps_both						= gensym("both");
	// increase and decrease
	jps_inc							= gensym("inc");
	jps_dec							= gensym("dec");
	// types
	jps_msg_generic					= gensym("msg_generic"); 
	jps_msg_int						= gensym("msg_int"); 
	jps_msg_float					= gensym("msg_float"); 
	jps_msg_symbol					= gensym("msg_symbol");
	jps_msg_list					= gensym("msg_list");
	jps_msg_toggle					= gensym("msg_toggle");
	jps_msg_none					= gensym("msg_none");			// this type only used by jcom.message
	jps_jcom_hub					= gensym("jcom.hub"); 
    jps_feedback					= gensym("__feedback__");		// used for parameter feedback to the hub
	// common OSC messages according to the JIG
	jps_module_name_get				= gensym("/module_name:/get");
	jps_core_module_name_get		= gensym("core_module_name:/get");
	jps_dumpout						= gensym("dumpout");
	jps_audio						= gensym("audio");
	jps_video						= gensym("video");
	jps_control						= gensym("control");
	jps_dispatched					= gensym("dispatched");
	jps_parameter_name				= gensym("/parameter_name");
	jps_message_name				= gensym("/message_name");
	jps_message_return				= gensym("/return_name");
	jps_parameter_names_start		= gensym("/parameter_names_start");
	jps_parameter_names_end			= gensym("/parameter_names_end");
	jps_message_names_start			= gensym("/message_names_start"); 
	jps_message_names_end			= gensym("/message_names_end");
	jps_return_names_start			= gensym("/return_names_start");
	jps_return_names_end			= gensym("/return_names_end");
	jps_parameter_values_start		= gensym("/parameter_values_start");
	jps_parameter_values_end		= gensym("/parameter_values_end");
	jps_parameter_value				= gensym("/parameter_value");
	// subscribe stuff
    jps_subscribe					= gensym("subscribe");
	jps_unsubscribe					= gensym("unsubscribe");
	jps_release						= gensym("release");
	jps_subscribe_in				= gensym("subscribe_in"); 
	jps_subscribe_out				= gensym("subscribe_out"); 
	jps_subscribe_message			= gensym("subscribe_message"); 
	jps_subscribe_parameter			= gensym("subscribe_parameter"); 
	jps_subscribe_remote			= gensym("subscribe_remote"); 
	jps_subscribe_return			= gensym("subscribe_return");
	jps_subscribe_init				= gensym("subscribe_init");
	jps_subscribe_meter				= gensym("subscribe_meter");
	// signal inlets and outlets
	jps_num_inputs					= gensym("num_inputs");
	jps_num_outputs					= gensym("num_outputs");
	// parameter/message/return attributes
	jps_inspector					= gensym("inspector");
	jps_type						= gensym("type");
	jps_dataspace					= gensym("dataspace");
	// %TODO: jps_range should probably be removed
	jps_range						= gensym("range");
	jps_range_bounds				= gensym("range/bounds");
	jps_range_clipmode				= gensym("range/clipmode");
	// %TODO: jps_clipmode should probably be removed
	jps_clipmode					= gensym("clipmode");
	jps_ramp						= gensym("ramp");
	jps_ramp_drive					= gensym("ramp/drive");
	jps_ramp_function				= gensym("ramp/function");
	jps_repetitions					= gensym("repetitions");
	jps_repetitions_allow			= gensym("repetitions/allow");
	jps_description					= gensym("description");
	jps_value						= gensym("value");
	jps_algorithm_type				= gensym("algorithm_type");
	jps_name						= gensym("name");
	// signals to module
	jps_sigcount					= gensym("sigcount");
	jps_siglist						= gensym("siglist");
	jps_config_changed				= gensym("config_changed");
	jps_algorithm					= gensym("algorithm");
	jps_get_num_channels			= gensym("get_num_channels");
	// module type
	jps_module_type					= gensym("module_type");
	jps_poly						= gensym("poly");
	jps_default						= gensym("default");
	jps_jitter						= gensym("jitter");
	jps_1U							= gensym("1U");
	jps_1U_half						= gensym("1U-half");
	jps_algorithm_message			= gensym("algorithm_message");
	jps_private						= gensym("private");		// method called in the hub by jcom.remote
	jps__gui__						= gensym("__GUI__");		// name of jcom.remote in the gui
	jps__jcom_in__					= gensym("__jcom_in__");	// name of the module's jcom.in object
	jps__jcom_out__					= gensym("__jcom_out__");	// name of the module's jcom.out object
	jps___preview__					= gensym("__preview__");	// name of the remote for jitter preview matrices
	jps_return						= gensym("return");			// method called in the hub by jcom.return
	jps_return_extended				= gensym("return_extended");
	jps_go							= gensym("go");				// method in jcom.init called by the hub
	jps_init						= gensym("/init");			// method in the hub called from jcom.init
	jps_ATTRIBUTES					= gensym("ATTRIBUTES");
	jps_BUILD						= gensym("BUILD");
	jps_MODULE_NAME					= gensym("MODULE_NAME");	// name of this module class
	jps_MODULE_TITLE				= gensym("MODULE_TITLE");	// OSC id of of this module instance
	jps_PARAMETER					= gensym("PARAMETER");
	jps_NEW_PRESETS_START			= gensym("NEW_PRESETS_START");
	jps_NEW_PRESETS					= gensym("NEW_PRESETS");
	jps_MENU_REBUILD				= gensym("MENU_REBUILD");
	jps_size						= gensym("size");
	jps_skin						= gensym("skin");
	jps_jcom_send					= gensym("jcom.send");	
	jps_jcom_receive				= gensym("jcom.receive");
	jps_jcom_remote_fromModule 		= gensym("jcom.remote.module.from");	// different than in jamoma 0.3.x to avoid conflicts...
	jps_jcom_remote_toModule 		= gensym("jcom.remote.module.to");
	jps_jcom_broadcast_fromHub		= gensym("jcom.broadcast.hub.from");	// used to tell subscribers in a module to subscribe (hub has changed)
	jps_from_in_object				= gensym("from_in_object");	// messages to the jcom.out object
	jps_box							= gensym("box");
	jps_setcallback					= gensym("setcallback");
	jps_link_in						= gensym("link_in");
	jps_link_out					= gensym("link_out");
	jps_unlink_in					= gensym("unlink_in");
	jps_unlink_out					= gensym("unlink_out");
	jps_audio_gain_midi				= gensym("audio/gain/midi");		// used by the i/o objects...
	jps_slash_audio_gain_midi		= gensym("/audio/gain/midi");
	jps_audio_mute					= gensym("audio/mute");
	jps_slash_audio_mute			= gensym("/audio/mute");
	jps_audio_bypass				= gensym("audio/bypass");
	jps_slash_audio_bypass			= gensym("/audio/bypass");
	jps_audio_mix					= gensym("audio/mix");
	jps_slash_audio_mix				= gensym("/audio/mix");
	jps_audio_sample_rate			= gensym("audio/sample_rate");
	jps_slash_audio_sample_rate		= gensym("/audio/sample_rate");
	jps_audio_meters_freeze			= gensym("audio/meters/freeze");
	jps_slash_audio_meters_freeze 	= gensym("/audio/meters/freeze");
	jps_video_mute					= gensym("video/mute");
	jps_slash_video_mute			= gensym("/video/mute");
	jps_video_bypass				= gensym("video/bypass");
	jps_slash_video_bypass			= gensym("/video/bypass");
	jps_video_freeze				= gensym("video/freeze");
	jps_slash_video_freeze			= gensym("/video/freeze");
	jps_video_preview				= gensym("video/preview");
	jps_slash_video_preview			= gensym("/video/preview");	
	jps_register_meter				= gensym("register_meter");
	jps_register_preview			= gensym("register_preview");
	jps_open						= gensym("open");
	jps_slash_module_view_internals = gensym("/module/view_internals");
	jps_slash_preset_slash_default 	= gensym("/preset/default");
	jps_slash_preset_slash_load		= gensym("/preset/load");
	jps_slash_preset_slash_recall	= gensym("/preset/recall");
	jps_slash_preset_slash_write	= gensym("/preset/write");
	jps_slash_preset_slash_store	= gensym("/preset/store");		
	jps_slash_preset_slash_storenext	= gensym("/preset/storenext");		
	jps_slash_preset_slash_copy		= gensym("/preset/copy");		
	jps_ui_slash_freeze				= gensym("ui/freeze");
	jps_slash_ui_slash_freeze		= gensym("/ui/freeze");
	jps_ui_slash_refresh			= gensym("ui/refresh");
	jps_slash_ui_slash_refresh		= gensym("/ui/refresh");
	jps_voices						= gensym("voices");
	jps_mute						= gensym("mute");
	jps_target						= gensym("target");
	jps_sendlastvalue				= gensym("sendlastvalue");
	jps_sendbypassedvalue			= gensym("sendbypassedvalue");
	jps_star						= gensym("*");
	jps_priority					= gensym("priority");
	jps_add							= gensym("add");					// used for calling methods on jcom.receivemaster
	jps_remove						= gensym("remove");
	jps_dispatch					= gensym("dispatch");
}

