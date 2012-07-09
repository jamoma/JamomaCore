/* 
 *	jcom.receive
 *	External object
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTModularClassWrapperMax.h"


#define data_out 0
#define address_out 1
#define dump_out 2

/** Store extra data relating to jcom.out binding */
typedef struct extra {
	
	TTBoolean	bindOutput;	// is the jcom.send is binding an output ?
	TTValuePtr	mapChannel;	// the channel mapping of the the jcom.send (to bind select which channel to bind)

} t_extra;
#define EXTRA ((t_extra*)x->extra)

// Definitions
void	WrapTTReceiverClass(WrappedClassPtr c);
void	WrappedReceiverClass_new(TTPtr self, AtomCount argc, AtomPtr argv);
void	WrappedReceiverClass_free(TTPtr self);

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
	spec->_free = &WrappedReceiverClass_free;
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
	
	jamoma_receiver_create((ObjectPtr)x, &x->wrappedObject);
	
	// is the jcom.send tries to bind on a Data or an Output object ?
	if (x->address->getName() == TT("out")) {
		
		EXTRA->bindOutput = YES;
		JamomaDebug object_post((ObjectPtr)x, "binds on a jcom.out");
		
		// use the signal preview mechanism
		x->address = x->address->appendAttribute(TT("signal"));

		// read second optionnal argument 
		// (to map output channel in case we bind a jcom.out)
		EXTRA->mapChannel = new TTValue(0);
		if (attrstart > 1 && argv)
			jamoma_ttvalue_from_Atom(*EXTRA->mapChannel, _sym_nothing, attrstart-1, argv+1);
		
		// Make an outlet per channel
		x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * EXTRA->mapChannel->getSize());
		for (i = EXTRA->mapChannel->getSize()-1; i >= 0; i--)
			x->outlets[i] = outlet_new(x, 0L);
	}
	else {
		
		EXTRA->bindOutput = NO;
		EXTRA->mapChannel = new TTValue(0);
		
		// Make two outlets
		x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 2);
		x->outlets[address_out] = outlet_new(x, NULL);					// anything outlet to output address
		x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
	}
	
	// Prepare memory to store internal objects
	x->internals = new TTHash();

	// handle attribute args
	attr_args_process(x, argc, argv);
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)receive_subscribe, NULL, 0, 0);
}

void WrappedReceiverClass_free(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	delete EXTRA->mapChannel;
	free(EXTRA);
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
	defer_low((ObjectPtr)x, (method)receive_subscribe, NULL, 0, 0);
}

void receive_return_model_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
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

void receive_return_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if (!EXTRA->bindOutput)
		outlet_anything(x->outlets[address_out], msg, argc, argv);
}

void receive_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue		v;
	TTObjectPtr anObject;
	TTUInt16	map, index;
	TTBoolean	found = NO;
	
	if (EXTRA->bindOutput) {

		if (!x->wrappedObject->getAttributeValue(kTTSym_objectCache, v)) {
			
			v.get(0, (TTPtr*)&anObject);
			
			for (index = 0; index < EXTRA->mapChannel->getSize(); index++) {
				
				EXTRA->mapChannel->get(index, map);
				found = map-1 == TTOutputPtr(anObject)->mIndex;
				
				if (found) break;
			}
		}
	}
	else {
		index = data_out;
		found = true;
	}
	
	if (found) {
		
		// avoid blank before data
		if (msg == _sym_nothing)
			outlet_atoms(x->outlets[index], argc, argv);
		else
			outlet_anything(x->outlets[index], msg, argc, argv);
	}
}

void receive_bang(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	// catch error : dump an error
	if (x->wrappedObject->sendMessage(kTTSym_Get))
		object_obex_dumpout(self, _sym_error, 0, NULL);
}

void receive_set(TTPtr self, SymbolPtr address)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	x->address =  TTADRS(jamoma_parse_dieze((ObjectPtr)x, address)->s_name);
	
	receive_subscribe(self);
}