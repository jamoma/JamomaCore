/* 
 *	jcom.viewArray
 *	External object
 *	Copyright © 2011 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTModularClassWrapperMax.h"

#define set_out 0
#define data_out 1
#define index_out 2
#define	dump_out 3

// This is used to store extra data
typedef struct extra {
	
	long		array_index;		/// the index cursor
	
	TTPtr		ui_qelem;			///< to output "qlim'd" data for ui object
	
	SymbolPtr	attr_format;		// Is it 'single' data output or 'array' output
	TTUInt32	array_size;			// keep array size in memory
	TTValuePtr	*array_value;		// store each value in an array to output them together
	
	TTBoolean	changingAddress;	// a flag to protect from succession of address changes
	TTValue		args;				// keep attributes argument of the external
} t_extra;
#define EXTRA ((t_extra*)x->extra)


// Definitions
void		WrapTTDataClass(WrappedClassPtr c);
void		WrappedDataClass_new(TTPtr self, AtomCount argc, AtomPtr argv);
void		WrappedDataClass_free(TTPtr self);

void		view_assist(TTPtr self, TTPtr b, long msg, AtomCount arg, char *dst);

void		view_new_address(TTPtr self, SymbolPtr msg);
void		view_array_subscribe(TTPtr self, SymbolPtr address, AtomCount index, AtomPtr argv);
void		view_array_create(ObjectPtr x, TTObjectPtr *returnedViewer, long index);
void		view_array_select(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		view_address(TTPtr self, SymbolPtr name);

void		view_array_return_value(TTPtr baton, TTValue& v);

t_max_err	view_get_format(TTPtr self, TTPtr attr, AtomCount *ac, AtomPtr *av);
t_max_err	view_set_format(TTPtr self, TTPtr attr, AtomCount ac, AtomPtr av);

void		WrappedDataClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		view_bang(TTPtr self);
void		view_int(TTPtr self, long value);
void		view_float(TTPtr self, double value);
void		view_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		view_ui_queuefn(TTPtr self);

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTDataClass;
	spec->_new = &WrappedDataClass_new;
	spec->_free = &WrappedDataClass_free;
	spec->_any = &WrappedDataClass_anything;

	return wrapTTModularClassAsMaxClass(TT("Viewer"), "jcom.viewArray", NULL, spec);

}

void WrapTTDataClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)view_assist,						"assist",				A_CANT, 0L);
		
	class_addmethod(c->maxClass, (method)view_bang,							"bang",					0L);
	class_addmethod(c->maxClass, (method)view_int,							"int",					A_LONG, 0);
	class_addmethod(c->maxClass, (method)view_float,						"float",				A_FLOAT, 0);
	class_addmethod(c->maxClass, (method)view_list,							"list",					A_GIMME, 0);
	
	class_addmethod(c->maxClass, (method)view_array_select,					"array/select",			A_GIMME,0);
	
	class_addmethod(c->maxClass, (method)view_address,						"address",				A_SYM,0);

	CLASS_ATTR_SYM(c->maxClass,			"format",	0,		WrappedModularInstance,	extra);		// use extra member to store format
	CLASS_ATTR_ACCESSORS(c->maxClass,	"format",	view_get_format,	view_set_format);
	CLASS_ATTR_ENUM(c->maxClass,		"format",	0,		"single array");

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

	// add an inlet for the index
	x->inlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 1);
	x->inlets[0] = proxy_new(x, 1, &x->index);
	
	// Make outlets (before attr_args_process)
	/////////////////////////////////////////////////////////////////////////////////
	
	// Don't create outlets during dynamic changes
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 3);
	x->outlets[index_out] = outlet_new(x, NULL);					// long outlet to output view index
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
	x->outlets[set_out] = outlet_new(x, NULL);						// anything outlet to output defered data prepend with a 'set'
	
	// Prepare extra data for parameters and messages
	x->extra = (t_extra*)malloc(sizeof(t_extra));

	// Make qelem object
	EXTRA->ui_qelem = qelem_new(x, (method)view_ui_queuefn);
	
	EXTRA->attr_format = gensym("single");
	EXTRA->array_size = 0;
	EXTRA->array_value = NULL;

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
	defer_low((ObjectPtr)x, (method)view_new_address, relativeAddress, 0, NULL);
}

void WrappedDataClass_free(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;

	// delete array
	if (EXTRA->array_value) {
		for (TTUInt32 i=0; i<EXTRA->array_size; i++)
			if (EXTRA->array_value[i])
				delete EXTRA->array_value[i];
			
		free(EXTRA->array_value);
	}
	
	qelem_free(EXTRA->ui_qelem);
	
	free(EXTRA);
}
	
void view_new_address(TTPtr self, SymbolPtr relativeAddress)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	AtomCount					argc = 0; 
	AtomPtr						argv = NULL;
	long						number, i;
	SymbolPtr					instanceAddress;
	TTObjectPtr					anObject;
	TTValue						v;
	
	if (!x->iterateInternals) {
		
		x->useInternals = YES;
		x->internals = new TTHash();
		x->internals->setThreadProtection(YES);
		x->cursor = kTTSymEmpty;
		
		// in any case
		jamoma_patcher_get_info((ObjectPtr)x, &x->patcherPtr, &x->patcherContext, &x->patcherClass, &x->patcherName);
		
		number = jamoma_parse_bracket(relativeAddress, x->i_format, x->s_format);
		
		if (number) {
			
			// Starts iteration on internals
			x->iterateInternals = YES;
			
			// prepare array_value
			EXTRA->array_size = number;
			EXTRA->array_value = (TTValuePtr*)malloc(sizeof(TTValuePtr)*number);
			for (TTUInt32 j=0; j<EXTRA->array_size; j++)
				EXTRA->array_value[j] = NULL;
			
			for (i = 1; i <= number; i++) {
				
				jamoma_edit_numeric_instance(x->i_format, &instanceAddress, i);
				
				// create a viewer
				view_array_create((ObjectPtr)x, &anObject, i);
				
				// append the viewer to the internals table
				v = TTValue(TTPtr(anObject));
				v.append(TTADRS(instanceAddress->s_name));
				x->internals->append(TT(instanceAddress->s_name), v);
				
				// subscribe the viewer
				view_array_subscribe(anObject, instanceAddress, i, NULL);
			}
			
			// Ends iteration on internals
			x->iterateInternals = NO;
			
			// handle args
			jamoma_ttvalue_to_Atom(EXTRA->args, &argc, &argv);
			if (argc && argv)
				attr_args_process(x, argc, argv);
			
			// select all views
			view_array_select(self, gensym("*"), 0, NULL);
		}
	}
	else 
		object_error((ObjectPtr)x, "can't change to %s address. Please defer low", relativeAddress->s_name);
	
	EXTRA->changingAddress = NO;
}

void view_array_subscribe(TTPtr obj, SymbolPtr msg, AtomCount index, AtomPtr argv)
{
	TTViewerPtr			aViewer = (TTViewerPtr)self;
	TTSubscriberPtr		aSubscriber = NULL;
	TTNodeAddressPtr	address = TTADRS(msg->s_name);
	TTNodeAddressPtr	contextAddress = kTTAdrsEmpty;
	TTNodeAddressPtr	absoluteAddress;
	TTObjectPtr			toSubscribe;
	TTValue				v;
	
	// for absolute address
	if (address->getType() == kAddressAbsolute) {
		
		aViewer->setAttributeValue(kTTSym_address, x->address);
		return;
	}
	
	// Do we subscribe the Viewer ?
	
	// View patcher case :
	if (x->patcherContext == kTTSym_view) {
		
		// if the address refer to the hub (only :attributeName) don't subscribe the Viewer
		if (address->getParent() == NO_PARENT && 
			address->getName() == NO_NAME && 
			address->getInstance() == NO_INSTANCE && 
			address->getAttribute() != NO_ATTRIBUTE)
			toSubscribe = NULL;
		
		// else try to subscribe the Viewer
		else toSubscribe = aViewer;
		
	}
	// Model patcher case : 
	// try to binds on the parameter|message|return of the model without subscribing the Viewer
	else if (x->patcherContext == kTTSym_model)
		toSubscribe = NULL;
	
	// Any other case : no subscription
	else 
		toSubscribe = NULL;
	
	
	// Try to subscribe the Viewer or just use the Subscriber to get the context address
	if (!jamoma_subscriber_create((ObjectPtr)x, toSubscribe, address, &aSubscriber)) {
		// get the context address to make
		// a viewer on the contextAddress/model/address parameter
		aSubscriber->getAttributeValue(TT("contextAddress"), v);
		v.get(0, (TTSymbolPtr*)&contextAddress);
	}
	else
		contextAddress = kTTAdrsRoot;
	
	// bind on the /model/address parameter (in view patch)  or set address directly
	if (contextAddress != kTTAdrsEmpty) {
		
		if (x->patcherContext == kTTSym_view) {
			post("TODO jcom.viewArray : makeInternals_receiver for model/address");
			// makeInternals_receiver(x, contextAddress, TT("/model/address"), gensym("return_model_address"), &anObject);
			// anObject->sendMessage(kTTSym_Get);
		}
		else {
			absoluteAddress = contextAddress->appendAddress(x->address);
			aViewer->setAttributeValue(kTTSym_address, absoluteAddress);
		}
	}
	
	// In Model case : while the context node is not registered : try to binds again :(
	// (to -- this is not a good way todo. For binding we should make a subscription 
	// to a notification mechanism and each time an TTObjet subscribes to the namespace
	// using jamoma_subscriber_create we notify all the externals which have used 
	// jamoma_subscriber_create with NULL object to bind)
	else if (x->patcherContext == kTTSym_model) {
		
		// release the subscriber
		TTObjectRelease(TTObjectHandle(&aSubscriber));
		aSubscriber = NULL;
		
		// The following must be deferred because we have to interrogate our box,
		// and our box is not yet valid until we have finished instantiating the object.
		// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
		defer_low((ObjectPtr)x, (method)view_array_subscribe, msg, index, argv);
		return;
	}
}

void view_array_create(ObjectPtr x, TTObjectPtr *returnedViewer, long index)
{
	TTValue			args;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	
	// prepare arguments
	
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &returnValueCallback, kTTValNONE);

	returnValueBaton = new TTValue(TTPtr(x));
	returnValueBaton->append(TTUInt32(index));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&view_array_return_value));
	
	args.append(returnValueCallback);
	
	*returnedViewer = NULL;
	TTObjectInstantiate(TT("Viewer"), TTObjectHandle(returnedViewer), args);
}

void view_array_select(TTPtr self, t_symbol *msg, long argc, t_atom *argv)
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
					EXTRA->array_index = i;
					jamoma_edit_numeric_instance(x->i_format, &instanceAddress, i);
					x->cursor = TT(instanceAddress->s_name);
				}
				else
					object_error((ObjectPtr)x, "array/select : %ld is not a valid index", i);
			}
			else if (atom_gettype(argv) == A_SYM) {
				
				if (atom_getsym(argv) == gensym("*")) {
					EXTRA->array_index = -1;
					jamoma_edit_numeric_instance(x->i_format, &instanceAddress, 1);
					x->cursor = TT(instanceAddress->s_name);
				}
				else
					object_error((ObjectPtr)x, "array/select : %s is not a valid index", i);
			}
		}
		else {
			if (msg == gensym("*")) {
				EXTRA->array_index = -1;
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

void view_address(TTPtr self, SymbolPtr address)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	// Avoid succession of address changes
	// the changingAddress flag is set to YES below and 
	// set to NO at the end of view_new_address method
	if (!x->iterateInternals && !EXTRA->changingAddress) {
		
		// unregister internals
		wrappedModularClass_unregister(x);
			
		// delete array
		if (EXTRA->array_value) {
			for (TTUInt32 i=0; i<EXTRA->array_size; i++)
				if (EXTRA->array_value[i])
					delete EXTRA->array_value[i];
			
			EXTRA->array_size = 0;
			free(EXTRA->array_value);
		}
		
		// rebuild internals
		EXTRA->changingAddress = YES;
		defer_low(self,(method)view_new_address, address, 0, NULL);
	}
	else 
		object_error((ObjectPtr)x, "can't change to %s address. Please defer low", address->s_name);
}

// Method for Assistance Messages
void view_assist(TTPtr self, TTPtr b, long msg, AtomCount arg, char *dst)
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

void view_bang(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if (x->internals) {
		view_list(self, _sym_bang, 0, NULL);
	}
	else
		object_error((ObjectPtr)x, "bang : the array is empty");
}

void view_int(TTPtr self, long value)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	t_atom a;

	if (proxy_getinlet((ObjectPtr)x)) {
		atom_setlong(&a, value);
		view_array_select(self, _sym_nothing, 1, &a);
	}
	else {
		if (x->internals) {
			atom_setlong(&a, value);
			view_list(self, _sym_int, 1, &a);
		}
		else
			object_error((ObjectPtr)x, "int : the array is empty");
	}
}

void view_float(TTPtr self, double value)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	t_atom a;
	
	if (x->internals) {
		atom_setfloat(&a, value);
		view_list(self, _sym_float, 1, &a);
	}
	else
		object_error((ObjectPtr)x, "float : the array is empty");
}

void view_list(TTPtr self, t_symbol *msg, long argc, t_atom *argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;

	if (x->internals) {
		
		// send to each view
		if (EXTRA->array_index == -1) {
			TTValue keys;
			if (!x->internals->isEmpty()) {
				x->internals->getKeys(keys);
				for (int i=0; i<keys.getSize(); i++) {
					keys.get(i, &x->cursor);
					jamoma_viewer_send((TTViewerPtr)selectedObject, msg, argc, argv);
				}
			}
			x->cursor = kTTSymEmpty;
		}
		else
			jamoma_viewer_send((TTViewerPtr)selectedObject, msg, argc, argv);
		
	}
	else
		object_error((ObjectPtr)x, "list : the array is empty");
}

void WrappedDataClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if (proxy_getinlet((ObjectPtr)x)) {
		view_array_select(self, msg, argc, argv);
	}
	else {
		
		// send to each view
		if (EXTRA->array_index == -1) {
			TTValue keys;
			if (!x->internals->isEmpty()) {
				x->internals->getKeys(keys);
				for (int i=0; i<keys.getSize(); i++) {
					keys.get(i, &x->cursor);
					jamoma_viewer_send((TTViewerPtr)selectedObject, msg, argc, argv);
				}
				x->cursor = kTTSymEmpty;
			}
		}
		else
			jamoma_viewer_send((TTViewerPtr)selectedObject, msg, argc, argv);
	}
}

void view_array_return_value(TTPtr baton, TTValue& v)
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
	if (EXTRA->array_index == -1) {
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
				
				// if the view have not been updated yet
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
	
	// Copy msg and atom in order to avoid losing data
	copy_msg_argc_argv((TTPtr)x, msg, argc, argv);
	
	qelem_set(EXTRA->ui_qelem);	
	
	if (shifted)
		argv--;
	sysmem_freeptr(argv);
}

void view_ui_queuefn(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	outlet_anything(x->outlets[set_out], _sym_set, x->argc, x->argv);
}

t_max_err view_get_format(TTPtr self, TTPtr attr, AtomCount *ac, AtomPtr *av)
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

t_max_err view_set_format(TTPtr self, TTPtr attr, AtomCount ac, AtomPtr av) 
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