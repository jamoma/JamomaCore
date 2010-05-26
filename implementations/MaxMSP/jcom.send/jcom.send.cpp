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
void	WrapTTSenderClassSpecificities(WrappedClassPtr c);
void	WrappedSenderClass_newSpecificities(TTPtr self, AtomCount argc, AtomPtr argv);

void	send_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void	send_bang(TTPtr self);
void	send_int(TTPtr self, long value);
void	send_float(TTPtr self, double value);
void	send_list(TTPtr self, t_symbol *msg, long argc, t_atom *argv);


int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	return wrapTTModularClassAsMaxClass(TT("Sender"), "jcom.send", NULL, &WrapTTSenderClassSpecificities, &WrappedSenderClass_newSpecificities);
}

void WrapTTSenderClassSpecificities(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)send_assist,	"assist",	A_CANT, 0L);
	class_addmethod(c->maxClass, (method)send_int,		"int",		A_LONG, 0L);
	class_addmethod(c->maxClass, (method)send_float,	"float",	A_FLOAT, 0L);
	class_addmethod(c->maxClass, (method)send_list,		"list",		A_GIMME, 0L);
}

void WrappedSenderClass_newSpecificities(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					address;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	
	// A Modular object needs an address argument : atom_getsym(argv) or _sym_nothing by default
	if (attrstart && argv) 
		address = atom_getsym(argv);
	else
		address = _sym_nothing;
	
	jamoma_sender_create((ObjectPtr)x, address, &x->wrappedObject);
	
	// No outlets
}

// Method for Assistance Messages
void send_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "");		
	else if (msg==2)		// Outlets
		strcpy(dst, "");
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

void send_list(TTPtr self, t_symbol *msg, long argc, t_atom *argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue		c;
	TTSenderPtr	aTempSender;
	
	// Make a temporary sender
	if (msg->s_name[0] == C_SEPARATOR)
	{
		if (jamoma_sender_create((ObjectPtr)x, msg, TTObjectHandle(&aTempSender))) 
		{
			jamoma_sender_send(aTempSender, _sym_list, argc, argv);
			TTObjectRelease(TTObjectHandle(&aTempSender));
		}
	}
	else
		jamoma_sender_send((TTSenderPtr)x->wrappedObject, msg, argc, argv);
}

