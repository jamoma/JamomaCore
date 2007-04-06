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
#ifdef JCOM_AUDIO_OBJECT
#include "z_dsp.h"							// MSP Header
#endif
#ifdef WIN_VERSION
#define snprintf _snprintf
#endif

typedef void (*t_receive_obex_callback)(void *x, t_symbol *msg, short argc, t_atom *argv);


/** shared common subscriber data members
 *	!!! WARNING !!! This struct MUST be the first member of the object in which it is contained !!!
 */
typedef struct _jcom_core_subscriber_common{
#ifdef JCOM_AUDIO_OBJECT
	t_pxobject		ob;						///< base object for audio externs
#else
	t_object		ob;						///< base object
#endif
	void			*obex;					///< object extensions
	t_patcher		*container;				///< pointer to the patcher containing this object
	void			*hub;					///< the jcom.hub object that we subscribe to
	t_symbol		*attr_name;				///< ATTRIBUTE: subscriber's name
	bool			has_wildcard;			///< does the name contain a '*' character? The jcom.return object uses this for special treatment.
	t_symbol		*module_name;			///< the name of the module as reported when we subscribe to jcom.hub (used for contextual error message posting)
} t_jcom_core_subscriber_common;


/** shared extended subscriber data members
 * 	an extended subscriber is something such as jcom.parameter, jcom.message or jcom.return
 *	!!! WARNING !!! This struct MUST be the first member of the object in which it is contained !!!
 */
typedef struct _jcom_core_subscriber_extended{
#ifdef JCOM_AUDIO_OBJECT
	t_pxobject		ob;						///< base object for audio externs
#else
	t_object		ob;						///< base object
#endif
	void			*obex;					///< object extensions
	t_patcher		*container;				///< pointer to the patcher containing this object
	void			*hub;					///< the jcom.hub object that we subscribe to
	t_symbol		*attr_name;				///< ATTRIBUTE: subscriber's name
	bool			has_wildcard;			///< does the name contain a '*' character? The jcom.return object uses this for special treatment.
	t_symbol		*module_name;			///< the name of the module as reported when we subscribe to jcom.hub (used for contextual error message posting)
	// extensions begin here
	t_symbol		*attr_clipmode;			///< ATTRIBUTE: how to constrain values to the specified ranges
	t_symbol		*attr_description;		///< ATTRIBUTE: textual description of this parameter
	float			attr_range[2];			///< ATTRIBUTE: low, high
	long			attr_range_len;			///<		length actually given to us by the user
	long			attr_repetitions;		///< ATTRIBUTE: 0 = filter out repetitions (like the change object)
	t_symbol		*attr_type;				///< ATTRIBUTE: what kind of data doers this object define?	
} t_jcom_core_subscriber_extended;



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
				
				

// Prototypes
/** Initializes Jamoma globals and symbol constants */
void jcom_core_init(void);


/** Register (or unregister) a client (such as jcom.parameter or jcom.in~) 
 * with the jcom.hub object
 * @param x pointer to the object that is subscribing
 * @param name name of the parameter, message, return, in, out, etc.
 * @param container pointer to patcher containg the parameter, in, out, etc.
 * @return a pointer to the hub object
 */
void *jcom_core_subscribe(void *x, t_symbol *name, t_patcher *container, t_symbol *object_type);


/** Unsubscribe a client from the hub.
 * @param hub pointer to the hub
 * @param object pointer to the parameter/message/in/out/etc object that we are removing
 */
void jcom_core_unsubscribe(void *hub, void *object);


/** Utility function to perform an atom copy.
 * @param dst the destination t_atom
 * @param src the t_atom to be copied
 */
void jcom_core_atom_copy(t_atom *dst, t_atom *src);


/** Utility function to compare two t_atom's.
 * @param type the atom type of a1
 * @param a1 a t_atom
 * @param a2 the t_atom to compare against
 * @return true if the t_atom's are the same
 */
bool jcom_core_atom_compare(t_symbol *type, t_atom *a1, t_atom *a2);


/** Utility for writing newline terminated text to a file with the Max API
 */ 
void jcom_core_file_writeline(t_filehandle *fh, long *the_eof, char *the_text);


/** Compares two strings
 * @return true if the strings are the same 
 */
bool jcom_core_string_compare(char *s1, char *s2);


/** Load obex externals for use within other externals
 * @param objectname the object name (i.e. gensym("jcom.send"))
 * @param argument arguments to the external to be loaded
 * @param object if successful pointer to the object pointer
 * @return true if successfully loaded, otherwise false
 */
bool jcom_core_loadextern(t_symbol *objectname, t_symbol *argument, t_object **object);


/** Translates a Max path+filename combo into a correct absolutepath.
 * @param in_path
 * @param in_filename the filename
 * @param filepath the path
 */
void jcom_core_getfilepath(short in_path, char *in_filename, char *out_filepath);


/** Add methods and attributes that are common to all subscribers
 *	@param pointer to the class that is being constructed
 *	@param pointer to the attr list being constructed for this class
 *	@param common a pointer to the struct that contains all of the common members for the object
 *	@param optional bool parameter (default = true) that says whether or not to define a name attribute for this class 
 */
void jcom_core_subscriber_classinit_common(t_class *c, t_object *attr, long offset, bool define_name = true);


/** Add methods and attributes that are common to extended subscribers (such as parameter, message, and return)
 *	@param pointer to the class that is being constructed
 *	@param pointer to the attr list being constructed for this class
 *	@param common a pointer to the struct that contains all of the common members for the object
 *	@param optional bool parameter (default = true) that says whether or not to define a name attribute for this class 
 */
void jcom_core_subscriber_classinit_extended(t_class *c, t_object *attr, long offset, bool define_name = true);


/** Call this when initing a new common-based instance to set defaults
 */
void jcom_core_subscriber_new_common(t_jcom_core_subscriber_common *x, t_symbol *name);


/** Call this when initing a new extended-based instance to set defaults
 */
void jcom_core_subscriber_new_extended(t_jcom_core_subscriber_extended *x, t_symbol *name);


/** Attribute setter used for the parameter name as referenced in jcom_core_subscriber_attributes_common
 * 	WARNING: This method REQUIRES that the t_jcom_core_subscriber data structure is the second member of the object's struct!
 */
t_max_err jcom_core_subscriber_attribute_common_setname(t_jcom_core_subscriber_common *x, void *attr, long argc, t_atom *argv);


/** Subscribe to the hub
 */
void jcom_core_subscriber_subscribe(t_jcom_core_subscriber_common *x, t_symbol *subscriber_type);


/** Receive notification that the hub has been freed, so we shouldn't call it anymore
 */
void jcom_core_subscriber_hubrelease(t_jcom_core_subscriber_common *x);


/** This should be called by subscribers when they are being freed.
 *  If the module has no other special freeing to do, then this can be called as the destructor.
 */
void jcom_core_subscriber_common_free(t_jcom_core_subscriber_common *x);


#endif // #ifndef __JMOD_CORE_H__
