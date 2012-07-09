/* 
 *	jcom.send
 *	External object
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTModularClassWrapperMax.h"

/** Store extra data relating to jcom.in binding */
typedef struct extra {
	
	TTBoolean	bindInput;	// is the jcom.send is binding an input ?
	TTValuePtr	mapChannel;	// the channel mapping of the the jcom.send (to bind select which channel to bind)

} t_extra;
#define EXTRA ((t_extra*)x->extra)

// Definitions
void	WrapTTSenderClass(WrappedClassPtr c);
void	WrappedSenderClass_new(TTPtr self, AtomCount argc, AtomPtr argv);
void	WrappedSenderClass_free(TTPtr self);
void	WrappedSenderClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void	send_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void	send_subscribe(TTPtr self);

void	send_return_model_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void	send_bang(TTPtr self);
void	send_int(TTPtr self, long value);
void	send_float(TTPtr self, double value);
void	send_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void	send_input(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void	send_set(TTPtr self, SymbolPtr address);


int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTSenderClass;
	spec->_new = &WrappedSenderClass_new;
	spec->_free = &WrappedSenderClass_free;
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
	long						i, number;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	
	// read first argument
	if (attrstart && argv) 
		address = atom_getsym(argv);
	else
		address = _sym_nothing;
	
	x->address = TTADRS(jamoma_parse_dieze((ObjectPtr)x, address)->s_name);
	x->argc = 0; // the argc member is usefull to count how many time the external tries to bind
	
	// Prepare extra data
	x->extra = (t_extra*)malloc(sizeof(t_extra));
	
	jamoma_sender_create((ObjectPtr)x, &x->wrappedObject);
	
	// is the jcom.send tries to bind on a Data or an Input object ?
	if (x->address->getName() == TT("in")) {
		
		EXTRA->bindInput = YES;
		JamomaDebug object_post((ObjectPtr)x, "binds on a jcom.in");
		
		// read second optionnal argument 
		// (to map input channel in case we bind a jcom.in)
		EXTRA->mapChannel = new TTValue(0);
		if (attrstart > 1 && argv)
			jamoma_ttvalue_from_Atom(*EXTRA->mapChannel, _sym_nothing, attrstart-1, argv+1);
			
		// a proxy to handle each channel
		x->inlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * EXTRA->mapChannel->getSize());
		for (i = EXTRA->mapChannel->getSize()-1; i >= 1; i--)
			x->inlets[i] = proxy_new(x, i, &x->index);
	}
	else {
		EXTRA->bindInput = NO;
		EXTRA->mapChannel = new TTValue(0);
	}
	
	// Prepare memory to store internal objects
	x->internals = new TTHash();
	
	// handle attribute args
	attr_args_process(x, argc, argv);
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)send_subscribe, NULL, 0, 0);
}

void WrappedSenderClass_free(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	delete EXTRA->mapChannel;
	free(EXTRA);
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
	TTErr						err;
	
	if (x->address == kTTAdrsEmpty)
		return;
	
	// for absolute address
	if (x->address->getType() == kAddressAbsolute) {
		
		x->wrappedObject->setAttributeValue(kTTSym_address, x->address);
		return;
	}
	
	// for relative address
	jamoma_patcher_get_info((ObjectPtr)x, &x->patcherPtr, &x->patcherContext, &x->patcherClass, &x->patcherName);
	
	if (!jamoma_subscriber_create((ObjectPtr)x, NULL, TTADRS("model/address"), &x->subscriberObject)) {
		
		// get the context address to make
		// a viewer on the contextAddress/model/address parameter
		x->subscriberObject->getAttributeValue(TT("contextAddress"), v);
		v.get(0, (TTSymbolPtr*)&contextAddress);
		
		if (x->patcherContext) {
			makeInternals_receiver(x, contextAddress, TT("/model/address"), gensym("return_model_address"), &anObject);
			anObject->sendMessage(kTTSym_Get);
			return;
		}
	}
	
	// else, if no context, set address directly
	else if (x->patcherContext == NULL) {
		contextAddress = kTTAdrsRoot;
		absoluteAddress = contextAddress->appendAddress(x->address);
		x->wrappedObject->setAttributeValue(kTTSym_address, absoluteAddress);
		return;
	}
	
	// otherwise while the context node is not registered : try to binds again :(
	// (to -- this is not a good way todo. For binding we should make a subscription 
	// to a notification mechanism and each time an TTObjet subscribes to the namespace
	// using jamoma_subscriber_create we notify all the externals which have used 
	// jamoma_subscriber_create with NULL object to bind)
		
	// release the subscriber
	TTObjectRelease(TTObjectHandle(&x->subscriberObject));
	x->subscriberObject = NULL;
	
	x->argc++; // the index member is usefull to count how many time the external tries to bind
	if (x->argc > 100) {
		object_error((ObjectPtr)x, "tries to bind too many times on %s", x->address->getCString());
		object_obex_dumpout((ObjectPtr)x, gensym("error"), 0, NULL);
		return;
	}
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)send_subscribe, NULL, 0, 0);
}

void send_return_model_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTNodeAddressPtr			absoluteAddress;
	
	if (argc && argv) {
		
		// set address attribute of the wrapped Receiver object
		absoluteAddress = TTADRS(atom_getsym(argv)->s_name)->appendAddress(x->address);
		x->wrappedObject->setAttributeValue(kTTSym_address, absoluteAddress);
		x->argc = 0; // the index member is usefull to count how many time the external tries to bind
		
		JamomaDebug object_post((ObjectPtr)x, "binds on %s", absoluteAddress->getCString());
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
	
	// if the jcom.send binds on a jcom.in
	if (EXTRA->bindInput)
		return send_input(self, msg, argc, argv);
	
	// dynamic address setting for jcom.send without address
	if (x->address == kTTAdrsEmpty) {
			
			TTNodeAddressPtr anAddress = TTADRS(msg->s_name);
			SymbolPtr newMsg;
			
			// send only to absolute address
			if (anAddress->getType() == kAddressAbsolute) {
				
				x->wrappedObject->setAttributeValue(kTTSym_address, anAddress);
				
				// edit message type
				if (argc == 0)
					newMsg = _sym_nothing;
				else if (argc > 1)
					newMsg = _sym_list;
				else if (atom_gettype(argv) == A_LONG)
					newMsg = _sym_int;
				else if (atom_gettype(argv) == A_FLOAT)
					newMsg = _sym_float;
				else if (atom_gettype(argv) == A_SYM)
					newMsg = _sym_symbol;
				
				jamoma_sender_send((TTSenderPtr)x->wrappedObject, newMsg, argc, argv);
			}
	}
	else
		jamoma_sender_send((TTSenderPtr)x->wrappedObject, msg, argc, argv);
}

void send_input(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue		v, aCacheElement;
	TTListPtr	objectCache;
	TTObjectPtr anObject;
	TTUInt16	index;
	
	EXTRA->mapChannel->get(proxy_getinlet((ObjectPtr)x), index);
	
	// get the object cache of the Sender object
	if (!x->wrappedObject->getAttributeValue(kTTSym_objectCache, v)) {
		
		v.get(0, (TTPtr*)&objectCache);
		
		jamoma_ttvalue_from_Atom(v, msg, argc, argv);
		
		// send data to each node of the selection
		for (objectCache->begin(); objectCache->end(); objectCache->next()) {
			
			aCacheElement = objectCache->current();
			
			// then his object
			aCacheElement.get(0, (TTPtr*)&anObject);
			
			if (anObject) {
				
				if (anObject->getName() == TT("Input")) {
					
					
					TTInputPtr(anObject)->mIndex = index-1;
					anObject->sendMessage(kTTSym_Send, v, kTTValNONE);
				}
			}
		}
	}
}

void send_set(TTPtr self, SymbolPtr address)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	x->address =  TTADRS(jamoma_parse_dieze((ObjectPtr)x, address)->s_name);
	
	send_subscribe(self);
}
