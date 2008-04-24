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


/** The Ramp. jcom.ramp can be considered an extended object comapred to of a line object.
  * It use the RampLib to drive values in different ways, as well as the Function Lib to
  * do the ramp to new values according to an extendable set of functions.  */
typedef struct _ramp{
	t_object	 ob;					///< Data Structure for this object
	void		*obex;					///< REQUIRED: Our object
	void		*outlets[num_outlets];	///< Outlet array
	t_symbol	*attr_rampunit;			///< Name of the current rampunit
	RampUnit	*rampUnit;				///< Instance of the current rampunit
} t_ramp;


// Prototypes

/** The jcom.ramp constructor */
void*		ramp_new(t_symbol *s, long argc, t_atom *argv);

/** The ramp deconstructor, free's any memory used by the object */
void		ramp_free(t_ramp *x);

/** Method for Assistance Messages */
void		ramp_assist(t_ramp *x, void *b, long msg, long arg, char *dst);

/** Set what mechanism (RampUnit) is used to drive the ramp. */
t_max_err 	ramp_setrampunit(t_ramp *x, void *attr, long argc, t_atom *argv);

/** Set the function to use when ramping. */
void		ramp_setFunction(t_ramp *x, t_symbol *functionName);

/** Get the function currently used when ramping. */
void		ramp_getFunction(t_ramp *x);

/** Get value of an additional parameter used for the function. */
void		ramp_getFunctionParameter(t_ramp *obj, t_symbol *msg, long argc, t_atom *argv);

/** Set additional parameters for the function currently used. */
void		ramp_setFunctionParameter(t_ramp *obj, t_symbol *msg, long argc, t_atom *argv);

/** Connect to a setclock object. */
void		ramp_clock(t_ramp *x, t_symbol *clockName);

/** Get a new value now. */
void		ramp_bang(t_ramp *x);

/* Method for int input, instantly updates current value of the object. */
void		ramp_int(t_ramp *x, long n);

/* Method for float input, instantly updates current value of the object. */ 
void		ramp_float(t_ramp *x, double f);

/* Set current value while surpressing new value(s from being output. */
void		ramp_set(t_ramp *x, t_symbol *msg, long argc, t_atom *argv);

/* Method for list input <value(s), "ramp", ramptime> */
void		ramp_list(t_ramp *x, t_symbol *msg, long argc, t_atom *argv);

/** Triggered by our Ramp Unit's tick function */
void		ramp_callback(void *v, short numvalues, double *values);

/** Set attribute value. */
void 		ramp_attrset(t_ramp *x, t_symbol *msg, long argc, t_atom *argv);

/** Get attribute value. */
void 		ramp_attrget(t_ramp *x, t_symbol *msg, long argc, t_atom *argv);


// Globals
t_class		*ramp_class;				// Required: Global pointer for our class


/************************************************************************************/
// Class Definition

int main(void)				// main receives a copy of the Max function macros table
{
	t_class *c;
	
	jamoma_init();

	// Define our class
	c = class_new("jcom.ramp",(method)ramp_new, (method)ramp_free, (short)sizeof(t_ramp), (method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_ramp, obex));
	
	// Make methods accessible for our class:
	class_addmethod(c, (method)ramp_bang,					"bang",					0);
	class_addmethod(c, (method)ramp_int,					"int",					A_DEFLONG,	0);
	class_addmethod(c, (method)ramp_float,					"float",				A_DEFFLOAT,	0);
 	class_addmethod(c, (method)ramp_list,					"list",					A_GIMME,	0);
	class_addmethod(c, (method)ramp_set,					"set",					A_GIMME,	0);
	class_addmethod(c, (method)ramp_attrset,				"attrset",				A_GIMME, 	0);
	class_addmethod(c, (method)ramp_attrget,				"attrget",				A_GIMME,	0);
	class_addmethod(c, (method)ramp_setFunction,			"function",				A_SYM,		0);
	class_addmethod(c, (method)ramp_getFunctionParameter,	"function.parameter.get",	A_GIMME,	0);
	class_addmethod(c, (method)ramp_setFunctionParameter,	"function.parameter",	A_GIMME,	0);
	class_addmethod(c, (method)ramp_clock,					"clock",				A_SYM,		0);
	class_addmethod(c, (method)ramp_assist,					"assist",				A_CANT,		0); 
    class_addmethod(c, (method)object_obex_dumpout,			"dumpout",				A_CANT,		0);  
    class_addmethod(c, (method)object_obex_quickref,		"quickref",				A_CANT,		0);

	// ATTRIBUTE: rampunit
	class_addattr(c, 
		attr_offset_new("drive", _sym_symbol, 0,
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

		x->rampUnit = NULL;
		x->attr_rampunit = _sym_nothing;		
		attr_args_process(x, argc, argv);	// handle attribute args

		if(x->attr_rampunit == _sym_nothing){
			atom_setsym(&a, gensym("scheduler"));
			object_attr_setvalueof(x, gensym("drive"), 1, &a);
		}
	}
	return (x);		// return the pointer to our new instantiation
}


void ramp_free(t_ramp *x)
{
	delete x->rampUnit;
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
	x->rampUnit->setAttributeValue(TT("function"), TT(functionName->s_name));  
}


void ramp_getFunctionParameter(t_ramp *obj, t_symbol *msg, long argc, t_atom *argv)
{
	t_atom		*a;
	TTSymbol	parameterName;
	TTValue		parameterValue;
	int			numValues;
	int			i;
	TTSymbol	tempSymbol;
	double		tempValue;
	
	if(!argc){
		error("jcom.ramp: not enough arguments to function.parameter.get");
		return;
	}
	
	parameterName = atom_getsym(argv)->s_name;
	obj->rampUnit->getFunctionParameterValue(parameterName, parameterValue);
	numValues = parameterValue.getNumValues();
	if(numValues){
		a = (t_atom *)sysmem_newptr(sizeof(t_atom) * (numValues+1));
		// First list item is name of parameter
		atom_setsym(a, gensym(parameterName));
		// Next the whole shebang is copied
		for(i=0; i<numValues; i++){
			if(parameterValue.getType(i) == kTypeSymbol){
				parameterValue.get(i, tempSymbol);
				atom_setsym(a+i+1, gensym(tempSymbol));
			}
			else{
				parameterValue.get(i, tempValue);
				atom_setfloat(a+i+1, tempValue);
			}
		}
		object_obex_dumpout(obj, gensym("function.parameter.get"), numValues+1, a);
	
		// The pointer to an atom assign in the getParameter method needs to be freed.
		sysmem_freeptr(a);
	}
}


void ramp_setFunctionParameter(t_ramp *obj, t_symbol *msg, long argc, t_atom *argv)
{
	TTSymbol	parameterName;
	TTValue		newValue;
	int			i;
	
	if(argc < 2){
		error("jcom.map: not enough arguments to setParameter");
		return;
	}
	
	parameterName = atom_getsym(argv)->s_name;
	for(i=1; i<=(argc-1); i++){
		if(argv[i].a_type == A_SYM)
			newValue.append(TT(atom_getsym(argv+1)->s_name));
		else
			newValue.append(atom_getfloat(argv+i));
	}
	obj->rampUnit->setFunctionParameterValue(parameterName, newValue);
}



// ATTRIBUTE: set rampunit
t_max_err ramp_setrampunit(t_ramp *x, void *attr, long argc, t_atom *argv)
{
	x->attr_rampunit = atom_getsym(argv);
	RampLib::createUnit(TT(x->attr_rampunit->s_name), &x->rampUnit, ramp_callback, (void *)x);
	return MAX_ERR_NONE;
}


void ramp_clock(t_ramp *x, t_symbol *clockName)
{
	x->rampUnit->setAttributeValue(TT("clock"), TT(clockName->s_name));
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


// BANG -- fire an output -- useful for the async unit
void ramp_bang(t_ramp *x)
{
	x->rampUnit->tick();
}


// INT INPUT
void ramp_int(t_ramp *x, long value)
{
	double dval = value;
	
	x->rampUnit->set(1, &dval);
	outlet_float(x->outlets[k_outlet_value], value);
}


// FLOAT INPUT
void ramp_float(t_ramp *x, double value)
{
	x->rampUnit->set(1, &value);
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

	x->rampUnit->set(argc, values);
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
	
	x->rampUnit->go(argc-2, values, atom_getfloat(argv+ramp_keyword_index+1));
	free(values);
}


// RAMP UNIT ATTRIBUTES
void ramp_attrset(t_ramp *x, t_symbol *msg, long argc, t_atom *argv)
{
	TTSymbol	parameterName;
	TTValue		newValue;
	int			i;
	
	if(argc < 2){
		error("jcom.ramp: not enough arguments to setParameter");
		return;
	}
	
	parameterName = atom_getsym(argv)->s_name;
	for(i=1; i<=(argc-1); i++){
		if(argv[i].a_type == A_SYM)
			newValue.append(TT(atom_getsym(argv+1)->s_name));
		else
			newValue.append(atom_getfloat(argv+i));
	}
	x->rampUnit->setAttributeValue(parameterName, newValue);
}


void ramp_attrget(t_ramp *x, t_symbol *msg, long argc, t_atom *argv)
{
	t_atom		*a;
	TTSymbol	parameterName;
	TTValue		parameterValue;
	int			numValues;
	int			i;
	TTSymbol	tempSymbol;
	double		tempValue;
	
	if(!argc){
		error("jcom.ramp: not enough arguments to parameter.get");
		return;
	}
	
	parameterName = atom_getsym(argv)->s_name;
	x->rampUnit->getAttributeValue(parameterName, parameterValue);
	numValues = parameterValue.getNumValues();

	if(numValues){
		a = (t_atom *)sysmem_newptr(sizeof(t_atom) * (numValues+1));
		// First list item is name of parameter
		atom_setsym(a, gensym(parameterName));
		// Next the whole shebang is copied
		for(i=0; i<numValues; i++){
			if(parameterValue.getType(i) == kTypeSymbol){
				parameterValue.get(i, tempSymbol);
				atom_setsym(a+i+1, gensym(tempSymbol));
			}
			else{
				parameterValue.get(i, tempValue);
				atom_setfloat(a+i+1, tempValue);
			}
		}
		object_obex_dumpout(x, gensym("current.parameter"), numValues+1, a);
	
		// The pointer to an atom assign in the getParameter method needs to be freed.
		sysmem_freeptr(a);
	}
}

