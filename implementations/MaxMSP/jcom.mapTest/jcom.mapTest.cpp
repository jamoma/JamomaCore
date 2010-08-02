/* 
 *	jcom.map
 *	External object
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTModularClassWrapperMax.h"

#define data_out 0


// Definitions
void	WrapTTMapperClass(WrappedClassPtr c);
void	WrappedMapperClass_new(TTPtr self, AtomCount argc, AtomPtr argv);

void	map_assist(TTPtr self, void *b, long msg, long arg, char *dst);
t_max_err map_notify(TTPtr self, t_symbol *s, t_symbol *msg, void *sender, void *data);

void	map_return_value(TTPtr self, t_symbol *msg, long argc, t_atom *argv);

void	map_share_context_node(TTPtr self, TTNodePtr *contextNode);

void	map_int(TTPtr self, long value);
void	map_float(TTPtr self, double value);
void	map_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void	map_build(TTPtr self, SymbolPtr address);

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTMapperClass;
	spec->_new = &WrappedMapperClass_new;
	spec->_any = &wrappedModularClass_anything;
	
	return wrapTTModularClassAsMaxClass(TT("Mapper"), "jcom.mapTest", NULL, spec);
}

void WrapTTMapperClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)map_assist,				"assist",				A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)map_return_value,			"return_value",			A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)map_share_context_node,	"share_context_node",	A_CANT,	0);
	
	class_addmethod(c->maxClass, (method)map_int,					"int",					A_LONG, 0L);
	class_addmethod(c->maxClass, (method)map_float,					"float",				A_FLOAT, 0L);
	class_addmethod(c->maxClass, (method)map_list,					"list",					A_GIMME, 0L);
}

void WrappedMapperClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
 	
	attr_args_offset(argc, argv);			// support normal arguments
	
	jamoma_mapper_create((ObjectPtr)x, &x->wrappedObject);
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)map_build, gensym("/"), 0, 0);
	
	// Make two outlets
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 1);
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
	
	
}

// Method for Assistance Messages
void map_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1)				// Inlets
		strcpy(dst, "");		
	else if (msg==2)		// Outlets
		strcpy(dst, "");
}

t_max_err map_notify(TTPtr self, t_symbol *s, t_symbol *msg, void *sender, void *data)
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

void map_build(TTPtr self, SymbolPtr address)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v, n, p, args;
	TTString					mapperLevelAddress;
	TTNodePtr					node = NULL;
	TTPtr						context;
	
	// add '/mapper' node
	mapperLevelAddress = "/mapper";
	
	jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, gensym((char*)mapperLevelAddress.data()), &x->subscriberObject);
	
	// if the subscription is successful
	if (x->subscriberObject) {
		
		// get the Node
		x->subscriberObject->getAttributeValue(TT("Node"), n);
		n.get(0, (TTPtr*)&node);
		
		// attach to the patcher to be notified of his destruction
		node->getAttributeValue(TT("Context"), v);
		v.get(0, (TTPtr*)&context);
		object_attach_byptr_register(x, context, _sym_box);
		
	}
}

void map_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	outlet_anything(x->outlets[data_out], msg, argc, argv);
}

void map_share_context_node(TTPtr self, TTNodePtr *contextNode)
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

void map_bang(TTPtr self)
{
	map_list(self, _sym_bang, 0, NULL);
}

void map_int(TTPtr self, long value)
{
	t_atom a;
	
	atom_setlong(&a, value);
	map_list(self, _sym_int, 1, &a);
}

void map_float(TTPtr self, double value)
{
	t_atom a;
	
	atom_setfloat(&a, value);
	map_list(self, _sym_float, 1, &a);
}

void map_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	jamoma_mapper_map((TTMapperPtr)x->wrappedObject, msg, argc, argv);
}