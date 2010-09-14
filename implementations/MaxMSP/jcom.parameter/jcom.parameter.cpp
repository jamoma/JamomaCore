/* 
 *	jcom.parameter/message/return
 *	External object
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTModularClassWrapperMax.h"

#define set_out 0
#define data_out 1
#define	dump_out 2

// Definitions
void		WrapTTDataClass(WrappedClassPtr c);
void		WrappedDataClass_new(TTPtr self, AtomCount argc, AtomPtr argv);

void		data_assist(TTPtr self, TTPtr b, long msg, AtomCount arg, char *dst);

void		data_share_context_node(TTPtr self, TTNodePtr *contextNode);

#ifndef JMOD_RETURN
void		data_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
#endif

void		data_build(TTPtr self, SymbolPtr address);

#ifndef JMOD_MESSAGE
void		WrappedDataClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		data_bang(TTPtr self);
void		data_int(TTPtr self, long value);
void		data_float(TTPtr self, double value);
void		data_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		data_inc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		data_dec(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
#endif

#ifndef JMOD_RETURN
void		data_ui_queuefn(TTPtr self);
#endif

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTDataClass;
	spec->_new = &WrappedDataClass_new;
#ifndef JMOD_MESSAGE
	spec->_any = &WrappedDataClass_anything;
#else
	spec->_any = NULL;
#endif
	
#ifdef JMOD_MESSAGE
	return wrapTTModularClassAsMaxClass(TT("Data"), "jcom.message", NULL, spec);
#endif
	
#ifdef JMOD_RETURN
	return wrapTTModularClassAsMaxClass(TT("Data"), "jcom.return", NULL, spec);
#endif
	
#ifndef JMOD_MESSAGE
#ifndef JMOD_RETURN
	return wrapTTModularClassAsMaxClass(TT("Data"), "jcom.parameter", NULL, spec);
#endif
#endif
}

void WrapTTDataClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)data_assist,						"assist",				A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)data_share_context_node,			"share_context_node",	A_CANT,	0);
	
#ifndef JMOD_RETURN
	class_addmethod(c->maxClass, (method)data_return_value,					"return_value",			A_CANT, 0);
#endif
	
#ifndef JMOD_MESSAGE	
	class_addmethod(c->maxClass, (method)data_bang,							"bang",					0L);
	class_addmethod(c->maxClass, (method)data_int,							"int",					A_LONG, 0);
	class_addmethod(c->maxClass, (method)data_float,						"float",				A_FLOAT, 0);
	class_addmethod(c->maxClass, (method)data_list,							"list",					A_GIMME, 0);
	
	class_addmethod(c->maxClass, (method)WrappedDataClass_anything,			"symbol",				A_SYM, 0);
	
	class_addmethod(c->maxClass, (method)data_inc,							"+",					A_GIMME, 0);
	class_addmethod(c->maxClass, (method)data_dec,							"-",					A_GIMME, 0);
#endif
}

void WrappedDataClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					address;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	
	// A Modular object needs an address argument
	if (attrstart && argv) 
		address = atom_getsym(argv);
	else
		address = _sym_nothing;
	
	// create the data
#ifdef JMOD_MESSAGE
	jamoma_data_create((ObjectPtr)x, &x->wrappedObject, kTTSym_message);
#endif
	
#if JMOD_RETURN
	jamoma_data_create((ObjectPtr)x, &x->wrappedObject, kTTSym_return);
#endif
	
#ifndef JMOD_MESSAGE
#ifndef JMOD_RETURN
	jamoma_data_create((ObjectPtr)x, &x->wrappedObject, kTTSym_parameter);
#endif
#endif
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)data_build, address, 0, 0);

	// Make outlets
#ifndef JMOD_RETURN
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 1);
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
	x->outlets[set_out] = outlet_new(x, NULL);						// anything outlet to output data prepend with a set symbol

	// Make qelem object
	x->ui_qelem = qelem_new(x, (method)data_ui_queuefn);
#endif
}

#ifndef JMOD_MESSAGE
void WrappedDataClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_atom a;
	
	if (!argc) {
		atom_setsym(&a, msg);
		data_list(self, _sym_symbol, 1, &a);
	}
}
#endif

void data_build(TTPtr self, SymbolPtr address)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v, args;
	TTNodePtr					node = NULL;
	TTBoolean					newInstance;
	TTSymbolPtr					nodeAddress, relativeAddress;
	TTPtr						context;
	
	jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, address, &x->subscriberObject);
	
	// if the subscription is successful
	if (x->subscriberObject) {
		
		// Is a new instance have been created ?
		x->subscriberObject->getAttributeValue(TT("NewInstanceCreated"), v);
		v.get(0, newInstance);
		
		if (newInstance) {
			x->subscriberObject->getAttributeValue(TT("RelativeAddress"), v);
			v.get(0, &relativeAddress);
			object_warn((t_object*)x, "Jamoma cannot create multiple jcom.data with the same OSC identifier (%s).  Using %s instead.", address->s_name, relativeAddress->getCString());
		}

		// debug
		x->subscriberObject->getAttributeValue(TT("NodeAddress"), v);
		v.get(0, &nodeAddress);
		object_post((ObjectPtr)x, "address = %s", nodeAddress->getCString());
		
		// get the Node
		x->subscriberObject->getAttributeValue(TT("Node"), v);
		v.get(0, (TTPtr*)&node);
		
		// attach to the patcher to be notified of his destruction
		node->getAttributeValue(TT("Context"), v);
		v.get(0, (TTPtr*)&context);
		object_attach_byptr_register(x, context, _sym_box);

	}
}

// Method for Assistance Messages
void data_assist(TTPtr self, TTPtr b, long msg, AtomCount arg, char *dst)
{
	if (msg==1) 						// Inlet
		strcpy(dst, "input");
	else {							// Outlets
		switch(arg) {
			case data_out:
				strcpy(dst, "set: connect to ui object");
				break;
			case set_out:
				strcpy(dst, "direct: values");
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
	data_list(self, _sym_bang, 0, NULL);
}

void data_int(TTPtr self, long value)
{
	t_atom a;
	
	atom_setlong(&a, value);
	data_list(self, _sym_int, 1, &a);
}

void data_float(TTPtr self, double value)
{
	t_atom a;
	
	atom_setfloat(&a, value);
	data_list(self, _sym_float, 1, &a);
}

void data_list(TTPtr self, t_symbol *msg, long argc, t_atom *argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;

	jamoma_data_command((TTDataPtr)x->wrappedObject, msg, argc, argv);
}
#endif

void data_share_context_node(TTPtr self, TTNodePtr *contextNode)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue	v;
	
	if (x->subscriberObject) {
		
		x->subscriberObject->getAttributeValue(TT("ContextNode"), v);
		v.get(0, TTObjectHandle(contextNode));
	}
	else
		*contextNode = NULL;
}

#ifndef JMOD_RETURN
void data_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue		v;
	TTBoolean	freeze;
	TTUInt8		i;
	
	// avoid blank before data
	if (msg == _sym_nothing)
		outlet_atoms(x->outlets[data_out], argc, argv);
	else
		outlet_anything(x->outlets[data_out], msg, argc, argv);
	
	// Check ViewFreeze attribute
	x->wrappedObject->getAttributeValue(kTTSym_ViewFreeze, v);
	v.get(0, freeze);
	
	if (!freeze) {
		
		// Copy atom in order to avoid losing data
		x->argc = argc;
		x->argv = NULL;
		x->argv = (AtomPtr)sysmem_newptr(sizeof(t_atom) * argc);
		
		if (argc) {
			for (i=0; i<argc; i++) {
				x->argv[i] = argv[i];
			}
		}
		
		qelem_set(x->ui_qelem);
	}
}

void data_ui_queuefn(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	outlet_anything(x->outlets[set_out], _sym_set, x->argc, x->argv);
}
#endif

#ifndef JMOD_MESSAGE
void data_inc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue v;

	jamoma_ttvalue_from_Atom(v, msg, argc, argv);
	x->wrappedObject->sendMessage(TT("Inc"), v);
}

void data_dec(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue v;
	
	jamoma_ttvalue_from_Atom(v, msg, argc, argv);
	x->wrappedObject->sendMessage(TT("Dec"), v);
}
#endif