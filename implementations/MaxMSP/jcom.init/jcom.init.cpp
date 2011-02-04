/* 
 * jcom.init
 * External for Jamoma: send bang to initialize something
 *	bang source may be global or for just one module
 * By Tim Place, Copyright � 2006
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "Jamoma.h"

// Data Structure for this object
typedef struct _init{
	Object				obj;
	TTNodePtr			contextNode;
	TTReceiverPtr		initReceiver;
	void				*outlet;
	void				*dumpout;
} t_init;

// Prototypes for methods
void *init_new(SymbolPtr s, AtomCount argc, AtomPtr argv);			// New Object Creation Method
void init_free(t_init *x);
void init_assist(t_init *x, void *b, long m, long a, char *s);		// Assistance Method
void init_build(t_init *x, SymbolPtr address);
void init_return_address(t_init *x, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void init_return_value(t_init *x, SymbolPtr msg, AtomCount argc, AtomPtr argv);
//void init_bang(t_init *x);

// Globals
t_class			*g_init_class;			// Required. Global pointing to this class


/************************************************************************************/
// Main() Function

int JAMOMA_EXPORT_MAXOBJ main(void)
{
	t_class		*c;
	
	jamoma_init();
	common_symbols_init();

	// Define our class
	c = class_new("jcom.init",(method)init_new, (method)init_free, sizeof(t_init), (method)0L, A_GIMME, 0);

	// Make methods accessible for our class: 
	//class_addmethod(c, (method)init_bang,				"bang",				0L);
	class_addmethod(c, (method)init_return_address,		"return_address",	A_CANT, 0);
	class_addmethod(c, (method)init_return_value,		"return_value",		A_CANT, 0);
    class_addmethod(c, (method)init_assist,				"assist",			A_CANT, 0L);
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	g_init_class = c;

	return 0;
}


/************************************************************************************/
// Object Life

// Create
void *init_new(SymbolPtr s, AtomCount argc, AtomPtr argv)
{
	long 		attrstart = attr_args_offset(argc, argv);						// support normal arguments
	t_init 		*x = (t_init *)object_alloc(g_init_class);
	SymbolPtr	address = _sym_nothing;											// could be used to binds on a sub level jcom.hub

	if (attrstart && argv)
		atom_arg_getsym(&address, 0, attrstart, argv);
	
	if (x) {
		
		x->dumpout = outlet_new(x, NULL);
		x->outlet = outlet_new(x, NULL);
		object_obex_store((void *)x, jps_dumpout, (object *)x->dumpout);		// setup the dumpout

		x->contextNode = NULL;
		x->initReceiver = NULL;
		
		attr_args_process(x, argc, argv);										// handle attribute args				

		// The following must be deferred because we have to interrogate our box,
		// and our box is not yet valid until we have finished instantiating the object.
		// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
		defer_low((ObjectPtr)x, (method)init_build, address, 0, 0);
	}
	
	return (x);																	// Return the pointer
}

void init_free(t_init *x)
{	
	if (x->initReceiver)
		TTObjectRelease(TTObjectHandle(&x->initReceiver));
}



/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void init_assist(t_init *x, void *b, long msg, long arg, char *dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "");
	else if (msg==2) { // Outlets
		if (arg == 0) 
			strcpy(dst, "0 when initialization starts, 1 when initilization is done");
		else 
			strcpy(dst, "dumpout");
	}
}

void init_build(t_init *x, SymbolPtr address)		// address : could be used to binds on a sub level jcom.hub
{
	TTSymbolPtr		patcherContext, patcherClass;
	TTSymbolPtr		contextAddress, levelAddress;
	TTValue			v, args;
	TTObjectPtr		returnAddressCallback, returnValueCallback;
	TTValuePtr		returnAddressBaton, returnValueBaton;
	
	jamoma_patcher_get_context_class((ObjectPtr)x, &patcherContext, &patcherClass);
	x->contextNode = jamoma_context_get_node((ObjectPtr)x, patcherContext);
	
	if (x->contextNode) {
		
		x->contextNode->getOscAddress(&contextAddress, S_SEPARATOR);
		
		if (address == _sym_nothing)
			levelAddress = contextAddress;
		else
			joinOSCAddress(contextAddress, TT(address->s_name), &levelAddress);
		
		if (!JamomaDirectory->getTTNodeForOSC(levelAddress, &x->contextNode)) {
			
			// Make a TTReceiver object
			args.append(JamomaApplication);
			args.append(levelAddress);
			args.append(kTTSym_initialized);
			
			returnAddressCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
			TTObjectInstantiate(TT("callback"), &returnAddressCallback, kTTValNONE);
			returnAddressBaton = new TTValue(TTPtr(x));
			returnAddressCallback->setAttributeValue(kTTSym_baton, TTPtr(returnAddressBaton));
			returnAddressCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_address));
			args.append(returnAddressCallback);
			
			returnValueCallback = NULL;				// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
			TTObjectInstantiate(TT("callback"), &returnValueCallback, kTTValNONE);
			returnValueBaton = new TTValue(TTPtr(x));
			returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
			returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value));
			args.append(returnValueCallback);
			
			x->initReceiver = NULL;
			TTObjectInstantiate(TT("Receiver"), TTObjectHandle(&x->initReceiver), args);
			
			// Ask a result in case the initialisation has been done
			x->initReceiver->sendMessage(TT("Get"));
			
			return;
		}
	}
	
	// While the context node is not registered : try to build (to --Is this not dangerous ?)
	if (x->contextNode != JamomaDirectory->getRoot()) {
		
		// The following must be deferred because we have to interrogate our box,
		// and our box is not yet valid until we have finished instantiating the object.
		// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
		defer_low((ObjectPtr)x, (method)init_build, address, 0, 0);
	}
}

void init_return_address(t_init *x, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	;
}

// GO !
void init_return_value(t_init *x, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	if (atom_gettype(argv) == A_LONG)
		outlet_int(x->outlet, atom_getlong(argv));
}

/*
// BANG !
void init_bang(t_init *x)
{
	if (x->contextNode)
		if (x->contextNode->getObject())
			x->contextNode->getObject()->sendMessage(TT("Init"));
}
 */
