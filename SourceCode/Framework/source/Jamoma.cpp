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
static long		initialized = false;
t_object		*obj_jamoma_time = NULL;	// a shared global instance of the time class


/************************************************************************************/
// Init the framework

void jamoma_init(void)
{
	if(!initialized){
		common_symbols_init();
		jcom_core_init();
		jamoma_time_initclass();
	
		obj_jamoma_time = (t_object*)object_new_typed(CLASS_NOBOX, gensym("jamoma_time"), 0, NULL);
		initialized = true;
	}
}

