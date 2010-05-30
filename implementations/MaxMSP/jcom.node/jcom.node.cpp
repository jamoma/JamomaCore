/* 
 *	jcom.node
 *	External object
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTModularClassWrapperMax.h"

#define data_out 0

// Definitions
void		WrapTTContainerClassSpecificities(WrappedClassPtr c);
void		WrappedContainerClass_newSpecificities(TTPtr self, AtomCount argc, AtomPtr argv);

t_max_err	node_notify(TTPtr self, t_symbol *s, t_symbol *msg, void *sender, void *data);
void		node_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void		node_share_context_node(TTPtr self, TTNodePtr *contextNode);

void		node_build(TTPtr self, SymbolPtr address);


int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	return wrapTTModularClassAsMaxClass(TT("Container"), "jcom.node", NULL, &WrapTTContainerClassSpecificities, &WrappedContainerClass_newSpecificities);
}

void WrapTTContainerClassSpecificities(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)node_notify,					"notify",				A_CANT, 0);
	class_addmethod(c->maxClass, (method)node_assist,					"assist",				A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)node_share_context_node,		"share_context_node",	A_CANT,	0);
	
}

void WrappedContainerClass_newSpecificities(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					address;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	
	// A Modular object needs an address argument
	if (attrstart && argv) 
		address = atom_getsym(argv);
	else
		address = _sym_nothing;
	
	// create the container
	jamoma_container_create((ObjectPtr)x, &x->wrappedObject);
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)node_build, address, 0, 0);
	
	// no outlet

}

void node_build(TTPtr self, SymbolPtr address)
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

t_max_err node_notify(TTPtr self, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue	v;
	ObjectPtr context;
	x->subscriberObject->getAttributeValue(TT("Context"), v);
	v.get(0, (TTPtr*)&context);
	
	// if the patcher is deleted
	if (sender == context)
		if (msg == _sym_free) {
			
			// delete
			TTObjectRelease(TTObjectHandle(&x->subscriberObject));
			
			// no more notification
			object_detach_byptr((ObjectPtr)x, context);
		}
	
	return MAX_ERR_NONE;
}

// Method for Assistance Messages
void node_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "");		
	else if (msg==2)		// Outlets
		strcpy(dst, "");
}

void node_share_context_node(TTPtr self, TTNodePtr *contextNode)
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