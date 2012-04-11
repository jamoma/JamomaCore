/**
 * \file jcom.map.cpp
 * External for Jamoma: map input to output: y=f(x)
 * Copyright © 2007
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTModularClassWrapperMax.h"

#define data_out 0
#define dump_out 1

// Definitions
void	WrapTTMapperClass(WrappedClassPtr c);
void	WrappedMapperClass_new(TTPtr self, AtomCount argc, AtomPtr argv);

void	map_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void	map_return_value(TTPtr self, t_symbol *msg, long argc, t_atom *argv);

void	map_int(TTPtr self, long value);
void	map_float(TTPtr self, double value);
void	map_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void	map_subscribe(TTPtr self);

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTMapperClass;
	spec->_new = &WrappedMapperClass_new;
	spec->_free = NULL;
	spec->_any = NULL;
	
	return wrapTTModularClassAsMaxClass(TT("Mapper"), "jcom.map", NULL, spec);
}

void WrapTTMapperClass(WrappedClassPtr c)
{
	t_map *obj;									// Declare an object (based on our struct)

	obj = (t_map *)object_alloc(map_class);		// Create object, store pointer to it (get 1 inlet free)
	if (obj) {
		obj->parameterNames = new TTHash;
		object_obex_store((void *)obj, _sym_dumpout, (object *)outlet_new(obj,NULL));
	    obj->outlet = outlet_new(obj, 0);
		obj->attr_function = _sym_nothing;
		obj->attr_inputMin = 0;
		obj->attr_inputMax = 1;
		obj->attr_outputMin = 0;
		obj->attr_outputMax = 1;
		obj->functionUnit = NULL;
		obj->valid = false;
		attr_args_process(obj, argc, argv);
		map_scaleInput(obj);
		map_scaleOutput(obj);
		if (!obj->functionUnit)
			object_attr_setsym(obj, gensym("function"), gensym("linear"));
	}
	return obj;										// Return pointer to our instance
}


void map_free(t_map *obj)
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

void WrappedMapperClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	t_atom		a[2];
	long		numFunctions = 0;
	long		i;
	TTValue		functionNames;
	TTSymbol*	aName;

	atom_setsym(a+0, gensym("clear"));
	object_obex_dumpout(obj, gensym("functions"), 1, a);

	FunctionLib::getUnitNames(functionNames);
	numFunctions = functionNames.getSize();

	atom_setsym(a+0, gensym("append"));
	for (i=0; i<numFunctions; i++) {
		functionNames.get(i, &aName);
		atom_setsym(a+1, gensym((char*)aName->getCString()));
		object_obex_dumpout(obj, gensym("functions"), 2, a);
	}
}


void map_getParameter(t_map *obj, t_symbol *msg, long argc, t_atom *argv)
{
	t_atom*		a;
	TTSymbol*	parameterName;
	TTValue		parameterValue;
	int			numValues;
	int			i;
	TTSymbol*	tempSymbol;
	double		tempValue;
	TTValue		v;

	if (!argc) {
		error("jcom.map: not enough arguments to parameter.get");
		return;
	}

	// get the correct TT name for the parameter given the Max name
	parameterName = TT(atom_getsym(argv)->s_name);
	obj->parameterNames->lookup(parameterName, v);
	v.get(0, &parameterName);

	obj->functionUnit->getAttributeValue(parameterName, parameterValue);
	numValues = parameterValue.getSize();
	if (numValues) {
		a = (t_atom *)sysmem_newptr(sizeof(t_atom) * (numValues+1));
		// First list item is name of parameter
		atom_setsym(a, gensym((char*)parameterName->getCString()));
		// Next the whole shebang is copied
		for (i=0; i<numValues; i++) {
			if (parameterValue.getType(i) == kTypeSymbol) {
				parameterValue.get(i, &tempSymbol);
				atom_setsym(a+i+1, gensym((char*)tempSymbol->getCString()));
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

// Method for Assistance Messages
void map_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{	
	if (msg==1)			// Inlets
		strcpy(dst, "");		
	else {							// Outlets
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
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v, n, args;
	TTDataPtr					aData;
	
	/*	TODO : fix exposeAttribute as parameter because for now 
		it crash due to a locked mutex during the notification
		of observers when the attribute is updated from a Max message.
	
	// add 'cue' after the address
	if (x->address == kTTAdrsEmpty)
		x->address = TADRS("mapper");
	
	// if the subscription is successful
	if (!jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, x->address, &x->subscriberObject)) {
		
		// expose attributes of TTMapper as TTData in the tree structure
		x->subscriberObject->exposeAttribute(x->wrappedObject, TT("input"), kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("The input address to map"));
		
		x->subscriberObject->exposeAttribute(x->wrappedObject, TT("output"), kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("The output address to map"));
		
		x->subscriberObject->exposeAttribute(x->wrappedObject, TT("inputMin"), kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_decimal);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("The low bound input value"));
		
		x->subscriberObject->exposeAttribute(x->wrappedObject, TT("inputMax"), kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_decimal);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("The high bound input value"));
		
		x->subscriberObject->exposeAttribute(x->wrappedObject, TT("outputMin"), kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_decimal);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("The low bound output value"));
		
		x->subscriberObject->exposeAttribute(x->wrappedObject, TT("outputMax"), kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_decimal);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("The high bound output value"));
		
		x->subscriberObject->exposeAttribute(x->wrappedObject, TT("enable"), kTTSym_parameter, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_boolean);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Turn on and off the mapping"));
	}
	 
	 */
}

void map_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
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
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue		inputValue, outputValue;
		
	jamoma_ttvalue_from_Atom(inputValue, msg, argc, argv);
		
	x->wrappedObject->sendMessage(kTTSym_Map, inputValue, outputValue);
	
	// we don't send the output value here because there is callback for this
}