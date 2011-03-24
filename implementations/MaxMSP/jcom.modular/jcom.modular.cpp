/* 
 * jcom.modular
 * External for Jamoma : to manage local and distant application
 *
 * By Theo de la Hogue, Copyright 2010
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html
 */

#include "TTModularClassWrapperMax.h"

#define address_out 0
#define data_out 1

// Definitions
void	WrapTTApplicationManagerClass(WrappedClassPtr c);
void	WrappedApplicationManagerClass_new(TTPtr self, AtomCount argc, AtomPtr argv);

void	appmg_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void	appmg_return_address(TTPtr self, t_symbol *msg, long argc, t_atom *argv);
void	appmg_return_value(TTPtr self, t_symbol *msg, long argc, t_atom *argv);

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTApplicationManagerClass;
	spec->_new = &WrappedApplicationManagerClass_new;
	spec->_any = NULL;
	
	return wrapTTModularClassAsMaxClass(TT("ApplicationManager"), "jcom.modular", NULL, spec);
}

void WrapTTApplicationManagerClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)appmg_assist,				"assist",				A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)appmg_return_address,		"return_address",		A_CANT, 0);
	class_addmethod(c->maxClass, (method)appmg_return_value,		"return_value",			A_CANT, 0);
}

void WrappedApplicationManagerClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	t_symbol					*name;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	
	if (attrstart && argv) 
		name = atom_getsym(argv);
	else
		name = gensym(JAMOMA);
	
	// our wrapped object is the application manager
	x->wrappedObject = (TTObjectPtr)TTModularApplications;
	
	// Make two outlets
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 2);
	x->outlets[address_out] = outlet_new(x, NULL);					// anything outlet to output address
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
	
	attr_args_process(x, argc, argv);
}

// Method for Assistance Messages
void appmg_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1)				// Inlets
		strcpy(dst, "");		
	else if (msg==2)		// Outlets
		strcpy(dst, "");
}

void appmg_return_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	outlet_anything(x->outlets[address_out], msg, argc, argv);
}

void appmg_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	outlet_anything(x->outlets[data_out], msg, argc, argv);
}