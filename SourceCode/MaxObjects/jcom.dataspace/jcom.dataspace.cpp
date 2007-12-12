/* 
 * jcom.dataspace
 * External for Jamoma: map input to output: y=f(x)
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"


// Data Structure for this object
typedef struct _dataspace{
	t_object		ob;	
	void			*obex;
	void			*outlet_active;
	void			*outlet_native;
	DataspaceLib	*dataspace;
	long			ac;						// for return values from the dataspace conversion
	t_atom			*av;					//	...
	t_symbol		*attr_dataspace;		// name of the dataspace -- e.g. "temperature"
	t_symbol		*attr_dataspace_active;	// name of the current unit within the dataspace -- e.g. "celsius"
	t_symbol		*attr_dataspace_native;	// name of the desired native unit within the dataspace -- e.g. "celsius"
} t_dataspace;


// Prototypes for methods
void*		dataspace_new(t_symbol *name, long argc, t_atom *argv);
void		dataspace_free(t_dataspace *obj);
void		dataspace_assist(t_dataspace *obj, void *b, long m, long a, char *s);
void		dataspace_int(t_dataspace *obj, long x);
void		dataspace_float(t_dataspace *obj, double x);
t_max_err	dataspace_setDataspace(t_dataspace *obj, void *attr, long argc, t_atom *argv);
t_max_err	dataspace_setDataspaceActive(t_dataspace *obj, void *attr, long argc, t_atom *argv);
t_max_err	dataspace_setDataspaceNative(t_dataspace *obj, void *attr, long argc, t_atom *argv);


// Globals
t_class		*dataspace_class;


/************************************************************************************/
// Main() Function

int main(void)
{
	t_class *c;
	
	jamoma_init();

	// Define our class
	c = class_new("jcom.dataspace",(method)dataspace_new, (method)dataspace_free, (short)sizeof(t_dataspace), (method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_dataspace, obex));

	// Make methods accessible for our class: 

	class_addmethod(c, (method)dataspace_int,			"int",			A_GIMME, 0L);
	class_addmethod(c, (method)dataspace_float,			"float",		A_GIMME, 0L);

	/*
	class_addmethod(c, (method)map_bang,				"bang", 0);
 	class_addmethod(c, (method)map_getParameter,		"getParameter", A_GIMME, 0);
 	class_addmethod(c, (method)map_setParameter,		"setParameter", A_GIMME, 0);
	*/
	class_addmethod(c, (method)dataspace_assist,		"assist",		A_CANT, 0L); 
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout",		A_CANT,0);  
    class_addmethod(c, (method)object_obex_quickref,	"quickref",		A_CANT, 0);

	class_addattr(c, 
		attr_offset_new("dataspace", _sym_symbol, 0,
		(method)0, (method)dataspace_setDataspace, calcoffset(t_dataspace, attr_dataspace)));
	class_addattr(c, 
		attr_offset_new("dataspace.active", _sym_symbol, 0,
		(method)0, (method)dataspace_setDataspaceActive, calcoffset(t_dataspace, attr_dataspace_active)));
	class_addattr(c, 
		attr_offset_new("dataspace.native", _sym_symbol, 0,
		(method)0, (method)dataspace_setDataspaceNative, calcoffset(t_dataspace, attr_dataspace_native)));

	// Finalize our class
	class_register(CLASS_BOX, c);
	dataspace_class = c;
	return 0;
}


/************************************************************************************/
// Object Life

void *dataspace_new(t_symbol *name, long argc, t_atom *argv)
{
	t_dataspace *obj;									// Declare an object (based on our struct)

	obj = (t_dataspace *)object_alloc(dataspace_class);		// Create object, store pointer to it (get 1 inlet free)
	if(obj){
		object_obex_store((void *)obj, _sym_dumpout, (object *)outlet_new(obj,NULL));
	    obj->outlet_native = outlet_new(obj, 0);
	    obj->outlet_active = outlet_new(obj, 0);
		obj->dataspace = NULL;
		obj->attr_dataspace_active = _sym_nothing;
		obj->attr_dataspace_native = _sym_nothing;

		attr_args_process(obj, argc, argv);
		if(!obj->dataspace)
			object_attr_setsym(obj, gensym("dataspace"), gensym("temperature"));

		obj->av = (t_atom*)sysmem_newptr(sizeof(t_atom));	// just allocating one for now -- no list support
	}
	return obj;										// Return pointer to our instance
}


void dataspace_free(t_dataspace *obj)
{
	sysmem_freeptr(obj->av);
	if(obj->dataspace)
		delete obj->dataspace;
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void dataspace_assist(t_dataspace *x, void *b, long msg, long arg, char *dst)
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


void dataspace_int(t_dataspace *obj, long x)
{
	dataspace_float(obj, (double)x);
}


void dataspace_float(t_dataspace *obj, double x)
{
	t_atom	a[1];
	
	atom_setfloat(a, x);
	obj->dataspace->convert(1, a, &obj->ac, &obj->av);
	outlet_anything(obj->outlet_native, _sym_float, obj->ac, obj->av);
	outlet_float(obj->outlet_active, x);
}


/*
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


void map_getParameter(t_map *obj, t_symbol *msg, long argc, t_atom *argv)
{
	t_symbol	*parameterName;
	t_atom		*a;
	long		ac = 0;
	t_atom		*av = NULL;
	
	if(!argc){
		error("jcom.map: not enough arguments to getParameter");
		return;
	}
	
	parameterName = atom_getsym(argv);
	obj->function->getParameter(parameterName, &ac, &av);
	if(ac) {
		//atom_setsym(a+0, parameterName);
		//atom_setfloat(a+1, av);
		a = (t_atom *)sysmem_newptr(sizeof(t_atom)*(ac+1));
		// Forst list item is name of parameter
		atom_setsym(a, parameterName);
		// Next the whole shebang is copied
		sysmem_copyptr(av, a+1, sizeof(t_atom)*ac);
		object_obex_dumpout(obj, gensym("getParameter"), ac+1, av);
	
		// The pointer to an atom assign in the getParameter method needs to be freed.
		sysmem_freeptr(av);
		sysmem_freeptr(a);
	}
}


void map_setParameter(t_map *obj, t_symbol *msg, long argc, t_atom *argv)
{
	//double		value = 0.0;
	t_symbol	*parameterName;
	
	if(argc < 2){
		error("jcom.map: not enough arguments to setParameter");
		return;
	}
	
	parameterName = atom_getsym(argv);
	obj->function->setParameter(parameterName, argc-1, argv+1);
}

*/

// ATTRIBUTE:
t_max_err dataspace_setDataspace(t_dataspace *obj, void *attr, long argc, t_atom *argv)
{
	obj->attr_dataspace = atom_getsym(argv);
	jamoma_getDataspace(obj->attr_dataspace, &obj->dataspace);
	obj->attr_dataspace_active = obj->dataspace->nativeUnit;
	obj->attr_dataspace_native = obj->dataspace->nativeUnit;
	return MAX_ERR_NONE;
}


// ATTRIBUTE:
t_max_err dataspace_setDataspaceActive(t_dataspace *obj, void *attr, long argc, t_atom *argv)
{
	obj->attr_dataspace_active = atom_getsym(argv);
	obj->dataspace->setInputUnit(obj->attr_dataspace_active);
	return MAX_ERR_NONE;
}


// ATTRIBUTE:
t_max_err dataspace_setDataspaceNative(t_dataspace *obj, void *attr, long argc, t_atom *argv)
{
	obj->attr_dataspace_native = atom_getsym(argv);
	obj->dataspace->setOutputUnit(obj->attr_dataspace_native);
	return MAX_ERR_NONE;
}






