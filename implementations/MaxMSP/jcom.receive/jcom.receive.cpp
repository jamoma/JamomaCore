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

void	receive_subscribe(TTPtr self, SymbolPtr relativeAddress);

void	receive_return_address(TTPtr self, t_symbol *msg, long argc, t_atom *argv);
void	receive_return_value(TTPtr self, t_symbol *msg, long argc, t_atom *argv);

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
	
	// a leading slash means the address is absolute
	if (address->s_name[0] == C_SEPARATOR)
		jamoma_receiver_create((ObjectPtr)x, jamoma_parse_dieze((ObjectPtr)x, address), &x->wrappedObject);
	else
		// The following must be deferred because we have to interrogate our box,
		// and our box is not yet valid until we have finished instantiating the object.
		// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
		defer_low((ObjectPtr)x, (method)receive_subscribe, jamoma_parse_dieze((ObjectPtr)x, address), 0, 0);
	
	// Make two outlets
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 2);
	x->outlets[address_out] = outlet_new(x, NULL);					// anything outlet to output address
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
	
	// handle attribute args
	attr_args_process(x, argc, argv);
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

void receive_subscribe(TTPtr self, SymbolPtr relativeAddress)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTSymbolPtr absoluteAddress;
	
	if (!jamoma_patcher_make_absolute_address(jamoma_patcher_get((ObjectPtr)x), TT(relativeAddress->s_name),  &absoluteAddress)) {
		
		jamoma_receiver_create((ObjectPtr)x, gensym((char*)absoluteAddress->getCString()), &x->wrappedObject);
		
		// DEBUG
		object_post((ObjectPtr)x, "receives from = %s", absoluteAddress->getCString());
	}
	// While the context node is not registered : try to build (to --Is this not dangerous ?)
	else {
		// The following must be deferred because we have to interrogate our box,
		// and our box is not yet valid until we have finished instantiating the object.
		// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
		defer_low((ObjectPtr)x, (method)receive_subscribe, relativeAddress, 0, 0);
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
	TTSymbolPtr ad, at;
	
	if (address->s_name[0] == C_SEPARATOR)
		if (!splitAttribute(TT(address->s_name), &ad, &at)) {
			x->wrappedObject->setAttributeValue(kTTSym_address, ad);
			x->wrappedObject->setAttributeValue(TT("attribute"), at);
		}
}