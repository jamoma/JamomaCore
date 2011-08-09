/* 
 *	jcom.receive
 *	External object
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTModularClassWrapperMax.h"


#define address_out 0
#define data_out 1
#define dump_out 2

// Definitions
void	WrapTTReceiverClass(WrappedClassPtr c);
void	WrappedReceiverClass_new(TTPtr self, AtomCount argc, AtomPtr argv);

void	receive_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void	receive_subscribe(TTPtr self);

void	receive_return_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void	receive_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void	receive_return_model_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void	receive_bang(TTPtr self);
void	receive_set(TTPtr self, SymbolPtr address);


int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTReceiverClass;
	spec->_new = &WrappedReceiverClass_new;
	spec->_free = NULL;
	spec->_any = NULL;
	
	return wrapTTModularClassAsMaxClass(TT("Receiver"), "jcom.receive", NULL, spec);
}

void WrapTTReceiverClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)receive_assist,				"assist",				A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)receive_return_address,		"return_address",		A_CANT, 0);
	class_addmethod(c->maxClass, (method)receive_return_value,			"return_value",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)receive_return_model_address,	"return_model_address",	A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)receive_bang,					"bang",					0);
	class_addmethod(c->maxClass, (method)receive_set,					"set",					A_SYM, 0);
}

void WrappedReceiverClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					address;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments

	// read first argument
	if (attrstart && argv) 
		address = atom_getsym(argv);
	else
		address = _sym_nothing;
	
	x->address = TTADRS(jamoma_parse_dieze((ObjectPtr)x, address)->s_name);
	x->index = 0; // the index member is usefull to count how many time the external tries to bind
	jamoma_receiver_create((ObjectPtr)x, &x->wrappedObject);
	
	// Prepare memory to store internal objects
	x->internals = new TTHash();

	// Make two outlets
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 2);
	x->outlets[address_out] = outlet_new(x, NULL);					// anything outlet to output address
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
	
	// handle attribute args
	attr_args_process(x, argc, argv);
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)receive_subscribe, NULL, 0, 0);
}

// Method for Assistance Messages
void receive_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "");		
	else {							// Outlets
		switch(arg) {
			case address_out:
				strcpy(dst, "address output");
				break;
			case data_out:
				strcpy(dst, "data output");
				break;
			case dump_out:
				strcpy(dst, "dumpout");
				break;
		}
 	}
}

void receive_subscribe(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v;
	TTNodeAddressPtr			contextAddress = kTTAdrsEmpty;
	TTObjectPtr					anObject;
	TTErr						err;
	
	if (x->address == kTTAdrsEmpty)
		return;
	
	// for absolute address
	if (x->address->getType() == kAddressAbsolute) {
		x->wrappedObject->setAttributeValue(kTTSym_address, x->address);
		return;
	}
	
	// for relative address
	// try to binds on internal the model/address
	
	if (!x->subscriberObject) {
		
		if (!jamoma_subscriber_create((ObjectPtr)x, NULL, TTADRS("model/address"), &x->subscriberObject)) {
			x->subscriberObject->getAttributeValue(TT("contextAddress"), v);
			v.get(0, (TTSymbolPtr*)&contextAddress);
			
			// binds the internal model/address return (in a view) or parameter (in a model)
			makeInternals_viewer(x, contextAddress, TT("/model/address"), gensym("return_model_address"), &anObject);
			anObject->sendMessage(kTTSym_Refresh);
		}
		// while the context is not defined : try to binds again
		else {
			
			// release the subscriber
			TTObjectRelease(TTObjectHandle(&x->subscriberObject));
			x->subscriberObject = NULL;
			
			x->index++; // the index member is usefull to count how many time the external tries to bind
			if (x->index > 100) {
				object_error((ObjectPtr)x, "tries to bind too many times on %s", x->address->getCString());
				object_obex_dumpout((ObjectPtr)x, gensym("error"), 0, NULL);
				return;
			}
			
			// The following must be deferred because we have to interrogate our box,
			// and our box is not yet valid until we have finished instantiating the object.
			// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
			defer_low((ObjectPtr)x, (method)receive_subscribe, NULL, 0, 0);
		}
	}
	
	// else refresh model/address only
	else {
		
		err = x->internals->lookup(TT("/model/address"), v);
		
		if (!err) {
			
			v.get(0, (TTPtr*)&anObject);
			anObject->sendMessage(kTTSym_Refresh);
		}
	}
}

void receive_return_model_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTNodeAddressPtr			absoluteAddress;
	
	if (argc && argv) {
		
		// set address attribute of the wrapped Receiver object
		absoluteAddress = TTADRS(atom_getsym(argv)->s_name)->appendAddress(x->address);
		x->wrappedObject->setAttributeValue(kTTSym_address, absoluteAddress);
		x->index = 0; // the index member is usefull to count how many time the external tries to bind
		
		// DEBUG
		//object_post((ObjectPtr)x, "binds on %s", absoluteAddress->getCString());
		object_obex_dumpout(self, gensym("model/address"), argc, argv);
	}
}

void receive_return_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	outlet_anything(x->outlets[address_out], msg, argc, argv);
}

void receive_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	// avoid blank before data
	if (msg == _sym_nothing)
		outlet_atoms(x->outlets[data_out], argc, argv);
	else
		outlet_anything(x->outlets[data_out], msg, argc, argv);
}

void receive_bang(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	// catch error : dump an error
	if (x->wrappedObject->sendMessage(TT("Get")))
		object_obex_dumpout(self, _sym_error, 0, NULL);
}

void receive_set(TTPtr self, SymbolPtr address)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	x->address =  TTADRS(jamoma_parse_dieze((ObjectPtr)x, address)->s_name);
	
	receive_subscribe(self);
}