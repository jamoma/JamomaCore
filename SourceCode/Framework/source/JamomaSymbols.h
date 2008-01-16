/* 
 * Jamoma Symbols
 * Symbols cached to avoid repeated calls to the expensive gensym() function
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __JAMOMA_SYMBOLS_H__
#define __JAMOMA_SYMBOLS_H__


extern t_symbol	*ps_none,
				*ps_done,
				*ps_linear,
				*ps_linear_q,
				*ps_low, 
				*ps_high, 
				*ps_both, 
				*ps_inc,				// increase, decrease
				*ps_dec,
				*ps_msg_generic,			// DATA TYPES FOR THE PARAMETER / MESSAGE
				*ps_msg_int,			// 
				*ps_msg_float,			// 
				*ps_msg_symbol,			// 
				*ps_msg_list,			//
				*ps_msg_toggle,				// 
				*ps_msg_none,			// this type only used by jcom.message
				*ps_jcom_hub, 
				*ps_feedback,
				*ps_module_name_get,
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
				*ps_subscribe,				// used for calling the 'bind' method on jcom.hub
				*ps_unsubscribe,
				*ps_release,				// method in the hub for unsubscribing
				*ps_subscribe_in,			// when binding to the hub, these specify what type of object this is...
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
				*ps_type,
				*ps_algorithm_type,
				*ps_name,
				*ps_range,
				*ps_clipmode,
				*ps_ramp,
				*ps_repetitions,
				*ps_description,
				*ps_value,	
				*ps_sigcount,
				*ps_siglist,
				*ps_config_changed,
				*ps_algorithm,
				*ps_get_num_channels,
				*ps_module_type,
				*ps_poly,
				*ps_default,
				*ps_jitter,
				*ps_1U,
				*ps_1U_half,
				*ps_algorithm_message,
				*ps_private,
				*ps__gui__,
				*ps__gui__,
				*ps__jcom_in__,
				*ps__jcom_out__,
				*ps___preview__,
				*ps_return,
				*ps_return_extended,
				*ps_go,
				*ps_init,
				*ps_ATTRIBUTES,			// used by the hub for setting up the gui...
				*ps_BUILD,
				*ps_MODULE_NAME,
				*ps_MODULE_TITLE,
				*ps_PARAMETER,
				*ps_NEW_PRESETS_START,
				*ps_NEW_PRESETS,
				*ps_MENU_REBUILD,
				*ps_size,
				*ps_skin,
				*ps_jcom_send,			// object names needed to load externs inside other objects...
				*ps_jcom_receive,
				*ps_jcom_remote_fromModule, 			
				*ps_jcom_remote_toModule,
				*ps_jcom_broadcast_fromHub,
				*ps_from_in_object,
				*ps_box,
				*ps_setcallback,
				*ps_link_in,			// common OSC messages, etc.
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
				*ps_slash_preset_slash_store,		// /preset/store
				*ps_slash_preset_slash_storenext,	// /preset/storenext
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

void jamoma_symbols_init(void);

#endif // #ifndef __JAMOMA_SYMBOLS_H__

