/* 
 * Jamoma Shared Library: the global jamoma object
 * Functions and resources used by Jamoma objects.
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "JamomaObject.h"


// statics and globals
static t_class		*s_jamoma_class;
static t_object		*s_jamoma_object;


/************************************************************************************/

void jamoma_object_initclass(void)
{
	t_class *c;
	
	// Define our class
	c = class_new(	"jamoma", 
					(method)jamoma_object_new, 
					(method)jamoma_object_free, 
					sizeof(t_jamoma_object), 
					(method)NULL, 
					0L, 0);

	// Make methods accessible for our class: 
	//class_addmethod(c, (method)jamoma_object_snapshot_capture,		"snapshot/capture",		A_GIMME, 0L);
	//class_addmethod(c, (method)jamoma_object_snapshot_recall,			"snapshot/recall",		A_GIMME, 0L);
	//class_addmethod(c, (method)jamoma_object_snapshot_interpolate,	"snapshot/interpolate",	A_GIMME, 0L);

	// Finalize our class
	class_register(CLASS_BOX, c);
	s_jamoma_class = c;
}


t_object* jamoma_object_new()
{
	t_jamoma_object		*obj = (t_jamoma_object *)object_alloc(s_jamoma_class);
	if(obj){
		;
	}
	return (t_object*)obj;
}


void jamoma_object_free(t_jamoma_object *obj)
{
	;
}

