/* 
 * jcom.map
 * External for Jamoma: map input to output: y=f(x)
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"


// Data Structure for this object
typedef struct _map{
	t_object		ob;	
	void			*obex;
	void			*outlet;
	t_symbol		*attr_function;
	FunctionLib		*function;
} t_map;


// Prototypes for methods
void*		map_new(t_symbol *name, long argc, t_atom *argv);
void		map_free(t_map *obj);
void		map_assist(t_map *obj, void *b, long m, long a, char *s);
void		map_int(t_map *obj, long x);
void		map_float(t_map *obj, double x);
void		map_bang(t_map *obj);
t_max_err	map_setFunction(t_map *obj, void *attr, long argc, t_atom *argv);


// Globals
t_class		*map_class;			// Required. Global pointing to this class


/************************************************************************************/
// Main() Function

int main(void)				// main recieves a copy of the Max function macros table
{
	t_class *c;
	
	jamoma_init();

	// Define our class
	c = class_new("jcom.map",(method)map_new, (method)map_free, (short)sizeof(t_map), (method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_map, obex));

	// Make methods accessible for our class: 
	class_addmethod(c, (method)map_int,					"int", A_GIMME, 0L);
	class_addmethod(c, (method)map_float,				"float", A_GIMME, 0L);
	class_addmethod(c, (method)map_bang,				"bang", 0);
    class_addmethod(c, (method)map_assist,				"assist", A_CANT, 0L); 
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout", A_CANT,0);  
    class_addmethod(c, (method)object_obex_quickref,	"quickref", A_CANT, 0);

	// ATTRIBUTE: set the function to use
	class_addattr(c, 
		attr_offset_new("function", _sym_symbol, 0,
		(method)0, (method)map_setFunction, calcoffset(t_map, attr_function)));

	// Finalize our class
	class_register(CLASS_BOX, c);
	map_class = c;
	return 0;
}


/************************************************************************************/
// Object Life

void *map_new(t_symbol *name, long argc, t_atom *argv)
{
	t_map *obj;									// Declare an object (based on our struct)

	obj = (t_map *)object_alloc(map_class);		// Create object, store pointer to it (get 1 inlet free)
	if(obj){
		object_obex_store((void *)obj, _sym_dumpout, (object *)outlet_new(obj,NULL));
	    obj->outlet = outlet_new(obj, 0);
		obj->attr_function = _sym_nothing;
		obj->function = NULL;
		attr_args_process(obj, argc, argv);
		if(!obj->function)
			object_attr_setsym(obj, gensym("function"), gensym("linear"));
	}
	return obj;										// Return pointer to our instance
}


void map_free(t_map *obj)
{
	if(obj->function)
		delete obj->function;
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void map_assist(t_map *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 							// Inlets
		strcpy(dst, "x");
	else if(msg==2){ 					// Outlets
		switch(arg){
			case 0: strcpy(dst, "y=f(x)"); break;
			default: strcpy(dst, "dumpout"); break;
 		}
 	}
}


void map_int(t_map *obj, long x)
{
	map_float(obj, (double)x);
}


void map_float(t_map *obj, double x)
{
	double y;
	
	y = obj->function->mapValue(x);
	outlet_float(obj->outlet, y);
}


void map_bang(t_map *obj)
{
	t_atom		a[2];
	t_symbol	**functionNames = NULL;
	long		numFunctions = 0;
	long		i;
	
	atom_setsym(a+0, gensym("clear"));
	object_obex_dumpout(obj, gensym("menu"), 1, a);
	
	jamoma_getFunctionList(&numFunctions, &functionNames);
	
	for(i=0; i<numFunctions; i++){
		atom_setsym(a+0, gensym("append"));
		atom_setsym(a+1, functionNames[i]);
		object_obex_dumpout(obj, gensym("menu"), 2, a);
	}
}


// ATTRIBUTE: set rampunit
t_max_err map_setFunction(t_map *obj, void *attr, long argc, t_atom *argv)
{
	obj->attr_function = atom_getsym(argv);
	jamoma_getFunction(obj->attr_function, &obj->function);
	return MAX_ERR_NONE;
}

