/* 
 *	jcom.parameter
 *	External object
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTModularClassWrapperMax.h"

#define set_out 0
#define data_out 1
#define	dump_out 2

// Definitions
void		WrapTTParameterClass(WrappedClassPtr c);
void		WrappedParameterClass_new(TTPtr self, AtomCount argc, AtomPtr argv);
void		WrappedParameterClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

t_max_err	param_notify(TTPtr self, SymbolPtr s, SymbolPtr msg, TTPtr sender, TTPtr data);
void		param_assist(TTPtr self, TTPtr b, long msg, AtomCount arg, char *dst);

void		param_share_context_node(TTPtr self, TTNodePtr *contextNode);
void		param_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		param_build(TTPtr self, SymbolPtr address);

void		param_bang(TTPtr self);
void		param_int(TTPtr self, long value);
void		param_float(TTPtr self, double value);
void		param_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		param_inc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		param_dec(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		param_ui_queuefn(TTPtr self);


int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTParameterClass;
	spec->_new = &WrappedParameterClass_new;
	spec->_any = &WrappedParameterClass_anything;
	
	return wrapTTModularClassAsMaxClass(TT("Parameter"), "jcom.parameter", NULL, spec);
}

void WrapTTParameterClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)param_notify,						"notify",				A_CANT, 0);
	class_addmethod(c->maxClass, (method)param_assist,						"assist",				A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)param_share_context_node,			"share_context_node",	A_CANT,	0);
	class_addmethod(c->maxClass, (method)param_return_value,				"return_value",			A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)param_bang,						"bang",					0L);
	class_addmethod(c->maxClass, (method)param_int,							"int",					A_LONG, 0);
	class_addmethod(c->maxClass, (method)param_float,						"float",				A_FLOAT, 0);
	class_addmethod(c->maxClass, (method)param_list,						"list",					A_GIMME, 0);
	
	class_addmethod(c->maxClass, (method)WrappedParameterClass_anything,	"symbol",				A_SYM, 0);
	
	class_addmethod(c->maxClass, (method)param_inc,							"+",					A_GIMME, 0);
	class_addmethod(c->maxClass, (method)param_dec,							"-",					A_GIMME, 0);
}

void WrappedParameterClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					address;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	
	// A Modular object needs an address argument
	if (attrstart && argv) 
		address = atom_getsym(argv);
	else
		address = _sym_nothing;
	
	// create the parameter
	jamoma_parameter_create((ObjectPtr)x, &x->wrappedObject);
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)param_build, address, 0, 0);

	// Make one outlet
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 1);
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
	x->outlets[set_out] = outlet_new(x, NULL);						// anything outlet to output data prepend with a set symbol
	
	// Make qelem object
	x->ui_qelem = qelem_new(x, (method)param_ui_queuefn);
}

void WrappedParameterClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_atom a;
	
	if (!argc) {
		atom_setsym(&a, msg);
		param_list(self, _sym_symbol, 1, &a);
	}
}

void param_build(TTPtr self, SymbolPtr address)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v, args;
	TTNodePtr					node = NULL;
	TTSymbolPtr					nodeAddress;
	TTPtr						context;
	
	jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, address, &x->subscriberObject);
	
	// if the subscription is successful
	if (x->subscriberObject) {

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

t_max_err param_notify(TTPtr self, SymbolPtr s, SymbolPtr msg, TTPtr sender, TTPtr data)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	ObjectPtr	context;
	TTSymbolPtr	contextAddress;
	TTValue		v;

	x->subscriberObject->getAttributeValue(TT("Context"), v);
	v.get(0, (TTPtr*)&context);
	
	// if the patcher is deleted
	if (sender == context)
		if (msg == _sym_free) {
			
			// delete the context node if it exists
			x->subscriberObject->getAttributeValue(TT("ContextAddress"), v);
			v.get(0, &contextAddress);
			
			TTModularDirectory->TTNodeRemove(contextAddress);
			
			// delete the subscriber
			TTObjectRelease(TTObjectHandle(&x->subscriberObject));
			
			// no more notification
			object_detach_byptr((ObjectPtr)x, context);
		}
	
	return MAX_ERR_NONE;
}

// Method for Assistance Messages
void param_assist(TTPtr self, TTPtr b, long msg, AtomCount arg, char *dst)
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

void param_bang(TTPtr self)
{
	param_list(self, _sym_bang, 0, NULL);
}

void param_int(TTPtr self, long value)
{
	t_atom a;
	
	atom_setlong(&a, value);
	param_list(self, _sym_int, 1, &a);
}

void param_float(TTPtr self, double value)
{
	t_atom a;
	
	atom_setfloat(&a, value);
	param_list(self, _sym_float, 1, &a);
}

void param_list(TTPtr self, t_symbol *msg, long argc, t_atom *argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;

	jamoma_parameter_command((TTParameterPtr)x->wrappedObject, msg, argc, argv);
}


void param_share_context_node(TTPtr self, TTNodePtr *contextNode)
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

void param_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue		v;
	TTBoolean	freeze;
	TTUInt8		i;
	
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

void param_ui_queuefn(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	outlet_anything(x->outlets[set_out], _sym_set, x->argc, x->argv);
}

void param_inc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue v;

	jamoma_ttvalue_from_Atom(v, msg, argc, argv);
	x->wrappedObject->sendMessage(TT("Inc"), v);
}


void param_dec(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue v;
	
	jamoma_ttvalue_from_Atom(v, msg, argc, argv);
	x->wrappedObject->sendMessage(TT("Dec"), v);
}