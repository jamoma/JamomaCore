/* 
 * jcom.core
 *
 * Shared code used by the jamoma core externals jcom.parameter, jcom.message and jcom.return.
 *
 * By Tim Place, Copyright � 2006
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __JMOD_CORE_H__
#define __JMOD_CORE_H__

#ifdef WIN_VERSION
 #pragma warning(disable:4083) //warning C4083: expected 'newline'; found identifier 's'
#endif // WIN_VERSION

#ifndef WIN_VERSION
#include <Carbon/Carbon.h>
#endif

#include "ext.h"
#include "ext_obex.h"
#include "ext_critical.h"
#include "z_dsp.h"
#include "JamomaTypes.h"

#ifdef WIN_VERSION
#define snprintf _snprintf
#endif

// Prototypes
#ifdef __cplusplus
extern "C" {
#endif

	
typedef void (*t_receive_obex_callback)(void *x, t_symbol *msg, long argc, t_atom *argv);
	
	
typedef void (*t_subscribe_method)(void *x);

	
/** Shared common subscriber data members.
 *	!!! WARNING !!! This struct MUST be the first member of the object in which it is contained !!!
 *
 *	Further note: We always use t_pxobject, even in non-audio objects, because it is larger and
 *	we want our data members to have consistency memory offsets across all objects.
 */ 
typedef struct _jcom_core_subscriber_common{
	t_pxobject			ob;						///< Base object for audio externs.
	t_object			*container;				///< Pointer to the patcher containing this object.
	t_object			*hub;					///< The jcom.hub object that we subscribe to.
	t_symbol			*attr_name;				///< ATTRIBUTE: Subscriber's name
	bool				has_wildcard;			///< Does the name contain a '*' character? The jcom.return object uses this for special treatment.
	t_symbol			*module_name;			///< The name of the module as reported when we subscribe to jcom.hub (used for contextual error message posting).
	t_symbol			*subscriber_type;		///< The class of object this subscriber belongs to from the hub's perspective.
	t_subscribe_method	custom_subscribe;		///< Function pointer to a custom subscribe method for doing additional work at subscription.
} t_jcom_core_subscriber_common;


/** Shared extended subscriber data members.
 * 	An extended subscriber is something such as jcom.parameter, jcom.message or jcom.return.
 *	!!! WARNING !!! This struct MUST be the first member of the object in which it is contained !!!
 */
typedef struct _jcom_core_subscriber_extended{
//#ifdef JCOM_AUDIO_OBJECT
	t_pxobject			ob;						///< Base object for audio externs.
	t_object			*container;				///< Pointer to the patcher containing this object.
	t_object			*hub;					///< The jcom.hub object that we subscribe to.
	t_symbol			*attr_name;				///< ATTRIBUTE: subscriber's name
	bool				has_wildcard;			///< Does the name contain a '*' character? The jcom.return object uses this for special treatment.
	t_symbol			*module_name;			///< The name of the module as reported when we subscribe to jcom.hub (used for contextual error message posting).
	t_symbol			*subscriber_type;		///< The class of object this subscriber belongs to from the hub's perspective.
	t_subscribe_method	custom_subscribe;		///< Function pointer to a custom subscribe method for doing addition work at subscription
	// extensions begin here.
	t_symbol			*attr_clipmode;			///< ATTRIBUTE: How to constrain values to the specified ranges.
	t_symbol			*attr_description;		///< ATTRIBUTE: Textual description of this parameter.
	float				attr_range[2];			///< ATTRIBUTE: low, high
	long				attr_range_len;			///<		Length actually given to us by the user.
	long				attr_repetitions;		///< ATTRIBUTE: 0 = filter out repetitions (like the change object).
	t_symbol			*attr_type;				///< ATTRIBUTE: What kind of data doers this object define?
} t_jcom_core_subscriber_extended;
				


/** Utility function to perform an atom copy.
 * @param dst			The destination t_atom.
 * @param src			The t_atom to be copied.
 */
void jcom_core_atom_copy(t_atom *dst, t_atom *src);


/** Utility function to compare two t_atom's.
 * @param type			The atom type of a1.
 * @param a1			A t_atom.
 * @param a2			The t_atom to compare against.
 * @return true			If the t_atom's are the same.
 */
bool jcom_core_atom_compare(t_symbol *type, t_atom *a1, t_atom *a2);


/** Utility for writing newline terminated text to a file with the Max API.
 */ 
void jcom_core_file_writeline(t_filehandle *fh, long *the_eof, char *the_text);


/** Compares two strings.
 * @return				True if the strings are the same.
 */
bool jcom_core_string_compare(char *s1, char *s2);


/** Load obex externals for use within other externals.
 * @param objectname	The object name (i.e. SymbolGen("jcom.send")).
 * @param argc			Number of arguments to the external to be loaded.
 * @param argv			Pointer to the first of an array of atom arguments to the external that is to be loaded.
 * @param object		If successful pointer to the object pointer.
 * @return true			If successfully loaded, otherwise false.
 */
bool jcom_core_loadextern(t_symbol *objectname, long argc, t_atom *argv, t_object **object);
//bool jcom_core_loadextern(t_symbol *objectname, t_symbol *argument, t_object **object);


/** Translates a Max path+filename combo into a correct absolutepath.
 * @param in_path		Folder path passed in.
 * @param in_filename	The filename.
 * @param filepath		Resulting correct absolutepath.
 */
void jcom_core_getfilepath(short in_path, char *in_filename, char *out_filepath);


/** Add methods and attributes that are common to all subscribers
 *	@param c			Pointer to the class that is being constructed
 *	@param attr			Pointer to the attr list being constructed for this class
 *	@param common		A pointer to the struct that contains all of the common members for the object
 *	@param optional bool parameter (default = true) that says whether or not to define a name attribute for this class 
 */
void jcom_core_subscriber_classinit_common(t_class *c, t_object *attr = NULL, bool define_name = true);


/** Add methods and attributes that are common to extended subscribers (such as parameter, message, and return)
 *	@param c			Pointer to the class that is being constructed.
 *	@param attr			Pointer to the attr list being constructed for this class.
 *	@param common		A pointer to the struct that contains all of the common members for the object.
 *	@param define_name	Optional bool parameter (default = true) that says whether or not to define a name attribute for this class 
 */
void jcom_core_subscriber_classinit_extended(t_class *c, t_object *attr, bool define_name = true);


/** Call this when initing a new common-based instance to set defaults.
 @param x				Pointer to the object.
 @param name			Name of the subscriber.
 @param subscriber_type	Subscriber type.
 */
void jcom_core_subscriber_new_common(t_jcom_core_subscriber_common *x, t_symbol *name, t_symbol *subscriber_type);

	
/** Call this when initing a new extended-based instance to set defaults.
 @param x				Pointer to the object.
 @param name			Name of the subscriber.
 @param subscriber_type	Subscriber type. 
 */
void jcom_core_subscriber_new_extended(t_jcom_core_subscriber_extended *x, t_symbol *name, t_symbol *subscriber_type);


/** Attribute setter used for the parameter name as referenced in jcom_core_subscriber_attributes_common
 * 	WARNING: This method REQUIRES that the t_jcom_core_subscriber data structure is the second member of the object's struct!
 @param x				Pointer to the object.
 @param attr			Pointer to the attribute.
 @param argc			Number of arguments.
 @param argv			Pointer to the array of arguments.
 */
t_max_err jcom_core_subscriber_attribute_common_setname(t_jcom_core_subscriber_common *x, void *attr, long argc, t_atom *argv);


/** Subscribe to the hub.
 @param x				Pointer to the object.
 */
void jcom_core_subscriber_subscribe(t_jcom_core_subscriber_common *x);
//	void jcom_core_subscriber_subscribe(t_jcom_core_subscriber_common *x, ObjectPtr hub=NULL);


/** Receive notification that the hub has been freed, so we shouldn't call it anymore.
 @param x				Pointer to the object.
 */
void jcom_core_subscriber_hubrelease(t_jcom_core_subscriber_common *x);

	
/** Provide a function for doing additional setup at subscription time.
 @param x				Pointer to the object,
 @param meth			Pointer to the method to call.
*/
void jcom_core_subscriber_setcustomsubscribe_method(t_jcom_core_subscriber_common *x, t_subscribe_method meth);


/** This should be called by subscribers when they are being freed.
 *  If the module has no other special freeing to do, then this can be called as the destructor.
 @param x				Pointer to the object.
 */
void jcom_core_subscriber_common_free(t_jcom_core_subscriber_common *x);


/** Get the OSC name of the object. 
 */
t_max_err jcom_core_attr_getname(t_jcom_core_subscriber_extended *x, void *attr, long *argc, t_atom **argv);
	

/** Set the OSC name of the object.
 */
t_max_err jcom_core_attr_setname(t_jcom_core_subscriber_extended *x, void *attr, long argc, t_atom *argv);


/** Set  the range boundaries (the range/bounds attribute) for the object.
 */
t_max_err jcom_core_attr_setrange(t_jcom_core_subscriber_extended *x, void *attr, long argc, t_atom *argv);
	

/** Get  the range boundaries (the range/bounds attribute) for the object.
	 */
t_max_err jcom_core_attr_getrange(t_jcom_core_subscriber_extended *x, void *attr, long *argc, t_atom **argv);


/** Set whether the object filters repetitions or not (the repetitions/allow attribute).
	 */
t_max_err jcom_core_attr_getrepetitions(t_jcom_core_subscriber_extended *x, void *attr, long *argc, t_atom **argv);
	

/** Get current value for the repetitions/allow attribute.
	 */
t_max_err jcom_core_attr_setrepetitions(t_jcom_core_subscriber_extended *x, void *attr, long argc, t_atom *argv);


/** Get the clipmode for the object (the range/clipmode attribute).
 */
t_max_err jcom_core_attr_getclipmode(t_jcom_core_subscriber_extended *x, void *attr, long *argc, t_atom **argv);

	
/** Set the clipmode for the object (the range/clipmode attribute).
	 */	
t_max_err jcom_core_attr_setclipmode(t_jcom_core_subscriber_extended *x, void *attr, long argc, t_atom *argv);
	

/** Get the description attribute for the object, used for auto-documentation purposes.
	 */
t_max_err jcom_core_attr_getdescription(t_jcom_core_subscriber_extended *x, void *attr, long *argc, t_atom **argv);
	

/** Set the description attribute for the object, used for auto-documentation purposes.
	 */
t_max_err jcom_core_attr_setdescription(t_jcom_core_subscriber_extended *x, void *attr, long argc, t_atom *argv);

#ifdef __cplusplus
}
#endif




/** Register (or unregister) a client (such as jcom.parameter or jcom.in~) 
 * with the jcom.hub object
 * @param x pointer to the object that is subscribing
 * @param name name of the parameter, message, return, in, out, etc.
 * @param container pointer to patcher containg the parameter, in, out, etc.
 * @return a pointer to the hub object
 */
JAMOMA_EXPORT t_object *jcom_core_subscribe(t_object *x, t_symbol *name, t_object *container, t_symbol *object_type);

JAMOMA_EXPORT t_object *jcom_core_subscribe(t_object *x, t_symbol *name, t_object *container, t_symbol *object_type, t_object* hub);


/** Unsubscribe a client from the hub.
 * @param hub pointer to the hub
 * @param object pointer to the parameter/message/in/out/etc object that we are removing
 */
void jcom_core_unsubscribe(t_object *hub, void *object);




#endif // #ifndef __JMOD_CORE_H__
