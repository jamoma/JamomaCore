/* 
 * Jamoma Shared Library
 * Functions and resources used by Jamoma objects.
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
	
	/** Get the OSC names of all Jamoma modules. */
	void		jamoma_get_all_module_names(long *numModules, t_symbol ***moduleNames);
	
	
	t_object*	jamoma_object_getpatcher(t_object *obj);
	t_symbol*	jamoma_patcher_getcontext(t_object *patcher);
	void		jamoma_patcher_getargs(t_object *patcher, long *argc, t_atom **argv);
	t_symbol*	jamoma_patcher_getvarname(t_object *patcher);

	void		jamoma_dsp(t_object *, t_signal **sp, short *count);

	void		jamoma_class_attr_new(t_class *c, const char *attrName, t_symbol *attrType, method setter, method getter);
	void		jamoma_class_attr_array_new(t_class *c, const char *attrName, t_symbol *attrType, long list_size, method setter, method getter);
	void		jamoma_class_attr_get(t_object *o, t_symbol *attrName, long, t_atom *);

}


#endif //__JAMOMA_H__

