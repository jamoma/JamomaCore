/* 
 * jcom.core
 * shared code used by the jamoma core externals
 * By Tim Place, Copyright � 2006
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

//#include "ext.h"		// Max externals header
//#include "ext_obex.h"	// Obex header
#include "jcom.core.h"
#include "Jamoma.h"

#pragma mark -
#pragma mark Atom Utilities

// Copying all of the elements should be faster than branching and copying one element
//	(that's the theory anyway...)
void jcom_core_atom_copy(t_atom *dst, t_atom *src)
{
	//	memcpy(dst, src, sizeof(t_atom));
	sysmem_copyptr(src, dst, sizeof(t_atom));
}


bool jcom_core_atom_compare(t_symbol *type, t_atom *a1, t_atom *a2)
{
	if (!a1 || !a2)
		return 0;
		
	if (type == jps_decimal) {				// float is first so that it gets process the most quickly
		if (atom_getfloat(a1) == atom_getfloat(a2))
			return 1;
	}
	else if ((type == jps_integer) || (type == jps_boolean)) {
		if (atom_getlong(a1) == atom_getlong(a2))
			return 1;
	}
	else if (type == jps_string) {
		if (atom_getsym(a1) == atom_getsym(a2))
			return 1;
	}
	// type array should be checked here as well.  If type == array and this function is called
	// it means we are dealing with a list of length 1, so we only need to compare one atom anyway.
	else if ((type == jps_decimalArray) || (type == jps_array)) {
		if (a1->a_w.w_float == a2->a_w.w_float)
			return 1;
	}
	else if (type == jps_integerArray) {
		if (a1->a_w.w_long == a2->a_w.w_long)
			return 1;
	}	
	else if (type == jps_generic){		
		// note that if the two are of different types, then they are obviously not the same
		if ((a1->a_type == A_LONG) && (a2->a_type == A_LONG)) {
			if (a1->a_w.w_long == a2->a_w.w_long)
				return 1;
		}
		else if ((a1->a_type == A_FLOAT) && (a2->a_type == A_FLOAT)) {
			if (a1->a_w.w_float == a2->a_w.w_float)
				return 1;
		}
		else if ((a1->a_type == A_SYM) && (a2->a_type == A_SYM)) {
			if (a1->a_w.w_sym == a2->a_w.w_sym)
				return 1;
		}
	}
	else
		error("atom_compare: cannot do comparison on this data type");
	return 0;
}


void jcom_core_file_writeline(t_filehandle *fh, long *the_eof, const char *the_text)
{
	char 	tempstring[4096];
	short	err = 0;
	long	len = 0;
	
	strcpy(tempstring, the_text);
	strcat(tempstring, "\n");
	len = strlen(tempstring);
	err = sysfile_write(*fh, &len, &tempstring);
	if (err) {
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
	
	if (len2 < len1)
		len1 = len2;	// only compare the characters of the short string
		
	for (i=0; i<len1 && keepgoing; i++) {
		if (s1[i] < s2[i]) {
			result = true;
			keepgoing = false;
		}
		else if (s1[i] > s2[i])
			keepgoing = false;
	}
	return result;
}


// Load an external for internal use
// returns true if successful
bool jcom_core_loadextern(t_symbol *objectname, long argc, t_atom *argv, t_object **object)
{
	t_class 	*c = NULL;
	t_object	*p = NULL;

	c = class_findbyname(jps_box, objectname);
	if (!c) {
		p = (t_object *)newinstance(objectname, 0, NULL);
		if (p) {
			c = class_findbyname(jps_box, objectname);
			freeobject(p);
			p = NULL;
		}
		else {
			error("jamoma: could not load extern (%s) within the core", objectname->s_name);
			return false;
		}
	}

	if (*object != NULL) {			// if there was an object set previously, free it first...
		object_free(*object);
		*object = NULL;
	}

	*object = (t_object *)object_new_typed(CLASS_BOX, objectname, argc, argv);
	return true;
}


// Function the translates a Max path+filename combo into a correct absolutepath
// TODO: remove this function once we've completed the transition to Max5, as path_topathname() is fixed for Max5
void jcom_core_getfilepath(short in_path, char *in_filename, char *out_filepath)
{
	char	path[4096];
	
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

