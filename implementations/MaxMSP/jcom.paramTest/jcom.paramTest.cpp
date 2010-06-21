/* 
 *	jcom.paramTest
 *	External object
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTModularClassWrapperMax.h"

#define data_out 0

// Definitions
void		WrapTTParameterClass(WrappedClassPtr c);
void		WrappedParameterClass_new(TTPtr self, AtomCount argc, AtomPtr argv);
void		WrappedParameterClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

t_max_err	paramTest_notify(TTPtr self, t_symbol *s, t_symbol *msg, void *sender, void *data);
void		paramTest_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void		paramTest_share_context_node(TTPtr self, TTNodePtr *contextNode);
void		paramTest_return_value(TTPtr self, t_symbol *msg, long argc, t_atom *argv);

void		paramTest_build(TTPtr self, SymbolPtr address);

void		paramTest_bang(TTPtr self);
void		paramTest_int(TTPtr self, long value);
void		paramTest_float(TTPtr self, double value);
void		paramTest_list(TTPtr self, t_symbol *msg, long argc, t_atom *argv);


int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTParameterClass;
	spec->_new = &WrappedParameterClass_new;
	spec->_any = &WrappedParameterClass_anything;
	
	return wrapTTModularClassAsMaxClass(TT("Parameter"), "jcom.paramTest", NULL, spec);
}

void WrapTTParameterClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)paramTest_notify,					"notify",				A_CANT, 0);
	class_addmethod(c->maxClass, (method)paramTest_assist,					"assist",				A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)paramTest_share_context_node,		"share_context_node",	A_CANT,	0);
	class_addmethod(c->maxClass, (method)paramTest_return_value,			"return_value",			A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)paramTest_bang,					"bang",					0L);
	class_addmethod(c->maxClass, (method)paramTest_int,						"int",					A_LONG, 0L);
	class_addmethod(c->maxClass, (method)paramTest_float,					"float",				A_FLOAT, 0L);
	class_addmethod(c->maxClass, (method)paramTest_list,					"list",					A_GIMME, 0L);
	
	class_addmethod(c->maxClass, (method)WrappedParameterClass_anything,	"symbol",				A_SYM, 0L);
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
	defer_low((ObjectPtr)x, (method)paramTest_build, address, 0, 0);

	// Make one outlet
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 1);
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
}

void WrappedParameterClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_atom a;
	
	if (!argc) {
		atom_setsym(&a, msg);
		paramTest_list(self, _sym_symbol, 1, &a);
	}
}

void paramTest_build(TTPtr self, SymbolPtr address)
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

t_max_err paramTest_notify(TTPtr self, t_symbol *s, t_symbol *msg, void *sender, void *data)
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
void paramTest_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "");		
	else if (msg==2)		// Outlets
		strcpy(dst, "");
}

void paramTest_bang(TTPtr self)
{
	paramTest_list(self, _sym_bang, 0, NULL);
}

void paramTest_int(TTPtr self, long value)
{
	t_atom a;
	
	atom_setlong(&a, value);
	paramTest_list(self, _sym_int, 1, &a);
}

void paramTest_float(TTPtr self, double value)
{
	t_atom a;
	
	atom_setfloat(&a, value);
	paramTest_list(self, _sym_float, 1, &a);
}

void paramTest_list(TTPtr self, t_symbol *msg, long argc, t_atom *argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;

	jamoma_parameter_command((TTParameterPtr)x->wrappedObject, msg, argc, argv);
}


void paramTest_share_context_node(TTPtr self, TTNodePtr *contextNode)
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

void paramTest_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	outlet_anything(x->outlets[data_out], msg, argc, argv);
}