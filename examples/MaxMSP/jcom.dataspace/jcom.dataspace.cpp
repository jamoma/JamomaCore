/* 
 * jcom.dataspace
 * External for Jamoma: map input to output: y=f(x)
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTClassWrapperMax.h"
#include "DataspaceLib.h"


// Data Structure for this object
typedef struct _dataspace{
	t_object		ob;
	void			*outlet_native;
	DataspaceLib	*dataspace;
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
void		dataspace_list(t_dataspace *obj, t_symbol *msg, long argc, t_atom *argv);
void		dataspace_getDataspaces(t_dataspace *obj);
void		dataspace_getUnits(t_dataspace *obj);
t_max_err	dataspace_setDataspace(t_dataspace *obj, void *attr, long argc, t_atom *argv);
t_max_err	dataspace_setDataspaceActive(t_dataspace *obj, void *attr, long argc, t_atom *argv);
t_max_err	dataspace_setDataspaceNative(t_dataspace *obj, void *attr, long argc, t_atom *argv);


// Globals
t_class		*dataspace_class;


/************************************************************************************/
// Main() Function

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	t_class *c;
	
	TTFoundationInit();
	common_symbols_init();

	// Define our class
	c = class_new("jcom.dataspace",(method)dataspace_new, (method)dataspace_free, sizeof(t_dataspace), (method)0L, A_GIMME, 0);

	// Make methods accessible for our class:
	class_addmethod(c, (method)dataspace_int,			"int",				A_GIMME, 0);
	class_addmethod(c, (method)dataspace_float,			"float",			A_GIMME, 0);
	class_addmethod(c, (method)dataspace_list,			"list",				A_GIMME, 0);
	class_addmethod(c, (method)dataspace_getDataspaces,	"dataspaces.get",	0);
 	class_addmethod(c, (method)dataspace_getUnits,		"units.get",		A_GIMME, 0);
	class_addmethod(c, (method)dataspace_assist,		"assist",			A_CANT, 0); 
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout",			A_CANT, 0);

	class_addattr(c, 
		attr_offset_new("dataspace", _sym_symbol, 0,
		(method)0, (method)dataspace_setDataspace, calcoffset(t_dataspace, attr_dataspace)));

	CLASS_ATTR_SYM(c,		"input",	0,		t_dataspace,	attr_dataspace_active);
	CLASS_ATTR_ACCESSORS(c,	"input",	NULL,	dataspace_setDataspaceActive);
	
	CLASS_ATTR_SYM(c,		"output",	0,		t_dataspace,	attr_dataspace_native);
	CLASS_ATTR_ACCESSORS(c,	"output",	NULL,	dataspace_setDataspaceNative);
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	dataspace_class = c;
	return 0;
}


/************************************************************************************/
// Object Life

void *dataspace_new(t_symbol *name, long argc, t_atom *argv)
{
	t_dataspace *obj;											// Declare an object (based on our struct)

	obj = (t_dataspace *)object_alloc(dataspace_class);			// Create object, store pointer to it (get 1 inlet free)
	if(obj){
		object_obex_store((void *)obj, _sym_dumpout, (object *)outlet_new(obj,NULL));
	    obj->outlet_native = outlet_new(obj, 0);
		obj->dataspace = NULL;
		obj->attr_dataspace_active = _sym_nothing;
		obj->attr_dataspace_native = _sym_nothing;

		attr_args_process(obj, argc, argv);
		if(!obj->dataspace)
			object_attr_setsym(obj, gensym("dataspace"), gensym("temperature"));
	}
	return obj;													// Return pointer to our instance
}


void dataspace_free(t_dataspace *obj)
{
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
	TTValue input(x);
	TTValue output;
	Atom	a[1];	
	
	obj->dataspace->convert(input, output);
	atom_setfloat(a, TTFloat64(output));
	outlet_anything(obj->outlet_native, _sym_float, 1, a);
}


void dataspace_list(t_dataspace *obj, t_symbol *msg, long argc, t_atom *argv)
{
	TTValue		input;
	TTValue		output;
	AtomCount	ac = 0;
	AtomPtr		av = NULL;
	
	TTValueFromAtoms(input, argc, argv);
	obj->dataspace->convert(input, output);
	TTAtomsFromValue(output, &ac, &av);
	if (ac && av) {
		outlet_anything(obj->outlet_native, _sym_list, ac, av);
		sysmem_freeptr(av);
	}
}
	

void dataspace_getDataspaces(t_dataspace *obj)
{
	t_atom		a[2];
	long		numDataspaces = 0;
	long		i;
	TTValue		v;
	TTSymbolPtr	name;
	
	atom_setsym(a+0, gensym("clear"));
	object_obex_dumpout(obj, gensym("DataspacesMenu"), 1, a);
	
	DataspaceLib::getNames(v);
	numDataspaces = v.getSize();	
	for(i=0; i<numDataspaces; i++){
		v.get(i, &name);
		atom_setsym(a+0, gensym("append"));
		atom_setsym(a+1, gensym((char*)name->getCString()));
		object_obex_dumpout(obj, gensym("DataspacesMenu"), 2, a);
	}
}


void dataspace_getUnits(t_dataspace *obj)
{
	t_atom		a[2];
	long		numUnits = 0;
	long		i;
	TTValue		v;
	TTSymbolPtr	name;
	
	atom_setsym(a+0, gensym("clear"));
	object_obex_dumpout(obj, gensym("UnitMenu"), 1, a);
	
	obj->dataspace->getAvailableUnits(v);
	numUnits = v.getSize();
	for(i=0; i<numUnits; i++){
		v.get(i, &name);
		atom_setsym(a+0, gensym("append"));
		atom_setsym(a+1, gensym((char*)name->getCString()));
		object_obex_dumpout(obj, gensym("UnitMenu"), 2, a);
	}
}


// ATTRIBUTE:
t_max_err dataspace_setDataspace(t_dataspace *obj, void *attr, long argc, t_atom *argv)
{
	obj->attr_dataspace = atom_getsym(argv);
	DataspaceLib::instantiate(TT(obj->attr_dataspace->s_name), &obj->dataspace);
	obj->attr_dataspace_active = gensym((char*)obj->dataspace->neutralUnit->getCString());
	obj->attr_dataspace_native = gensym((char*)obj->dataspace->neutralUnit->getCString());
	return MAX_ERR_NONE;
}


// ATTRIBUTE:
t_max_err dataspace_setDataspaceActive(t_dataspace *obj, void *attr, long argc, t_atom *argv)
{
	obj->attr_dataspace_active = atom_getsym(argv);
	obj->dataspace->setInputUnit(TT(obj->attr_dataspace_active->s_name));
	return MAX_ERR_NONE;
}


// ATTRIBUTE:
t_max_err dataspace_setDataspaceNative(t_dataspace *obj, void *attr, long argc, t_atom *argv)
{
	obj->attr_dataspace_native = atom_getsym(argv);
	obj->dataspace->setOutputUnit(TT(obj->attr_dataspace_native->s_name));
	return MAX_ERR_NONE;
}

