/** @file
 *
 * @ingroup modularMax
 *
 * @brief External for Jamoma: jcom.map - Map input to output : y=f(x)
 *
 * @details Mapping functions are defined in the Jamoma DSP FunctionLib extension.
 *
 * @authors Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2007 by Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTModularClassWrapperMax.h"

#define data_out 0
#define dump_out 1

// This is used to store extra data
typedef struct extra {
	TTValue     arguments;      // keep creation arguments to reset the mapper to the initial state
} t_extra;
#define EXTRA ((t_extra*)x->extra)

// Definitions
void WrapTTMapperClass(WrappedClassPtr c);
void WrappedMapperClass_new(TTPtr self, AtomCount argc, AtomPtr argv);
void WrappedMapperClass_free(TTPtr self);

void map_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void map_return_value(TTPtr self, t_symbol *msg, long argc, t_atom *argv);

void map_int(TTPtr self, long value);
void map_float(TTPtr self, double value);
void map_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void map_reset(TTPtr self);

void map_subscribe(TTPtr self);

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTMapperClass;
	spec->_new = &WrappedMapperClass_new;
	spec->_free = &WrappedMapperClass_free;
	spec->_any = NULL;
	
	return wrapTTModularClassAsMaxClass(kTTSym_Mapper, "jcom.map", NULL, spec);
}

void WrapTTMapperClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)map_assist, "assist", A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)map_return_value, "return_value", A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)map_int, "int", A_LONG, 0L);
	class_addmethod(c->maxClass, (method)map_float, "float", A_FLOAT, 0L);
	class_addmethod(c->maxClass, (method)map_list, "list", A_GIMME, 0L);
    
    class_addmethod(c->maxClass, (method)map_reset, "reset", 0L);
}

void WrappedMapperClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	if (obj->functionUnit)
		delete obj->functionUnit;
	delete obj->parameterNames;
}


#pragma mark -
#pragma mark methods
/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void map_assist(t_map *x, void *b, long msg, long arg, char *dst)
{
	if (msg==1) 							// Inlets
		strcpy(dst, "x");
	else if (msg==2) { 					// Outlets
		switch(arg) {
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

	if (obj->valid) {
		//y = obj->c * obj->functionUnit->map(obj->a * x + obj->b) + obj->d;
		obj->functionUnit->calculate(obj->a * x + obj->b, y);
		y = obj->c * y + obj->d;
		outlet_float(obj->outlet, y);
	}
}


void map_list(t_map* obj, SymbolPtr message, AtomCount argc, AtomPtr argv)
{
	if (obj->valid) {
		TTValue		v;
		TTValue		ret;
		double		x, y;
		AtomCount	ac = 0;
		AtomPtr		av = NULL;

		v.clear();
		for (int i=0; i<argc; i++) {
			x = atom_getfloat(argv+i);
			v.append(obj->a * x + obj->b);
		}

		obj->functionUnit->calculate(v, ret);

		ac = ret.getSize();
		av = new Atom[ac];
		for (int i=0; i<ac; i++) {
			ret.get(i, y);
			y = obj->c * y + obj->d;
			atom_setfloat(av+i, y);
		}

		outlet_anything(obj->outlet, _sym_list, ac, av);
		delete [] av;
	}
}


void map_getFunctions(t_map *obj, t_symbol *msg, long argc, t_atom *argv)
{
	t_atom		a[2];
	long		numFunctions = 0;
	long		i;
	TTValue		functionNames;
	TTSymbol	aName;

	atom_setsym(a+0, gensym("clear"));
	object_obex_dumpout(obj, gensym("functions"), 1, a);

	FunctionLib::getUnitNames(functionNames);
	numFunctions = functionNames.getSize();

	atom_setsym(a+0, gensym("append"));
	for (i=0; i<numFunctions; i++) {
		functionNames.get(i, aName);
		atom_setsym(a+1, gensym(aName));
		object_obex_dumpout(obj, gensym("functions"), 2, a);
	}
}


void map_getParameter(t_map *obj, t_symbol *msg, long argc, t_atom *argv)
{
	t_atom*		a;
	TTSymbol	parameterName;
	TTValue		parameterValue;
	int			numValues;
	int			i;
	TTSymbol	tempSymbol;
	double		tempValue;
	TTValue		v;

	if (!argc) {
		error("jcom.map: not enough arguments to parameter.get");
		return;
	}

	// get the correct TT name for the parameter given the Max name
	parameterName = atom_getsym(argv)->s_name;
	//obj->parameterNames->lookup(parameterName, v);
	//v.get(0, parameterName);

	obj->functionUnit->getAttributeValue(parameterName, parameterValue);
	numValues = parameterValue.getSize();
	if (numValues) {
		a = (t_atom *)sysmem_newptr(sizeof(t_atom) * (numValues+1));
		// First list item is name of parameter
		atom_setsym(a, gensym(parameterName));
		// Next the whole shebang is copied
		for (i=0; i<numValues; i++) {
			if (parameterValue.getType(i) == kTypeSymbol) {
				parameterValue.get(i, tempSymbol);
				atom_setsym(a+i+1, gensym(tempSymbol));
			}
			else {
				parameterValue.get(i, tempValue);
				atom_setfloat(a+i+1, tempValue);
			}
		}
		object_obex_dumpout(obj, gensym("current.parameter"), numValues+1, a);

		// The pointer to an atom assign in the getParameter method needs to be freed.
		sysmem_freeptr(a);
	}
}

void map_getFunctionParameters(t_map *obj, t_symbol *msg, long argc, t_atom *argv)
{
	t_atom		a[2];
	long		n;
	TTValue		names;
	TTSymbol	aName;

	atom_setsym(a+0, gensym("clear"));
	object_obex_dumpout(obj, gensym("function.parameters"), 1, a);

	obj->parameterNames->getKeys(names);
	n = names.getSize();	
	if (n) {
		for (int i=0; i<n; i++) {
			atom_setsym(a+0, gensym("append"));
			names.get(i, aName);
			atom_setsym(a+1, gensym((char*)aName.c_str()));
			object_obex_dumpout(obj, gensym("function.parameters"), 2, a);
		}
	}
	else
		relativeAddress = _sym_nothing;
	
	x->address = TTAddress(jamoma_parse_dieze((ObjectPtr)x, relativeAddress)->s_name);
	
	jamoma_mapper_create((ObjectPtr)x, &x->wrappedObject);
	
	// Make two outlets
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 1);
	x->outlets[data_out] = outlet_new(x, NULL); // anything outlet to output data
	
	// handle attribute args
	attr_args_process(x, argc, argv);
    
    // Prepare extra data
	x->extra = (t_extra*)malloc(sizeof(t_extra));
    EXTRA->arguments = kTTValNONE;
    jamoma_ttvalue_from_Atom(EXTRA->arguments, _sym_nothing, argc, argv);
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)map_subscribe, NULL, 0, 0);
}

void WrappedMapperClass_free(TTPtr self)
{
    WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	free(EXTRA);
}

// Method for Assistance Messages
void map_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1) // Inlets
		strcpy(dst, "");
	else { // Outlets
		switch(arg) {
			case data_out:
				strcpy(dst, "mapping output");
				break;
			case dump_out:
				strcpy(dst, "dumpout");
				break;
		}
	}
}

void map_subscribe(TTPtr self)
{
	WrappedModularInstancePtr x = (WrappedModularInstancePtr)self;
	TTValue v, n, args;
	TTDataPtr aData;
	
	/* TODO : fix exposeAttribute as parameter because for now
	 it crash due to a locked mutex during the notification
	 of observers when the attribute is updated from a Max message.
	 // add 'cue' after the address
	 if (x->address == kTTAdrsEmpty)
	 x->address = TADRS("mapper");
	 // if the subscription is successful
	 if (!jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, x->address, &x->subscriberObject)) {
	 // expose attributes of TTMapper as TTData in the tree structure
	 x->subscriberObject->exposeAttribute(x->wrappedObject, TTSymbol("input"), kTTSym_parameter, &aData);
	 aData->setAttributeValue(kTTSym_type, kTTSym_string);
	 aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
	 aData->setAttributeValue(kTTSym_description, TTSymbol("The input address to map"));
	 x->subscriberObject->exposeAttribute(x->wrappedObject, TTSymbol("output"), kTTSym_parameter, &aData);
	 aData->setAttributeValue(kTTSym_type, kTTSym_string);
	 aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
	 aData->setAttributeValue(kTTSym_description, TTSymbol("The output address to map"));
	 x->subscriberObject->exposeAttribute(x->wrappedObject, TTSymbol("inputMin"), kTTSym_parameter, &aData);
	 aData->setAttributeValue(kTTSym_type, kTTSym_decimal);
	 aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
	 aData->setAttributeValue(kTTSym_description, TTSymbol("The low bound input value"));
	 x->subscriberObject->exposeAttribute(x->wrappedObject, TTSymbol("inputMax"), kTTSym_parameter, &aData);
	 aData->setAttributeValue(kTTSym_type, kTTSym_decimal);
	 aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
	 aData->setAttributeValue(kTTSym_description, TTSymbol("The high bound input value"));
	 x->subscriberObject->exposeAttribute(x->wrappedObject, TTSymbol("outputMin"), kTTSym_parameter, &aData);
	 aData->setAttributeValue(kTTSym_type, kTTSym_decimal);
	 aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
	 aData->setAttributeValue(kTTSym_description, TTSymbol("The low bound output value"));
	 x->subscriberObject->exposeAttribute(x->wrappedObject, TTSymbol("outputMax"), kTTSym_parameter, &aData);
	 aData->setAttributeValue(kTTSym_type, kTTSym_decimal);
	 aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
	 aData->setAttributeValue(kTTSym_description, TTSymbol("The high bound output value"));
	 x->subscriberObject->exposeAttribute(x->wrappedObject, TTSymbol("enable"), kTTSym_parameter, &aData);
	 aData->setAttributeValue(kTTSym_type, kTTSym_boolean);
	 aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
	 aData->setAttributeValue(kTTSym_description, TTSymbol("Turn on and off the mapping"));
	 }
	 */
}

void map_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr x = (WrappedModularInstancePtr)self;
	outlet_atoms(x->outlets[data_out], argc, argv);
}

void map_bang(TTPtr self)
{
	map_list(self, _sym_bang, 0, NULL);
}

void map_int(TTPtr self, long value)
{
	t_atom a;
	
	atom_setlong(&a, value);
	map_list(self, _sym_int, 1, &a);
}

void map_float(TTPtr self, double value)
{
	t_atom a;
	
	atom_setfloat(&a, value);
	map_list(self, _sym_float, 1, &a);
}

void map_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr x = (WrappedModularInstancePtr)self;
	TTValue inputValue, outputValue;
	
	jamoma_ttvalue_from_Atom(inputValue, msg, argc, argv);
	
	x->wrappedObject->sendMessage(kTTSym_Map, inputValue, outputValue);
	
	// we don't send the output value here because there is callback for this
}

void map_reset(TTPtr self)
{
    WrappedModularInstancePtr x = (WrappedModularInstancePtr)self;
    AtomCount   argc;
    AtomPtr     argv;
    
    jamoma_ttvalue_to_Atom(EXTRA->arguments, &argc, &argv);
    
    // handle attribute args to reset to creation state
	attr_args_process(x, argc, argv);
}