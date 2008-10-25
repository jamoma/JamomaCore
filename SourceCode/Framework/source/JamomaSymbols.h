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

/* TODO: These need to be cleaned up because they are duplicated in JamomaTypes.h, clean
 * this up later for now.
 * XXX */
#include "ext.h"
#ifndef JAMOMA_PLATFORM_WIN
	#ifdef WIN_VERSION
	 #define JAMOMA_PLATFORM_WIN
	#else
	 #define JAMOMA_PLATFORM_MAC
	 #define JAMOMA_EXPORT
	#endif
#endif

#ifdef JAMOMA_PLATFORM_WIN
 #include "windows.h"
 #ifdef _DLL_JAMOMA_EXPORT
  #define JAMOMA_EXPORT __declspec(dllexport)
 #else
  #define JAMOMA_EXPORT __declspec(dllimport)
 #endif // _DLL_EXPORT
#endif

extern  t_symbol JAMOMA_EXPORT *jps_none,
				*jps_done,
				*jps_linear,
				*jps_linear_q,
				*jps_low, 
				*jps_high, 
				*jps_both, 
				*jps_inc,							// increase, decrease
				*jps_dec,
				*jps_msg_generic,					// DATA TYPES FOR THE PARAMETER / MESSAGE
				*jps_msg_int,						// 
				*jps_msg_float,						// 
				*jps_msg_symbol,					// 
				*jps_msg_list,						//
				*jps_msg_toggle,					// 
				*jps_msg_none,						// this type only used by jcom.message
				*jps_jcom_hub, 
				*jps_feedback,
				*jps_module_name_get,
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
				*jps_subscribe,						// used for calling the 'bind' method on jcom.hub
				*jps_unsubscribe,
				*jps_release,						// method in the hub for unsubscribing
				*jps_subscribe_in,					// when binding to the hub, these specify what type of object this is...
				*jps_subscribe_out,
				*jps_subscribe_message,
				*jps_subscribe_parameter,
				*jps_subscribe_remote,
				*jps_subscribe_return,
				*jps_subscribe_init,
				*jps_subscribe_meter,
				*jps_inspector,
				*jps_num_inputs,					// signal inlets and outlets
				*jps_num_outputs,
				*jps_type,
				*jps_dataspace,
				*jps_algorithm_type,
				*jps_name,
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
				*jps_sigcount,
				*jps_siglist,
				*jps_config_changed,
				*jps_algorithm,
				*jps_get_num_channels,
				*jps_module_type,
				*jps_poly,
				*jps_default,
				*jps_jitter,
				*jps_1U,
				*jps_1U_half,
				*jps_algorithm_message,
				*jps_private,
				*jps__gui__,
				*jps__gui__,
				*jps__jcom_in__,
				*jps__jcom_out__,
				*jps___preview__,
				*jps_return,
				*jps_return_extended,
				*jps_go,
				*jps_init,
				*jps_ATTRIBUTES,					// used by the hub for setting up the gui...
				*jps_BUILD,
				*jps_MODULE_NAME,
				*jps_MODULE_TITLE,
				*jps_PARAMETER,
				*jps_NEW_PRESETS_START,
				*jps_NEW_PRESETS,
				*jps_MENU_REBUILD,
				*jps_size,
				*jps_skin,
				*jps_jcom_send,						// object names needed to load externs inside other objects...
				*jps_jcom_receive,
				*jps_jcom_remote_fromModule, 			
				*jps_jcom_remote_toModule,
				*jps_jcom_broadcast_fromHub,
				*jps_from_in_object,
				*jps_box,
				*jps_setcallback,
				*jps_link_in,						// common OSC messages, etc.
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
				*jps_open,							//  open
				*jps_slash_module_view_internals,	// /module/view_internals
				*jps_slash_preset_slash_default,	// /preset/default
				*jps_slash_preset_slash_load,		// /preset/load
				*jps_slash_preset_slash_store,		// /preset/store
				*jps_slash_preset_slash_storenext,	// /preset/storenext
				*jps_slash_preset_slash_storecurrent,	// /preset/storecurrent
				*jps_slash_preset_slash_recall,
				*jps_slash_preset_slash_write,		// /preset/save
				*jps_slash_preset_slash_writeagain,	// /preset/save
				*jps_slash_preset_slash_copy,		// /preset/save
				*jps_ui_slash_freeze,				//	ui/freeze
				*jps_slash_ui_slash_freeze,			// /ui/freeze
				*jps_ui_slash_refresh,				//	ui/refresh
				*jps_slash_ui_slash_refresh,		// /ui/refresh
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

void jamomaSymbolsInit();

#endif // #ifndef __JAMOMA_SYMBOLS_H__

