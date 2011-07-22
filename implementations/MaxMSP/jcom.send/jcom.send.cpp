/* 
 *	jcom.send
 *	External object
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTModularClassWrapperMax.h"

// Definitions
void	WrapTTSenderClass(WrappedClassPtr c);
void	WrappedSenderClass_new(TTPtr self, AtomCount argc, AtomPtr argv);
void	WrappedSenderClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void	send_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void	send_subscribe(TTPtr self);

void	send_return_model_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void	send_bang(TTPtr self);
void	send_int(TTPtr self, long value);
void	send_float(TTPtr self, double value);
void	send_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void	send_set(TTPtr self, SymbolPtr address);


int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTSenderClass;
	spec->_new = &WrappedSenderClass_new;
	spec->_free = NULL;
	spec->_any = &WrappedSenderClass_anything;
	
	return wrapTTModularClassAsMaxClass(TT("Sender"), "jcom.send", NULL, spec);
}

void WrapTTSenderClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)send_assist,					"assist",					A_CANT, 0L);
	class_addmethod(c->maxClass, (method)send_return_model_address,		"return_model_address",		A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)send_bang,						"bang",						0L);
	class_addmethod(c->maxClass, (method)send_int,						"int",						A_LONG, 0L);
	class_addmethod(c->maxClass, (method)send_float,					"float",					A_FLOAT, 0L);
	class_addmethod(c->maxClass, (method)send_list,						"list",						A_GIMME, 0L);
	class_addmethod(c->maxClass, (method)send_set,						"set",						A_SYM, 0L);
	
	class_addmethod(c->maxClass, (method)WrappedSenderClass_anything,	"symbol",					A_SYM, 0L);
}

void WrappedSenderClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
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
	jamoma_sender_create((ObjectPtr)x, &x->wrappedObject);
	
	// No outlets
	
	// Prepare memory to store internal objects
	x->internals = new TTHash();
	
	// handle attribute args
	attr_args_process(x, argc, argv);
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)send_subscribe, NULL, 0, 0);
}

void WrappedSenderClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{	
	send_list(self, msg, argc, argv);
}

// Method for Assistance Messages
void send_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "");		
	else {							// Outlets
		switch(arg) {
			strcpy(dst, "dumpout");
			break;
		}
 	}
}

void send_subscribe(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v;
	TTNodeAddressPtr			contextAddress = kTTAdrsEmpty;
	TTNodeAddressPtr			absoluteAddress;
	TTObjectPtr					anObject;
	
	// for absolute address
	if (x->address->getType() == kAddressAbsolute) {
		x->wrappedObject->setAttributeValue(kTTSym_address, x->address);
		return;
	}
	
	// for relative address
	jamoma_patcher_get_info((ObjectPtr)x, &x->patcherPtr, &x->patcherContext, &x->patcherClass, &x->patcherName);
	
	if (!jamoma_subscriber_create((ObjectPtr)x, NULL, x->address, &x->subscriberObject)) {
		// get the context address to make
		// a receiver on the contextAddress/model/address parameter
		x->subscriberObject->getAttributeValue(TT("contextAddress"), v);
		v.get(0, (TTSymbolPtr*)&contextAddress);
	}
	
	// bind on the /model/address parameter (view patch)  or set address directly
	if (contextAddress != kTTAdrsEmpty) {
		
		if (x->patcherContext == kTTSym_view) {
			makeInternals_viewer(x, contextAddress, TT("/model/address"), gensym("return_model_address"), &anObject);
			anObject->sendMessage(kTTSym_Refresh);
		}
		else {
			absoluteAddress = contextAddress->appendAddress(x->address);
			x->wrappedObject->setAttributeValue(kTTSym_address, absoluteAddress);
		}
	}
	
	// while the context node is not registered : try to binds again :(
	// (to -- this is not a good way todo. For binding we should make a subscription 
	// to a notification mechanism and each time an TTObjet subscribes to the namespace
	// using jamoma_subscriber_create we notify all the externals which have used 
	// jamoma_subscriber_create with NULL object to bind)
	else {
		
		// release the subscriber
		TTObjectRelease(TTObjectHandle(&x->subscriberObject));
		x->subscriberObject = NULL;
		
		// The following must be deferred because we have to interrogate our box,
		// and our box is not yet valid until we have finished instantiating the object.
		// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
		defer_low((ObjectPtr)x, (method)send_subscribe, NULL, 0, 0);
	}
}

void send_return_model_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTNodeAddressPtr			absoluteAddress;
	
	if (argc && argv) {
		
		// set address attribute of the wrapped Receiver object
		absoluteAddress = TTADRS(atom_getsym(argv)->s_name)->appendAddress(x->address);
		x->wrappedObject->setAttributeValue(kTTSym_address, absoluteAddress);
	}
}

void send_bang(TTPtr self)
{
	send_list(self, _sym_bang, 0, NULL);
}

void send_int(TTPtr self, long value)
{
	t_atom a;
	
	atom_setlong(&a, value);
	send_list(self, _sym_int, 1, &a);
}

void send_float(TTPtr self, double value)
{
	t_atom a;
	
	atom_setfloat(&a, value);
	send_list(self, _sym_float, 1, &a);
}

void send_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;

	jamoma_sender_send((TTSenderPtr)x->wrappedObject, msg, argc, argv);
}

void send_set(TTPtr self, SymbolPtr address)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	x->address =  TTADRS(jamoma_parse_dieze((ObjectPtr)x, address)->s_name);
	
	send_subscribe(self);
}
