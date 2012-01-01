/** 
 * \file jamoma.h
 * Jamoma Shared Library - Functions and resources used by Jamoma objects.
 *
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __JAMOMA_H__
#define __JAMOMA_H__

#include "TTModularVersion.h"
#ifndef WIN_VERSION
#include <Carbon/Carbon.h>
#endif

#ifdef WIN_VERSION
 #pragma warning(disable:4083) //warning C4083: expected 'newline'; found identifier 's'
#endif // WIN_VERSION

#include "MaxObjectTypes.h"
#include "ext_common.h"
#include "ext_strings.h"			// String Functions
#include "ext_critical.h"
#include "z_dsp.h"
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API

#include <math.h>
#include <stdlib.h>

#include "TTFoundationAPI.h"		// TTBlue Headers...

#include "jcom.core.h"
#include "jcom.list.h"
#include "jcom.io.h"
#include "jcom.sendreceive.h"
#include "JamomaTypes.h"
#include "JamomaSymbols.h"

#include "FunctionLib.h"
#include "RampLib.h"

#define JAMOMA_UNIT_HEIGHT 35.0
#define JAMOMA_UNIT_WIDTH 150.0
#define JAMOMA_MENU_FONT "Arial"
#define JAMOMA_MENU_FONTSIZE 11.0
#define JAMOMA_DEFAULT_FONT "Verdana"
#define JAMOMA_DEFAULT_FONTSIZE 9.0
#define JAMOMA_BUTTON_FONT JAMOMA_DEFAULT_FONT


extern "C" {

	/** Initialize the Jamoma Modular framework. */
	void		jamoma_init(void);
	
	/** Register a Jamoma module and the OSC name of the module. 
	 @param name	The OSC name of the module.
	 @param hub		Pointer to the jcom.hub object of the module.
	 */
	t_max_err	jamoma_hub_register(t_symbol *name, t_object *hub);
	
	/** Remove a hub and it's OSC name from the list of modules.
	 @param name	The OSC name of the module to remove.
	 */
	void		jamoma_hub_remove(t_symbol *name);
	
	/** Get the module associated with OSC name. 
	 @param name	The OSC name of the module we want to address.
	 @return		Pointer to the jcom.hub object of the module.
	 */
	t_object*	jamoma_get_hub_for_module_named(t_symbol *name);
	
	/** Get the OSC names of all Jamoma modules. 
	 @param numModules	The number of modules currently registered. 
	 @param moduleNames	The OSC names of all modules that are currently registered.
	 */
	void		jamoma_get_all_module_names(long *numModules, t_symbol ***moduleNames);
	
	/** Get the patch that the object is part of.
	 @param obj			The object used for the query.
	 @return			Pointer to the patch that the object is part of.
	 */
	t_object*	jamoma_object_getpatcher(t_object *obj);
	
	/** Get information on what the context of the patch is.
	 @param patcher		The patch to inspect.
	 @return			Pointer to one of the symbols "bpatcher", "subpatcher" or "toplevel".
	 */
	t_symbol*	jamoma_patcher_getcontext(t_object *patcher);
	
	/** Get the arguments passed to the patch that the object is part of.
	 This is used e.g. by the hub to determine the initial OSC name of the module.
	 @param patcher		The patch to be inspected.
	 @param argc		The number of arguments passed to the patch.
	 @param argv		The arguments as a vector of atoms. Don't pass memory in for argv.  It will allocate what it needs. Please note that the caller is responsible for freeing the memory.
	 */
	void		jamoma_patcher_getargs(t_object *patcher, long *argc, t_atom **argv);
	
	/** Check to confirm that Jamoma is running in a supported version of Max.
	 @parameter patcher	This doesn't currently seem to be used.
	 @return			If Jamoma is running in an old and unsupported version of Max, a  warning text string is returned, else the string will be empty.
	 */
	t_symbol*	jamoma_patcher_getvarname(t_object *patcher);

	/** When the DSP is started, we make sure the Jamoma Clock and Scheduler are updated if needed. */
	void		jamoma_dsp(t_object *, t_signal **sp, short *count);
	
	/** This is the default attribute creator for Jamoma's core.
	 It ensures that when data is queried, it is not only passed to the parameter dumpout, but also to the feedback outlet of the module.
	 For example:
	 jamoma_class_attr_new(c, "ramp/drive", _sym_symbol, (method)param_setramp, calcoffset(t_param, attr_ramp));
	 TODO: Is the above example call actually consistent with the method declaration?
	 @param c			The object class.
	 @param attrName	The name of the attribute.
	 @param attrType	The type of the attribute (integer, decimal, symbol, etc.).
	 @param setter		The method used to set the value of the attribute.
	 @param getter		The method used to get the value of the attribute.
	 */
	void		jamoma_class_attr_new(t_class *c, const char *attrName, t_symbol *attrType, method setter, method getter);
	
	/** This is the default attribute creator for Jamoma's core if the attribute is to store a list.
	 It ensures that when data is queried, it is not only passed to the parameter dumpout, but also to the feedback outlet of the module.
	 @param c			The object class.
	 @param attrName	The name of the attribute.
	 @param attrType	The type of the attribute (array, generic, etc.).
	 @param list_size	The length of the list to store as an attribute.
	 @param setter		The method used to set the value of the attribute.
	 @param getter		The method used to get the value of the attribute.
	 */
	void		jamoma_class_attr_array_new(t_class *c, const char *attrName, t_symbol *attrType, long list_size, method setter, method getter);
	

	void		jamoma_class_attr_get(t_object *o, t_symbol *attrName, long, t_atom *);

}


#endif //__JAMOMA_H__

