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

void	map_return_value(TTPtr self, t_symbol *msg, long argc, t_atom *argv);

void	map_int(TTPtr self, long value);
void	map_float(TTPtr self, double value);
void	map_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void	map_build(TTPtr self, SymbolPtr address);

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTMapperClass;
	spec->_new = &WrappedMapperClass_new;
	spec->_any = NULL;
	
	return wrapTTModularClassAsMaxClass(TT("Mapper"), "jcom.map", NULL, spec);
}

void WrapTTMapperClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)map_assist,				"assist",				A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)map_return_value,			"return_value",			A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)map_int,					"int",					A_LONG, 0L);
	class_addmethod(c->maxClass, (method)map_float,					"float",				A_FLOAT, 0L);
	class_addmethod(c->maxClass, (method)map_list,					"list",					A_GIMME, 0L);
}

void WrappedMapperClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	jamoma_mapper_create((ObjectPtr)x, &x->wrappedObject);
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)map_build, gensym("/"), 0, 0);
	
	// Make two outlets
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 1);
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
	
	// handle attribute args
	attr_args_process(x, argc, argv);
}

// Method for Assistance Messages
void map_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1)				// Inlets
		strcpy(dst, "");		
	else if (msg==2)		// Outlets
		strcpy(dst, "");
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
	
	jamoma_patcher_type_and_class((ObjectPtr)x, &x->patcherType, &x->patcherClass);
	jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, gensym((char*)mapperLevelAddress.data()), x->patcherType, &x->subscriberObject);
	
	// if the subscription is successful
	if (x->subscriberObject) {
		
		// get the Node
		x->subscriberObject->getAttributeValue(TT("node"), n);
		n.get(0, (TTPtr*)&node);
		
		// attach to the patcher to be notified of his destruction
		context = node->getContext();
		// Crash : object_attach_byptr_register(x, context, _sym_box);
		
	}
}

void map_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	outlet_anything(x->outlets[data_out], msg, argc, argv);
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
	TTValue		v;
		
	jamoma_ttvalue_from_Atom(v, msg, argc, argv);
		
	x->wrappedObject->sendMessage(kTTSym_Map, v);
}