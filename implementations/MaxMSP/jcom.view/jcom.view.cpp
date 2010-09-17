/* 
 *	jcom.view
 *	External object
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTModularClassWrapperMax.h"

#define set_out 0
#define	dump_out 1

// Definitions
void	WrapTTViewerClass(WrappedClassPtr c);
void	WrappedViewerClass_new(TTPtr self, AtomCount argc, AtomPtr argv);

void	view_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void	view_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void	view_share_context_node(TTPtr self, TTNodePtr *contextNode);

void	view_remote_refresh(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);	// no way to use wrapped method with object_method(_typed) ??

void	view_bang(TTPtr self);
void	view_int(TTPtr self, long value);
void	view_float(TTPtr self, double value);
void	view_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void	view_build(TTPtr self, SymbolPtr address);

void	view_ui_queuefn(TTPtr self);

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTViewerClass;
	spec->_new = &WrappedViewerClass_new;
	spec->_any = &wrappedModularClass_anything;
	
	return wrapTTModularClassAsMaxClass(TT("Viewer"), "jcom.view", NULL, spec);
}

void WrapTTViewerClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)view_assist,				"assist",				A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)view_return_value,			"return_value",			A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)view_share_context_node,	"share_context_node",	A_CANT,	0);
	
	class_addmethod(c->maxClass, (method)view_remote_refresh,		"remote_refresh",		A_GIMME, 0); // no way to use wrapped method with object_method(_typed) ??
	
	class_addmethod(c->maxClass, (method)view_bang,					"bang",					0L);
	class_addmethod(c->maxClass, (method)view_int,					"int",					A_LONG, 0L);
	class_addmethod(c->maxClass, (method)view_float,				"float",				A_FLOAT, 0L);
	class_addmethod(c->maxClass, (method)view_list,					"list",					A_GIMME, 0L);
}

void WrappedViewerClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					address;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	
	// A Modular object needs an address argument : atom_getsym(argv) or _sym_nothing by default
	if (attrstart && argv) 
		address = atom_getsym(argv);
	else
		address = _sym_nothing;
	
	jamoma_viewer_create((ObjectPtr)x, &x->wrappedObject);
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)view_build, address, 0, 0);
	
	// Make two outlets
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 1);
	x->outlets[set_out] = outlet_new(x, NULL);						// anything outlet to output data
	
	// Make qelem object
	x->ui_qelem = qelem_new(x, (method)view_ui_queuefn);
}

// Method for Assistance Messages
void view_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1) 						// Inlet
		strcpy(dst, "input");
	else {							// Outlets
		switch(arg) {
			case set_out:
				strcpy(dst, "set: connect to ui object");
				break;
			case dump_out:
				strcpy(dst, "dumpout");
				break;
		}
 	}
}

void view_build(TTPtr self, SymbolPtr address)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v, n, p, args;
	TTSymbolPtr					modelAddress, viewAddress;
	TTPtr						aContext;
	
	// Build the address to bind
	jamoma_viewer_get_model_address((ObjectPtr)x, &modelAddress, &aContext);
	
	joinOSCAddress(modelAddress, TT(address->s_name), &viewAddress);
	
	object_post((ObjectPtr)x, "address = %s", viewAddress->getCString());
	
	// Set Address attribute of the Viewer object
	x->wrappedObject->setAttributeValue(kTTSym_Address, viewAddress);
}

void view_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue		v;
	//TTBoolean	freeze;
	TTUInt8		i;
	
	/*
	// Check ViewFreeze attribute
	x->wrappedObject->getAttributeValue(kTTSym_ViewFreeze, v);
	v.get(0, freeze);
	
	if (!freeze) {
	*/
	
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
	//}
}

void view_ui_queuefn(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	outlet_anything(x->outlets[set_out], _sym_set, x->argc, x->argv);
}

void view_share_context_node(TTPtr self, TTNodePtr *contextNode)
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

void view_remote_refresh(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	object_post((ObjectPtr)x, "refresh !");
}

void view_bang(TTPtr self)
{
	view_list(self, _sym_bang, 0, NULL);
}

void view_int(TTPtr self, long value)
{
	t_atom a;
	
	atom_setlong(&a, value);
	view_list(self, _sym_int, 1, &a);
}

void view_float(TTPtr self, double value)
{
	t_atom a;
	
	atom_setfloat(&a, value);
	view_list(self, _sym_float, 1, &a);
}

void view_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue		v;
	
	jamoma_ttvalue_from_Atom(v, msg, argc, argv);
	
	x->wrappedObject->sendMessage(kTTSym_send, v);
}