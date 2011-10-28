/* 
 *	jcom.parameter/message/return
 *	External object
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTModularClassWrapperMax.h"

#define data_out 0
#define index_out 1
#define	dump_out 2


// This is used to store extra data
typedef struct extra {
	
#ifndef JMOD_RETURN
	SymbolPtr			attr_format;		// Is it 'single' data output or 'array' output
	TTUInt32			array_size;			// keep array size in memory
	TTValuePtr			*array_value;		// store each value in an array to output them together
#endif
	
	TTNodeAddressPtr	array_address;		// keep the address in memory to filter repetitions
	TTBoolean			changingAddress;	// a flag to protect from succession of address changes
	TTValue				args;				// keep attributes argument of the external
} t_extra;
#define EXTRA ((t_extra*)x->extra)


// Definitions
void		WrapTTDataClass(WrappedClassPtr c);
void		WrappedDataClass_new(TTPtr self, AtomCount argc, AtomPtr argv);
void		WrappedDataClass_free(TTPtr self);

void		data_assist(TTPtr self, TTPtr b, long msg, AtomCount arg, char *dst);

void		data_new_address(TTPtr self, SymbolPtr msg);
void		data_subscribe_array(TTPtr self);
void		data_array_create(ObjectPtr x, TTObjectPtr *returnedData, TTSymbolPtr service, long index);
void		data_array_select(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		data_address(TTPtr self, SymbolPtr name);

#ifndef JMOD_RETURN
void		data_array_return_value(TTPtr baton, TTValue& v);

t_max_err	data_get_format(TTPtr self, TTPtr attr, AtomCount *ac, AtomPtr *av);
t_max_err	data_set_format(TTPtr self, TTPtr attr, AtomCount ac, AtomPtr av);
#endif

#ifndef JMOD_MESSAGE
void		WrappedDataClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		data_bang(TTPtr self);
void		data_int(TTPtr self, long value);
void		data_float(TTPtr self, double value);
void		data_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		data_inc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		data_dec(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
#endif

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTDataClass;
	spec->_new = &WrappedDataClass_new;
	spec->_free = &WrappedDataClass_free;
#ifndef JMOD_MESSAGE
	spec->_any = &WrappedDataClass_anything;
#else
	spec->_any = NULL;
#endif
	
#ifdef JMOD_MESSAGE
	return wrapTTModularClassAsMaxClass(TT("Data"), "jcom.messageArray", NULL, spec);
#endif
	
#ifdef JMOD_RETURN
	return wrapTTModularClassAsMaxClass(TT("Data"), "jcom.returnArray", NULL, spec);
#endif
	
#ifndef JMOD_MESSAGE
#ifndef JMOD_RETURN
	return wrapTTModularClassAsMaxClass(TT("Data"), "jcom.parameterArray", NULL, spec);
#endif
#endif
}

void WrapTTDataClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)data_assist,						"assist",				A_CANT, 0L);
	
#ifndef JMOD_MESSAGE	
	class_addmethod(c->maxClass, (method)data_bang,							"bang",					0L);
	class_addmethod(c->maxClass, (method)data_int,							"int",					A_LONG, 0);
	class_addmethod(c->maxClass, (method)data_float,						"float",				A_FLOAT, 0);
	class_addmethod(c->maxClass, (method)data_list,							"list",					A_GIMME, 0);
	
	class_addmethod(c->maxClass, (method)data_inc,							"+",					A_GIMME, 0);
	class_addmethod(c->maxClass, (method)data_dec,							"-",					A_GIMME, 0);
	
	class_addmethod(c->maxClass, (method)data_array_select,					"array/select",			A_GIMME,0);
#endif
	
	class_addmethod(c->maxClass, (method)data_address,						"address",				A_SYM,0);
	
#ifndef JMOD_RETURN
	CLASS_ATTR_SYM(c->maxClass,			"format",	0,		WrappedModularInstance,	extra);		// use extra member to store format
	CLASS_ATTR_ACCESSORS(c->maxClass,	"format",	data_get_format,	data_set_format);
	CLASS_ATTR_ENUM(c->maxClass,		"format",	0,		"single array");
#endif	
}

void WrappedDataClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					relativeAddress;
	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	
	// check address argument
	relativeAddress = _sym_nothing;
	if (attrstart && argv)
		if (atom_gettype(argv) == A_SYM)
			relativeAddress = atom_getsym(argv);
	
	if (relativeAddress == _sym_nothing) {
		object_error((ObjectPtr)x, "needs a name as first argument");
		return;
	}
	
#ifndef JMOD_MESSAGE
	// add an inlet for the index
	x->inlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 1);
	x->inlets[0] = proxy_new(x, 1, &x->argc);	// use this member to store index (because index is used for data array)
	
#endif
	
	// Make outlets (before attr_args_process)
	/////////////////////////////////////////////////////////////////////////////////
	
#ifndef JMOD_RETURN
	// Don't create outlets during dynamic changes
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 2);
	x->outlets[index_out] = outlet_new(x, NULL);					// long outlet to output data index
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
#endif
	
	// Prepare extra data for parameters and messages
	x->extra = (t_extra*)malloc(sizeof(t_extra));
#ifndef JMOD_RETURN
	EXTRA->attr_format = gensym("single");
	EXTRA->array_size = 0;
	EXTRA->array_value = NULL;
#endif
	EXTRA->array_address = kTTAdrsEmpty;
	EXTRA->changingAddress = NO;
	EXTRA->args = kTTValNONE;
	
	// handle args
	if (argc && argv) {
		
		// set the external attribute
		attr_args_process(x, argc, argv);
		
		// keep args to set the wrapped object attributes
		jamoma_ttvalue_from_Atom(EXTRA->args, _sym_list, argc--, argv++);
	}
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)data_new_address, relativeAddress, 0, NULL);
}

void WrappedDataClass_free(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
#ifndef JMOD_RETURN
	// delete array
	if (EXTRA->array_value) {
		for (TTUInt32 i=0; i<EXTRA->array_size; i++)
			if (EXTRA->array_value[i])
				delete EXTRA->array_value[i];
		
		free(EXTRA->array_value);
	}
#endif
	
	free(EXTRA);
}

void data_new_address(TTPtr self, SymbolPtr relativeAddress)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	AtomCount					argc = 0; 
	AtomPtr						argv = NULL;
	TTUInt32					number, i;
	TTNodeAddressPtr			newAddress = TTADRS(relativeAddress->s_name);
	SymbolPtr					instanceAddress;
	TTObjectPtr					anObject;
	TTSubscriberPtr				aSubscriber;
	TTValue						v;
	
	if (!x->iterateInternals) {
		
		x->useInternals = YES;
		x->internals = new TTHash();
		x->internals->setThreadProtection(YES);
		x->cursor = kTTSymEmpty;
		
		// filter repetitions
		if (!(EXTRA->array_address == newAddress)) {
			
			EXTRA->array_address = newAddress;
			
			if (EXTRA->array_address->getType() == kAddressRelative) {
				
				number = jamoma_parse_bracket(relativeAddress, x->i_format, x->s_format);
				
				// don't resize to 0
				if (number) {
					
					// Starts iteration on internals
					x->iterateInternals = YES;
					
#ifndef JMOD_RETURN
					// prepare array_value
					EXTRA->array_size = number;
					EXTRA->array_value = (TTValuePtr*)malloc(sizeof(TTValuePtr)*number);
					for (TTUInt32 j=0; j<EXTRA->array_size; j++)
						EXTRA->array_value[j] = NULL;
#endif
					
					for (i = 1; i <= number; i++) {
						
						jamoma_edit_numeric_instance(x->i_format, &instanceAddress, i);
						
						// create a data
#ifdef JMOD_MESSAGE
						data_array_create((ObjectPtr)x, &anObject, kTTSym_message, i);
#endif
						
#if JMOD_RETURN
						data_array_create((ObjectPtr)x, &anObject, kTTSym_return, i);
#endif
						
#ifndef JMOD_MESSAGE
#ifndef JMOD_RETURN
						data_array_create((ObjectPtr)x, &anObject, kTTSym_parameter, i);
#endif
#endif
						aSubscriber = NULL;
						if (!jamoma_subscriber_create((ObjectPtr)x, anObject, TTADRS(instanceAddress->s_name),  &aSubscriber)) {
							
							if (aSubscriber) {
								// append the data to the internals table
								v = TTValue(TTPtr(anObject));
								v.append(TT(instanceAddress->s_name));
								v.append(TTPtr(aSubscriber));
								x->internals->append(TT(instanceAddress->s_name), v);
							}
						}
					}
					
					// Ends iteration on internals
					x->iterateInternals = NO;
					
					// handle args
					jamoma_ttvalue_to_Atom(EXTRA->args, &argc, &argv);
					if (argc && argv)
						attr_args_process(x, argc, argv);
					
					// select all datas
					data_array_select(self, gensym("*"), 0, NULL);
				}
			}
			else
				object_error((ObjectPtr)x, "can't register because %s is not a relative address", relativeAddress->s_name);
		}
	}
	else 
		object_error((ObjectPtr)x, "can't change to %s address. Please defer low", relativeAddress->s_name);
	
	EXTRA->changingAddress = NO;
}

void data_array_create(ObjectPtr x, TTObjectPtr *returnedData, TTSymbolPtr service, long index)
{
	TTValue			args;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	
	// prepare arguments
	
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &returnValueCallback, kTTValNONE);
#ifndef JMOD_RETURN
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueBaton->append(TTUInt32(index));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&data_array_return_value));
#endif
	
	args.append(returnValueCallback);
	
	args.append(service);
	
	*returnedData = NULL;
	TTObjectInstantiate(TT("Data"), TTObjectHandle(returnedData), args);
}

void data_array_select(TTPtr self, t_symbol *msg, long argc, t_atom *argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					instanceAddress;
	unsigned long				i;
	TTValue						v;
	
	if (x->internals) {
		
		if (argc && argv) {
			if (atom_gettype(argv) == A_LONG) {
				i = atom_getlong(argv);
				if (i > 0 && i <= x->internals->getSize()) {
					x->index = i;
					jamoma_edit_numeric_instance(x->i_format, &instanceAddress, i);
					x->cursor = TT(instanceAddress->s_name);
				}
				else
					object_error((ObjectPtr)x, "array/select : %ld is not a valid index", i);
			}
			else if (atom_gettype(argv) == A_SYM) {
				
				if (atom_getsym(argv) == gensym("*")) {
					x->index = -1;
					jamoma_edit_numeric_instance(x->i_format, &instanceAddress, 1);
					x->cursor = TT(instanceAddress->s_name);
				}
				else
					object_error((ObjectPtr)x, "array/select : %s is not a valid index", i);
			}
		}
		else {
			if (msg == gensym("*")) {
				x->index = -1;
				jamoma_edit_numeric_instance(x->i_format, &instanceAddress, 1);
				x->cursor = TT(instanceAddress->s_name);
			}
			else
				object_error((ObjectPtr)x, "array/select : %s is not a valid index", i);
		}
	}
	else
		object_error((ObjectPtr)x, "array/select : the array is empty");
}

void data_address(TTPtr self, SymbolPtr address)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	// Avoid succession of address changes
	// the changingAddress flag is set to YES below and 
	// set to NO at the end of data_new_address method
	if (!x->iterateInternals && !EXTRA->changingAddress) {
		
		// unregister internals
		wrappedModularClass_unregister(x);
		
#ifndef JMOD_RETURN		
		// delete array
		if (EXTRA->array_value) {
			for (TTUInt32 i=0; i<EXTRA->array_size; i++)
				if (EXTRA->array_value[i])
					delete EXTRA->array_value[i];
			
			EXTRA->array_size = 0;
			free(EXTRA->array_value);
		}
#endif
		
		// rebuild internals
		EXTRA->changingAddress = YES;
		defer_low(self,(method)data_new_address, address, 0, NULL);
	}
	else 
		object_error((ObjectPtr)x, "can't change to %s address. Please defer low", address->s_name);
}

// Method for Assistance Messages
void data_assist(TTPtr self, TTPtr b, long msg, AtomCount arg, char *dst)
{
	if (msg==1) 						// Inlet
		strcpy(dst, "input");
	else {							// Outlets
		switch(arg) {
			case data_out:
				strcpy(dst, "direct: values");
				break;
			case index_out:
				strcpy(dst, "index");
				break;
			case dump_out:
				strcpy(dst, "dumpout");
				break;
		}
 	}
}

#ifndef JMOD_MESSAGE
void data_bang(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if (x->internals) {
		data_list(self, _sym_bang, 0, NULL);
	}
	else
		object_error((ObjectPtr)x, "bang : the array is empty");
}

void data_int(TTPtr self, long value)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	t_atom a;
	
	if (proxy_getinlet((ObjectPtr)x)) {
		atom_setlong(&a, value);
		data_array_select(self, _sym_nothing, 1, &a);
	}
	else {
		if (x->internals) {
			atom_setlong(&a, value);
			data_list(self, _sym_int, 1, &a);
		}
		else
			object_error((ObjectPtr)x, "int : the array is empty");
	}
}

void data_float(TTPtr self, double value)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	t_atom a;
	
	if (x->internals) {
		atom_setfloat(&a, value);
		data_list(self, _sym_float, 1, &a);
	}
	else
		object_error((ObjectPtr)x, "float : the array is empty");
}

void data_list(TTPtr self, t_symbol *msg, long argc, t_atom *argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if (x->internals) {
		
		// send to each data
		if (x->index == -1) {
			TTValue keys;
			if (!x->internals->isEmpty()) {
				x->internals->getKeys(keys);
				for (int i=0; i<keys.getSize(); i++) {
					keys.get(i, &x->cursor);
					jamoma_data_command((TTDataPtr)selectedObject, msg, argc, argv);
				}
			}
			x->cursor = kTTSymEmpty;
		}
		else
			jamoma_data_command((TTDataPtr)selectedObject, msg, argc, argv);
		
	}
	else
		object_error((ObjectPtr)x, "list : the array is empty");
}

void WrappedDataClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if (proxy_getinlet((ObjectPtr)x)) {
		data_array_select(self, msg, argc, argv);
	}
	else {
		
		// send to each data
		if (x->index == -1) {
			TTValue keys;
			if (!x->internals->isEmpty()) {
				x->internals->getKeys(keys);
				for (int i=0; i<keys.getSize(); i++) {
					keys.get(i, &x->cursor);
					jamoma_data_command((TTDataPtr)selectedObject, msg, argc, argv);
				}
				x->cursor = kTTSymEmpty;
			}
		}
		else
			jamoma_data_command((TTDataPtr)selectedObject, msg, argc, argv);
	}
}
#endif

#ifndef JMOD_RETURN
void data_array_return_value(TTPtr baton, TTValue& v)
{
	WrappedModularInstancePtr	x;
	TTValue						array, g;
	TTValuePtr					b, m;
	SymbolPtr					msg, iAdrs;
	long						i, argc = 0;
	AtomPtr						argv = NULL;
	TTBoolean					shifted = NO;
	TTSymbolPtr					memoCursor;
	
	// unpack baton (a t_object* and the name of the method to call (default : jps_return_value))
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&x);
	b->get(1, i);
	
	// output index
	if (x->index == -1) {
		jamoma_edit_numeric_instance(x->i_format, &iAdrs, i);
		x->cursor = TT(iAdrs->s_name);
	}
	
	outlet_int(x->outlets[index_out], i);
	
	// store value
	if (EXTRA->array_value) {
		
		// delete former value
		if (EXTRA->array_value[i-1])
			delete EXTRA->array_value[i-1];
		
		// store new value
		m = new TTValue(v);
		EXTRA->array_value[i-1] = m;
	}
	
	// in array output mode 
	// edit a value containing all values
	if (EXTRA->attr_format == gensym("array")) {
		
		if (EXTRA->array_value)
			for (TTUInt32 i=0; i<EXTRA->array_size; i++) {
				
				// if the data have not been updated yet
				m = EXTRA->array_value[i];
				if (m == NULL) {
					
					memoCursor = x->cursor;
					jamoma_edit_numeric_instance(x->i_format, &iAdrs, i+1);
					x->cursor = TT(iAdrs->s_name);
					selectedObject->getAttributeValue(kTTSym_valueDefault, g);
					
					m = new TTValue(g);
					
					EXTRA->array_value[i] = m;
					x->cursor = memoCursor;
				}
				
				array.append((TTValuePtr)m);
			}
		
		jamoma_ttvalue_to_typed_Atom(array, &msg, &argc, &argv, shifted);
	}
	else
		// output single value
		jamoma_ttvalue_to_typed_Atom(v, &msg, &argc, &argv, shifted);
	
	// avoid blank before data
	if (msg == _sym_nothing)
		outlet_atoms(x->outlets[data_out], argc, argv);
	else
		outlet_anything(x->outlets[data_out], msg, argc, argv);
	
	if (shifted)
		argv--;
	sysmem_freeptr(argv);
}

t_max_err data_get_format(TTPtr self, TTPtr attr, AtomCount *ac, AtomPtr *av)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if ((*ac)&&(*av)) {
		//memory passed in, use it
	} else {
		//otherwise allocate memory
		*ac = 1;
		if (!(*av = (AtomPtr)getbytes(sizeof(Atom)*(*ac)))) {
			*ac = 0;
			return MAX_ERR_OUT_OF_MEM;
		}
	}
	
	atom_setsym(*av, EXTRA->attr_format);
	
	return MAX_ERR_NONE;
}

t_max_err data_set_format(TTPtr self, TTPtr attr, AtomCount ac, AtomPtr av) 
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if (ac&&av) {
		EXTRA->attr_format = atom_getsym(av);
	} else {
		// no args, set to single
		EXTRA->attr_format = gensym("single");
	}
	return MAX_ERR_NONE;
}
#endif

#ifndef JMOD_MESSAGE
void data_inc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue v;
	
	jamoma_ttvalue_from_Atom(v, _sym_nothing, argc, argv);
	selectedObject->sendMessage(TT("Inc"), v);
}

void data_dec(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue v;
	
	jamoma_ttvalue_from_Atom(v, _sym_nothing, argc, argv);
	selectedObject->sendMessage(TT("Dec"), v);
}
#endif