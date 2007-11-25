/* 
 * Jamoma Shared Library
 * Functions and resources used by Jamoma objects.
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"

// statics and globals
static long			initialized = false;
static t_hashtab	*hash_modules = NULL;		// a hashtab of all modules (jcom.hubs) currently instantiated
t_object			*obj_jamoma_time = NULL;	// a shared global instance of the time class

/************************************************************************************/
// Init the framework

void jamoma_init(void)
{
	if(!initialized){
		common_symbols_init();
		jcom_core_init();
		jamoma_time_initclass();
	
		obj_jamoma_time = (t_object*)object_new_typed(CLASS_NOBOX, gensym("jamoma_time"), 0, NULL);
		hash_modules = (t_hashtab*)hashtab_new(0);
		initialized = true;
	}
}


void jamoma_hub_register(t_symbol *name, t_object *hub)
{
	hashtab_store(hash_modules, name, hub);
}


void jamoma_hub_remove(t_symbol *name)
{
	hashtab_chuckkey(hash_modules, name);
}


t_object* jamoma_get_hub_for_module_named(t_symbol *name)
{
	t_object *hub = NULL;
	
	hashtab_lookup(hash_modules, name, &hub);
	return hub;
}


void jamoma_get_all_module_names(long *numModules, t_symbol ***moduleNames)
{
	hashtab_getkeys(hash_modules, numModules, moduleNames);
}

