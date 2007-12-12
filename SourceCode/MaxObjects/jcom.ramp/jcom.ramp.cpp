/* 
 * jcom.ramp
 * External for Jamoma: ramp values using Jamoma's RampLib library
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"

enum outlets{
	k_outlet_value = 0,
	k_outlet_dumpout,
	num_outlets
};


typedef struct _ramp{
	t_object	 ob;
	void		*obex;
	void		*outlets[num_outlets];
	t_symbol	*attr_rampunit;			///< name of the current rampunit
	rampunit	*my_ramp;				///< instance of the current rampunit
} t_ramp;


// Prototypes
void*		ramp_new(t_symbol *s, long argc, t_atom *argv);
void		ramp_free(t_ramp *x);
void		ramp_assist(t_ramp *x, void *b, long msg, long arg, char *dst);
t_max_err 	ramp_setrampunit(t_ramp *x, void *attr, long argc, t_atom *argv);
void		ramp_setFunction(t_ramp *x, t_symbol *functionName);
void		ramp_getFunction(t_ramp *x);
void		ramp_getFunctionParameter(t_ramp *obj, t_symbol *msg, long argc, t_atom *argv);
void		ramp_setFunctionParameter(t_ramp *obj, t_symbol *msg, long argc, t_atom *argv);
void		ramp_int(t_ramp *x, long n);
void		ramp_float(t_ramp *x, double f);
void		ramp_set(t_ramp *x, t_symbol *msg, long argc, t_atom *argv);
void		ramp_list(t_ramp *x, t_symbol *msg, long argc, t_atom *argv);
void		ramp_callback(void *v, short numvalues, double *values);
void 		ramp_attrset(t_ramp *x, t_symbol *msg, long argc, t_atom *argv);
void 		ramp_attrget(t_ramp *x, t_symbol *msg, long argc, t_atom *argv);


// Globals
t_class		*ramp_class;				// Required: Global pointer for our class


/************************************************************************************/
// Class Definition

int main(void)				// main recieves a copy of the Max function macros table
{
	t_class *c;
	
	jamoma_init();

	// Define our class
	c = class_new("jcom.ramp",(method)ramp_new, (method)ramp_free, (short)sizeof(t_ramp), (method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_ramp, obex));
	
	// Make methods accessible for our class:
	class_addmethod(c, (method)ramp_int,					"int",					A_DEFLONG,	0);
	class_addmethod(c, (method)ramp_float,					"float",				A_DEFFLOAT,	0);
 	class_addmethod(c, (method)ramp_list,					"list",					A_GIMME,	0);
	class_addmethod(c, (method)ramp_set,					"set",					A_GIMME,	0);
	class_addmethod(c, (method)ramp_attrset,				"attrset",				A_GIMME, 	0);
	class_addmethod(c, (method)ramp_attrget,				"attrget",				A_GIMME,	0);
	class_addmethod(c, (method)ramp_setFunction,			"setFunction",			A_SYM,		0);
	class_addmethod(c, (method)ramp_getFunctionParameter,	"getFunctionParameter",	A_GIMME,	0);
	class_addmethod(c, (method)ramp_setFunctionParameter,	"setFunctionParameter",	A_GIMME,	0);
	class_addmethod(c, (method)ramp_assist,					"assist",				A_CANT,		0); 
    class_addmethod(c, (method)object_obex_dumpout,			"dumpout",				A_CANT,		0);  
    class_addmethod(c, (method)object_obex_quickref,		"quickref",				A_CANT,		0);

	// ATTRIBUTE: rampunit
	class_addattr(c, 
		attr_offset_new("rampunit", _sym_symbol, 0,
		(method)0, (method)ramp_setrampunit, calcoffset(t_ramp, attr_rampunit)));

	// Finalize our class
	class_register(CLASS_BOX, c);
	ramp_class = c;
	
	return 0;
}


/************************************************************************************/
// Object Life

void *ramp_new(t_symbol *s, long argc, t_atom *argv)
{
	t_ramp	*x = (t_ramp *)object_alloc(ramp_class);
	t_atom	a;

	if(x){
		x->outlets[k_outlet_dumpout] = outlet_new(x, 0L);
		x->outlets[k_outlet_value]   = outlet_new(x, 0L);
		object_obex_store((void *)x, _sym_dumpout, (t_object *)x->outlets[k_outlet_dumpout]);

		x->my_ramp = NULL;
		x->attr_rampunit = _sym_nothing;		
		attr_args_process(x, argc, argv);	// handle attribute args

		if(x->attr_rampunit == _sym_nothing){
			atom_setsym(&a, gensym("scheduler"));
			object_attr_setvalueof(x, gensym("rampunit"), 1, &a);
		}
	}
	return (x);		// return the pointer to our new instantiation
}


void ramp_free(t_ramp *x)
{
	delete x->my_ramp;
	x->my_ramp = NULL;
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void ramp_assist(t_ramp *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 						// Inlet
		strcpy(dst, "input");
	else{							// Outlets
		switch(arg){
			case k_outlet_value:
					strcpy(dst, "ramping value");
					break;
			case k_outlet_dumpout:
					strcpy(dst, "dumpout");
					break;
		}
 	}		
}


void ramp_setFunction(t_ramp *x, t_symbol *functionName)
{
	x->my_ramp->setFunction(functionName);
}


void ramp_getFunctionParameter(t_ramp *obj, t_symbol *msg, long argc, t_atom *argv)
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
	//obj->function->getParameter(parameterName, &ac, &av);
	obj->my_ramp->getFunctionParameter(parameterName, &ac, &av);
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


void ramp_setFunctionParameter(t_ramp *obj, t_symbol *msg, long argc, t_atom *argv)
{
	//double		value = 0.0;
	t_symbol	*parameterName;
	
	if(argc < 2){
		error("jcom.map: not enough arguments to setParameter");
		return;
	}
	
	parameterName = atom_getsym(argv);
	//obj->function->setParameter(parameterName, argc-1, argv+1);
	obj->my_ramp->setFunctionParameter(parameterName, argc-1, argv+1);
}



// ATTRIBUTE: set rampunit
t_max_err ramp_setrampunit(t_ramp *x, void *attr, long argc, t_atom *argv)
{
	x->attr_rampunit = atom_getsym(argv);
	
	if(x->my_ramp)
		delete x->my_ramp;
	x->my_ramp = new rampunit(x->attr_rampunit->s_name, ramp_callback, (void *)x);		// create ramp unit
	
	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// Triggered by our Ramp Unit's tick function
void ramp_callback(void *v, short numvalues, double *values)
{	
	t_ramp	*x = (t_ramp *)v;
	t_atom	*a = (t_atom *)malloc(numvalues * sizeof(t_atom));
	short	i;
	
	for(i=0; i<numvalues; i++)
		atom_setfloat(a+i, values[i]);
		
	if(numvalues == 1)
		outlet_float(x->outlets[k_outlet_value], values[0]);
	else
		outlet_anything(x->outlets[k_outlet_value], _sym_list, numvalues, a);
		
	free(a);
}


// INT INPUT
void ramp_int(t_ramp *x, long value)
{
	double dval = value;
	
	x->my_ramp->set(1, &dval);
	outlet_float(x->outlets[k_outlet_value], value);
}


// FLOAT INPUT
void ramp_float(t_ramp *x, double value)
{
	x->my_ramp->set(1, &value);
	outlet_float(x->outlets[k_outlet_value], value);
}


// SET FLOAT INPUT
void ramp_set(t_ramp *x, t_symbol *msg, long argc, t_atom *argv)
{
	double	*values;
	short	i;
	
	values = (double *)malloc(argc * sizeof(double));

	for(i=0; i<argc; i++)
		values[i] = atom_getfloat(argv+i);

	x->my_ramp->set(argc, values);
	free(values);
}


// LIST INPUT <value, ramptime>
void ramp_list(t_ramp *x, t_symbol *msg, long argc, t_atom *argv)
{
	short 	i;
	short	ramp_keyword_index = -1;
	double	*values;
	
	if(argc < 3){
		error("invalid syntax -- not enough args to ramp");
		return;
	}

	values = (double *)malloc((argc-2) * sizeof(double));
	
	for(i=0; i<argc; i++){
		if(argv[i].a_type == A_SYM){
			if(atom_getsym(argv+i) == gensym("ramp")){
				ramp_keyword_index = i;
				break;
			}
		}
		values[i] = atom_getfloat(argv+i);
	}
	
	if(argc != (ramp_keyword_index + 2)){
		error("invalid syntax -- missing 'ramp' keyword or wrong args following the 'ramp' keyword");
		return;
	}
	
	x->my_ramp->go(argc-2, values, atom_getfloat(argv+ramp_keyword_index+1));
	free(values);
}


// RAMP UNIT ATTRIBUTES
void ramp_attrset(t_ramp *x, t_symbol *msg, long argc, t_atom *argv)
{
	short 	err = 0;
	
	if(argc != 2){
		error("jcom.ramp::attrset -- bad arguments");
		return;
	}
	err = x->my_ramp->attrset(atom_getsym(argv), atom_getfloat(argv+1));
}


void ramp_attrget(t_ramp *x, t_symbol *msg, long argc, t_atom *argv)
{
	short 	err = 0;
	
	if(argc != 1){
		error("jcom.ramp::attrset -- bad arguments");
		return;
	}

	double value;
	
	err = x->my_ramp->attrget(atom_getsym(argv), &value);
	if(!err)
		outlet_float(x->outlets[k_outlet_dumpout], value);
}


