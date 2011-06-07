/* 
 *	jcom.send
 *	External object
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTModularClassWrapperMax.h"

// Definitions
void	WrapTTSenderClass(WrappedClassPtr c);
void	WrappedSenderClass_new(TTPtr self, AtomCount argc, AtomPtr argv);
void	WrappedSenderClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void	send_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void	send_subscribe(TTPtr self, SymbolPtr relativeAddress);

void	send_bang(TTPtr self);
void	send_int(TTPtr self, long value);
void	send_float(TTPtr self, double value);
void	send_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void	send_set(TTPtr self, SymbolPtr address);


int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTSenderClass;
	spec->_new = &WrappedSenderClass_new;
	spec->_free = NULL;
	spec->_any = &WrappedSenderClass_anything;
	
	return wrapTTModularClassAsMaxClass(TT("Sender"), "jcom.send", NULL, spec);
}

void WrapTTSenderClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)send_assist,	"assist",	A_CANT, 0L);
	class_addmethod(c->maxClass, (method)send_bang,		"bang",		0L);
	class_addmethod(c->maxClass, (method)send_int,		"int",		A_LONG, 0L);
	class_addmethod(c->maxClass, (method)send_float,	"float",	A_FLOAT, 0L);
	class_addmethod(c->maxClass, (method)send_list,		"list",		A_GIMME, 0L);
	class_addmethod(c->maxClass, (method)send_set,		"set",		A_SYM, 0L);
	
	class_addmethod(c->maxClass, (method)WrappedSenderClass_anything,	"symbol",	A_SYM, 0L);
}

void WrappedSenderClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					address;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	
	// read first argument
	if (attrstart && argv) 
		address = atom_getsym(argv);
	else
		address = _sym_nothing;
	
	// for empty address
	if (address == _sym_nothing)
		jamoma_sender_create((ObjectPtr)x, address, &x->wrappedObject);
	// for absolute address
	else if (TTADRS(address->s_name)->getType() == kAddressAbsolute)
		jamoma_sender_create((ObjectPtr)x, jamoma_parse_dieze((ObjectPtr)x, address), &x->wrappedObject);
	else
		// The following must be deferred because we have to interrogate our box,
		// and our box is not yet valid until we have finished instantiating the object.
		// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
		defer_low((ObjectPtr)x, (method)send_subscribe, jamoma_parse_dieze((ObjectPtr)x, address), 0, 0);
		
	
	// No outlets
	
	// handle attribute args
	attr_args_process(x, argc, argv);
}

void WrappedSenderClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{	
	send_list(self, msg, argc, argv);
}

// Method for Assistance Messages
void send_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "");		
	else {							// Outlets
		switch(arg) {
			strcpy(dst, "dumpout");
			break;
		}
 	}
}

void send_subscribe(TTPtr self, SymbolPtr relativeAddress)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTNodeAddressPtr absoluteAddress;

	if (!jamoma_patcher_make_absolute_address(jamoma_patcher_get((ObjectPtr)x), TTADRS(relativeAddress->s_name),  &absoluteAddress)) {
		
		jamoma_sender_create((ObjectPtr)x, gensym((char*)absoluteAddress->getCString()), &x->wrappedObject);
		
		// DEBUG
		object_post((ObjectPtr)x, "sends to = %s", absoluteAddress->getCString());
	}
	// While the context node is not registered : try to build (to --Is this not dangerous ?)
	else {
		// The following must be deferred because we have to interrogate our box,
		// and our box is not yet valid until we have finished instantiating the object.
		// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
		defer_low((ObjectPtr)x, (method)send_subscribe, relativeAddress, 0, 0);
	}
}

void send_bang(TTPtr self)
{
	send_list(self, _sym_bang, 0, NULL);
}

void send_int(TTPtr self, long value)
{
	t_atom a;
	
	atom_setlong(&a, value);
	send_list(self, _sym_int, 1, &a);
}

void send_float(TTPtr self, double value)
{
	t_atom a;
	
	atom_setfloat(&a, value);
	send_list(self, _sym_float, 1, &a);
}

void send_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;

	jamoma_sender_send((TTSenderPtr)x->wrappedObject, msg, argc, argv);
}

void send_set(TTPtr self, SymbolPtr address)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTNodeAddressPtr anAddress = TTADRS(address->s_name);
	TTValue v;
	
	if (anAddress->getType() == kAddressAbsolute) {
		v = TTValue(anAddress);
		x->wrappedObject->setAttributeValue(kTTSym_address, v);
	}
}
