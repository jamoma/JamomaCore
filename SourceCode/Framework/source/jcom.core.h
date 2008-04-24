/* 
 * jcom.core
 * shared code used by the jamoma core externals
 * By Tim Place, Copyright � 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __JMOD_CORE_H__
#define __JMOD_CORE_H__

#include "ext.h"
#include "ext_obex.h"
#include "ext_critical.h"
#include "z_dsp.h"

#ifdef WIN_VERSION
#define snprintf _snprintf
#endif

// Prototypes
#ifdef __cplusplus
extern "C" {
#endif

typedef void (*t_receive_obex_callback)(void *x, t_symbol *msg, long argc, t_atom *argv);
typedef void (*t_subscribe_method)(void *x);

/** shared common subscriber data members
 *	!!! WARNING !!! This struct MUST be the first member of the object in which it is contained !!!
 *
 *	Further note: We always use t_pxobject, even in non-audio objects, because it is larger and
 *	we want our data members to have consistency memory offsets across all objects.
 */ 
typedef struct _jcom_core_subscriber_common{
	t_pxobject			ob;						///< base object for audio externs
	void				*obex;					///< object extensions
	t_object			*container;				///< pointer to the patcher containing this object
	t_object			*hub;					///< the jcom.hub object that we subscribe to
	t_symbol			*attr_name;				///< ATTRIBUTE: subscriber's name
	bool				has_wildcard;			///< does the name contain a '*' character? The jcom.return object uses this for special treatment.
	t_symbol			*module_name;			///< the name of the module as reported when we subscribe to jcom.hub (used for contextual error message posting)
	t_symbol			*subscriber_type;		///< the class of object this subscriber belongs to from the hub's perspective
	t_subscribe_method	custom_subscribe;		///< function pointer to a custom subscribe method for doing additional work at subscription
	t_object			*obj_hub_broadcast;		///< jcom.receive that listens to the hub's broadcast
} t_jcom_core_subscriber_common;


/** shared extended subscriber data members
 * 	an extended subscriber is something such as jcom.parameter, jcom.message or jcom.return
 *	!!! WARNING !!! This struct MUST be the first member of the object in which it is contained !!!
 */
typedef struct _jcom_core_subscriber_extended{
//#ifdef JCOM_AUDIO_OBJECT
	t_pxobject			ob;						///< base object for audio externs
	void				*obex;					///< object extensions
	t_object			*container;				///< pointer to the patcher containing this object
	t_object			*hub;					///< the jcom.hub object that we subscribe to
	t_symbol			*attr_name;				///< ATTRIBUTE: subscriber's name
	bool				has_wildcard;			///< does the name contain a '*' character? The jcom.return object uses this for special treatment.
	t_symbol			*module_name;			///< the name of the module as reported when we subscribe to jcom.hub (used for contextual error message posting)
	t_symbol			*subscriber_type;		///< the class of object this subscriber belongs to from the hub's perspective
	t_subscribe_method	custom_subscribe;		///< function pointer to a custom subscribe method for doing addition work at subscription
	t_object			*obj_hub_broadcast;		///< jcom.receive that listens to the hub's broadcast
	// extensions begin here
	t_symbol			*attr_clipmode;			///< ATTRIBUTE: how to constrain values to the specified ranges
	t_symbol			*attr_description;		///< ATTRIBUTE: textual description of this parameter
	float				attr_range[2];			///< ATTRIBUTE: low, high
	long				attr_range_len;			///<		length actually given to us by the user
	long				attr_repetitions;		///< ATTRIBUTE: 0 = filter out repetitions (like the change object)
	t_symbol			*attr_type;				///< ATTRIBUTE: what kind of data doers this object define?	
} t_jcom_core_subscriber_extended;
				

/** Register (or unregister) a client (such as jcom.parameter or jcom.in~) 
 * with the jcom.hub object
 * @param x pointer to the object that is subscribing
 * @param name name of the parameter, message, return, in, out, etc.
 * @param container pointer to patcher containg the parameter, in, out, etc.
 * @return a pointer to the hub object
 */
t_object *jcom_core_subscribe(t_object *x, t_symbol *name, t_object *container, t_symbol *object_type);


/** Unsubscribe a client from the hub.
 * @param hub pointer to the hub
 * @param object pointer to the parameter/message/in/out/etc object that we are removing
 */
void jcom_core_unsubscribe(t_object *hub, void *object);


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
 * @param argc number of arguments to the external to be loaded
 * @param argv pointer to the first of an array of atom arguments to the external that is to be loaded
 * @param object if successful pointer to the object pointer
 * @return true if successfully loaded, otherwise false
 */
bool jcom_core_loadextern(t_symbol *objectname, long argc, t_atom *argv, t_object **object);
//bool jcom_core_loadextern(t_symbol *objectname, t_symbol *argument, t_object **object);


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
void jcom_core_subscriber_new_common(t_jcom_core_subscriber_common *x, t_symbol *name, t_symbol *subscriber_type);

/** Call this when initing a new extended-based instance to set defaults
 */
void jcom_core_subscriber_new_extended(t_jcom_core_subscriber_extended *x, t_symbol *name, t_symbol *subscriber_type);


/** Attribute setter used for the parameter name as referenced in jcom_core_subscriber_attributes_common
 * 	WARNING: This method REQUIRES that the t_jcom_core_subscriber data structure is the second member of the object's struct!
 */
t_max_err jcom_core_subscriber_attribute_common_setname(t_jcom_core_subscriber_common *x, void *attr, long argc, t_atom *argv);


/** Subscribe to the hub
 */
void jcom_core_subscriber_subscribe(t_jcom_core_subscriber_common *x);


/** Receive notification that the hub has been freed, so we shouldn't call it anymore
 */
void jcom_core_subscriber_hubrelease(t_jcom_core_subscriber_common *x);

/** Provide a function for doing additional setup at subscription time
*/
void jcom_core_subscriber_setcustomsubscribe_method(t_jcom_core_subscriber_common *x, t_subscribe_method meth);


/** This should be called by subscribers when they are being freed.
 *  If the module has no other special freeing to do, then this can be called as the destructor.
 */
void jcom_core_subscriber_common_free(t_jcom_core_subscriber_common *x);


/** This method is called when the jcom.receive in a subscriber receives the hub's broadcast messages.
 */
void jcom_core_broadcast_callback(void *z, t_symbol *msg, long argc, t_atom *argv);



t_max_err jcom_core_attr_getname(t_jcom_core_subscriber_extended *x, void *attr, long *argc, t_atom **argv);
t_max_err jcom_core_attr_setrange(t_jcom_core_subscriber_extended *x, void *attr, long argc, t_atom *argv);
t_max_err jcom_core_attr_getrange(t_jcom_core_subscriber_extended *x, void *attr, long *argc, t_atom **argv);
t_max_err jcom_core_attr_getrepetitions(t_jcom_core_subscriber_extended *x, void *attr, long *argc, t_atom **argv);
t_max_err jcom_core_attr_getclipmode(t_jcom_core_subscriber_extended *x, void *attr, long *argc, t_atom **argv);
t_max_err jcom_core_attr_getdescription(t_jcom_core_subscriber_extended *x, void *attr, long *argc, t_atom **argv);

#ifdef __cplusplus
}
#endif

#endif // #ifndef __JMOD_CORE_H__
