/* 
 * jcom.core
 * shared code used by the jamoma core externals
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __JMOD_CORE_H__
#define __JMOD_CORE_H__

#include "ext_critical.h"
#ifdef WIN_VERSION
#define snprintf _snprintf
#endif

typedef void (*t_receive_obex_callback)(void *x, t_symbol *msg, short argc, t_atom *argv);

// Globals
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
				*ps_msg_menu,				//
				*ps_msg_none,			// this type only used by jcom.message
				*ps_jcom_hub, 
				*ps_feedback,
				*ps_module_name_get,
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
				*ps_algorithm_message,
				*ps_private,
				*ps__gui__,
				*ps__gui__,
				*ps__jcom_in__,
				*ps__jcom_out__,
				*ps___preview__,
				*ps_return,
				*ps_go,
				*ps_init,
				*ps_ATTRIBUTES,			// used by the hub for setting up the gui...
				*ps_BUILD,
				*ps_MODULE_NAME,
				*ps_MODULE_TITLE,
				*ps_PARAMETER,
				*ps_size,
				*ps_skin,
				*ps_jcom_send,			// object names needed to load externs inside other objects...
				*ps_jcom_receive,
				*ps_jcom_remote_fromModule, 			
				*ps_jcom_remote_toModule,
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
				*ps_slash_preset_slash_save,		// 	/preset/save
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
				*ps_sendbypassedvalue;
				


// Prototypes
void jcom_core_init(void);		// initialize globals (such as symbol constants)


/* Register (or unregister) a client (such as jcom.parameter or jcom.in~) 
 * with the jcom.hub object
 *	 arg1: pointer to the object that is subscribing
 *	 arg2: name of the parameter, message, return, in, out, etc.
 *	 arg3: pointer to patcher containg the parameter, in, out, etc.
 *	 returns: a pointer to the hub object
 */
void *jcom_core_subscribe(void *x, t_symbol *name, t_patcher *container, t_symbol *object_type);


// arg1: pointer to the parameter/message/in/out/etc object that we are removing
//void jcom_core_unsubscribe(void *hub, t_symbol *name);
void jcom_core_unsubscribe(void *hub, void *object);



void jcom_core_atom_copy(t_atom *dst, t_atom *src);
bool jcom_core_atom_compare(t_symbol *type, t_atom *a1, t_atom *a2);	// returns true if they match

void jcom_core_file_writeline(t_filehandle *fh, long *the_eof, char *the_text);
bool jcom_core_string_compare(char *s1, char *s2);

// Load obex externals for use within other externals
// arg1: object name (i.e. gensym("jcom.send"))
// arg2: arg symbol
// arg3: object pointer
// return: true if successful, otherwise false
bool jcom_core_loadextern(t_symbol *objectname, t_symbol *argument, t_object **object);

#endif // #ifndef __JMOD_CORE_H__
