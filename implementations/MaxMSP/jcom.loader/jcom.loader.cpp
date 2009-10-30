/* 
 * jcom.loader
 * External for Jamoma: simply used to load the framework when Max is launched
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"


// Data Structure for this object
typedef struct _loader{
	t_object		ob;	
} t_loader;


// Prototypes for methods
void*		loader_new(t_symbol *name, long argc, t_atom *argv);


// Globals
t_class		*loader_class;


/************************************************************************************/
// Main() Function

int JAMOMA_EXPORT_MAXOBJ main(void)
{
	t_class *c;
	
	jamoma_init();
	common_symbols_init();

	// Define our class
	c = class_new("jcom.loader",(method)loader_new, (method)NULL, sizeof(t_loader), (method)NULL, A_GIMME, 0);

	// Finalize our class
	class_register(CLASS_BOX, c);
	loader_class = c;
	return 0;
}


/************************************************************************************/
// Object Life

void *loader_new(t_symbol *name, long argc, t_atom *argv)
{
	t_loader *obj;

	obj = (t_loader*)object_alloc(loader_class);
	return obj;
}

