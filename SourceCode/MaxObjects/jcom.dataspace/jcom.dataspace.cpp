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
	long			ac;				// for return values from the dataspace conversion
	t_atom			*av;			//	...
/*	t_symbol		*attr_function;
	double			attr_inputMin;
	double			attr_inputMax;
	double			attr_outputMin;
	double			attr_outputMax;
	double 			a, b;				// Coefficients used for normalizing input
	double			c, d;				// Coefficients used for scaling normalized output
	FunctionLib		*function;
*/
} t_dataspace;


// Prototypes for methods
void*		dataspace_new(t_symbol *name, long argc, t_atom *argv);
void		dataspace_free(t_dataspace *obj);
void		dataspace_assist(t_dataspace *obj, void *b, long m, long a, char *s);
void		dataspace_int(t_dataspace *obj, long x);
void		dataspace_float(t_dataspace *obj, double x);
/*
void		map_bang(t_map *obj);
void		map_getParameter(t_map *x, t_symbol *msg, long argc, t_atom *argv);
void		map_setParameter(t_map *x, t_symbol *msg, long argc, t_atom *argv);
t_max_err	map_setFunction(t_map *obj, void *attr, long argc, t_atom *argv);
t_max_err	map_setInputMin(t_map *obj, void *attr, long argc, t_atom *argv);
t_max_err	map_setInputMax(t_map *obj, void *attr, long argc, t_atom *argv);
void 		map_scaleInput(t_map *obj);
t_max_err	map_setOutputMin(t_map *obj, void *attr, long argc, t_atom *argv);
t_max_err	map_setOutputMax(t_map *obj, void *attr, long argc, t_atom *argv);
void 		map_scaleOutput(t_map *obj);
*/

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
/*
	// ATTRIBUTE: set the function to use
	class_addattr(c, 
		attr_offset_new("function", _sym_symbol, 0,
		(method)0, (method)map_setFunction, calcoffset(t_map, attr_function)));
	// ATTRIBUTE: set the input minimum value
	class_addattr(c,
		attr_offset_new("inputMin", _sym_float64, 0,
		(method)0, (method)map_setInputMin, calcoffset(t_map, attr_inputMin)));
	// ATTRIBUTE: set the input maximum value
	class_addattr(c,
		attr_offset_new("inputMax", _sym_float64, 0,
		(method)0, (method)map_setInputMax, calcoffset(t_map, attr_inputMax)));	
		
	// ATTRIBUTE: set the output minimum value
	class_addattr(c,
		attr_offset_new("outputMin", _sym_float64, 0,
		(method)0, (method)map_setOutputMin, calcoffset(t_map, attr_outputMin)));
	// ATTRIBUTE: set the output maximum value
	class_addattr(c,
		attr_offset_new("outputMax", _sym_float64, 0,
		(method)0, (method)map_setOutputMax, calcoffset(t_map, attr_outputMax)));
*/
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

/*		obj->attr_function = _sym_nothing;
		obj->attr_inputMin = 0;
		obj->attr_inputMax = 1;
		obj->attr_outputMin = 0;
		obj->attr_outputMax = 1;
		obj->function = NULL;
*/

		jamoma_getDataspace(gensym("temperature"), &obj->dataspace);
		attr_args_process(obj, argc, argv);

/*		if(!obj->function)
			object_attr_setsym(obj, gensym("function"), gensym("linear"));
*/
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


// ATTRIBUTE: set rampunit
t_max_err map_setFunction(t_map *obj, void *attr, long argc, t_atom *argv)
{
	obj->attr_function = atom_getsym(argv);
	jamoma_getFunction(obj->attr_function, &obj->function);
	return MAX_ERR_NONE;
}


// ATTRIBUTE: Set input minimum
t_max_err map_setInputMin(t_map *obj, void *attr, long argc, t_atom *argv)
{
	obj->attr_inputMin = atom_getfloat(argv);
	map_scaleInput(obj);
	return MAX_ERR_NONE;

}


// ATTRIBUTE: Set input maximum
t_max_err map_setInputMax(t_map *obj, void *attr, long argc, t_atom *argv)
{
	obj->attr_inputMax = atom_getfloat(argv);
	map_scaleInput(obj);
	return MAX_ERR_NONE;
}


// Recalculate values to use for scaling of input values
void map_scaleInput(t_map *obj)
{
	// Prevent dividing by 0
	if (obj->attr_inputMin == obj->attr_inputMax)
		{
			obj->a = 1;
			post("jcom.map: Same value used for input min and max.");
		}
	else
		obj->a = 1./(obj->attr_inputMax - obj->attr_inputMin);
	obj->b = -1 * obj->a * obj->attr_inputMin;
}


// ATTRIBUTE: Set output minimum
t_max_err map_setOutputMin(t_map *obj, void *attr, long argc, t_atom *argv)
{
	obj->attr_outputMin = atom_getfloat(argv);
	map_scaleOutput(obj);
	return MAX_ERR_NONE;

}


// ATTRIBUTE: Set output maximum
t_max_err map_setOutputMax(t_map *obj, void *attr, long argc, t_atom *argv)
{
	obj->attr_outputMax = atom_getfloat(argv);
	map_scaleOutput(obj);
	return MAX_ERR_NONE;
}


// Recalculate values to use for scaling of output values
void map_scaleOutput(t_map *obj)
{
	obj->c = obj->attr_outputMax - obj->attr_outputMin;
	obj->d = obj->attr_outputMin;
}
*/

