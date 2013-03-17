/*
 * \file jcom.core.h
 * shared code used by the jamoma core externals
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
	 * @param objectname the object name (i.e. SymbolGen("jcom.send"))
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
	
	
#ifdef __cplusplus
}
#endif


#endif // #ifndef __JMOD_CORE_H__

