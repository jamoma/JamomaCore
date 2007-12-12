/* 
 * Jamoma Symbols
 * Symbols cached to avoid repeated calls to the expensive gensym() function
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"		// Max externals header

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
			*ps_core_module_name_get,
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
			*ps_1U_half,
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
			*ps_slash_preset_slash_store,
			*ps_slash_preset_slash_storenext,
			*ps_slash_preset_slash_recall,
			*ps_slash_preset_slash_write,		// 	/preset/save
			*ps_slash_preset_slash_copy,		// 	/preset/save
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
			*ps_priority,
			*ps_add,							// used for calling methods on jcom.receivemaster
			*ps_remove,
			*ps_dispatch
			;

void jamoma_symbols_init(void)
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
	ps_core_module_name_get		= gensym("core_module_name/get");
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
	ps_1U						= gensym("1U");
	ps_1U_half					= gensym("1U-half");
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
	ps_slash_preset_slash_store	= gensym("/preset/store");		
	ps_slash_preset_slash_storenext	= gensym("/preset/storenext");		
	ps_slash_preset_slash_copy	= gensym("/preset/copy");		
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
	ps_add						= gensym("add");					// used for calling methods on jcom.receivemaster
	ps_remove					= gensym("remove");
	ps_dispatch					= gensym("dispatch");
}

