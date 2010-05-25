/* 
 * jcom.paramTest
 * External for Jamoma : ...
 * By Théo de la Hogue, Copyright 2009
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */
#include "jcom.paramTest.h"

// Globals
t_class		*paramTest_class;

// implementation
#if 0
#pragma mark -
#pragma mark Class Definition
#endif 0

int JAMOMA_EXPORT_MAXOBJ main(void)
{
	t_class *c;
	
	jamoma_init();
	common_symbols_init();
	
	// Define our class
	c = class_new("jcom.paramTest",(method)paramTest_new, (method)paramTest_free, (long)sizeof(t_paramTest), 0L, A_GIMME, 0);
	
	// add methods
	class_addmethod(c, (method)paramTest_share_context_node,		"share_context_node",				A_CANT,	0);
	class_addmethod(c, (method)paramTest_return_value,				"return_value",						A_CANT, 0);
	class_addmethod(c, (method)paramTest_notify,					"notify",							A_CANT, 0);
	class_addmethod(c, (method)paramTest_assist,					"assist",							A_CANT, 0);
	
	class_addmethod(c, (method)paramTest_bang,						"bang",								0);
	
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	paramTest_class = c;
	return 0;
}

#if 0
#pragma mark -
#pragma mark Life Cycle
#endif 0

void *paramTest_new(t_symbol *name, long argc, t_atom *argv)
{
	long			attrstart = attr_args_offset(argc, argv);
	t_paramTest		*x = (t_paramTest*)object_alloc(paramTest_class);
	t_symbol		*relativeAddress = _sym_nothing;
	
	if(x){
		
		x->p_out = outlet_new(x, 0);
		
		// the first arg is for parent/name
		if (attrstart && argv)
			atom_arg_getsym(&relativeAddress, 0, attrstart, argv);
		
		// The following must be deferred because we have to interrogate our box,
		// and our box is not yet valid until we have finished instantiating the object.
		// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
		defer_low((ObjectPtr)x, (method)paramTest_build, relativeAddress, argc-attrstart, argv+attrstart);
		
	}
	return x;
}

void paramTest_free(t_paramTest *x)
{
	// unregister the jcom.paramTest (normally it's done when the patcher is deleted but during edition time
	// it could be destroyed even if the patcher is not destroyed)
	TTObjectRelease(TTObjectHandle(&x->subscriber));
}

#if 0
#pragma mark -
#pragma mark Methods
#endif 0

t_max_err paramTest_notify(t_paramTest *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
	TTValue	v;
	ObjectPtr context;
	x->subscriber->getAttributeValue(TT("Context"), v);
	v.get(0, (TTPtr*)&context);
	
	// if the patcher is deleted
	if (sender == context)
		if (msg == _sym_free) {
			
			// delete
			TTObjectRelease(TTObjectHandle(&x->subscriber));
			
			// no more notification
			object_detach_byptr((ObjectPtr)x, context);
		}
	
	return MAX_ERR_NONE;
}

void paramTest_assist(t_paramTest *x, void *b, long msg, long arg, char *dst)
{
	if (msg == ASSIST_INLET) { // inlet
		//if(arg == 0)
		//strcpy(dst, "I am inlet 0");
	} 
	else {	// outlet
		//if(arg == 0)
		//strcpy(dst, "I am outlet 0");
	}		
}

void paramTest_bang(t_paramTest *x)
{
	;
}

void paramTest_build(t_paramTest *x, SymbolPtr relativeAddress, AtomCount argc, AtomPtr argv)
{
	TTValue		v, args;
	TTNodePtr	paramTest = NULL;
	TTSymbolPtr paramTestAddress;
	
	// Make a TTPar object
	jamoma_parameter_create((ObjectPtr)x, argc, argv, &x->parameter);
	
	// Subscribe the TTParameter
	jamoma_subscriber_create((ObjectPtr)x, (TTObjectPtr)x->parameter, relativeAddress, &x->subscriber);
	
	// if the subscription is successful
	if (x->subscriber) {
		
		// debug
		x->subscriber->getAttributeValue(TT("NodeAddress"), v);
		v.get(0, &paramTestAddress);
		object_post((ObjectPtr)x, "paramTest address = %s", paramTestAddress->getCString());
		
		// get the Node
		x->subscriber->getAttributeValue(TT("Node"), v);
		v.get(0, (TTPtr*)&paramTest);
		 
		// attach to the patcher to be notified of his destruction
		object_attach_byptr_register(x, paramTest->getContext(), _sym_box);
		
	}
}

void paramTest_share_context_node(t_paramTest *x, TTNodePtr *contextNode)
{
	TTValue	v;
	
	if (x->subscriber) {
		
		x->subscriber->getAttributeValue(TT("ContextNode"), v);
		v.get(0, TTObjectHandle(contextNode));
	}
	else
		*contextNode = NULL;
}

void paramTest_return_value(t_paramTest *x, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	outlet_anything(x->p_out, msg, argc, argv);
}