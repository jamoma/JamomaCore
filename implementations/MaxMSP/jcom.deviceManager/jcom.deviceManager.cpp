/* 
 * jcom.deviceManager
 * External for Jamoma : to manage network devices
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
void	WrapTTDeviceManagerClass(WrappedClassPtr c);
void	WrappedDeviceManagerClass_new(TTPtr self, AtomCount argc, AtomPtr argv);

void	dvmg_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void	dvmg_return_address(TTPtr self, t_symbol *msg, long argc, t_atom *argv);
void	dvmg_return_value(TTPtr self, t_symbol *msg, long argc, t_atom *argv);


int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTDeviceManagerClass;
	spec->_new = &WrappedDeviceManagerClass_new;
	spec->_any = NULL;
	
	return wrapTTModularClassAsMaxClass(TT("DeviceManager"), "jcom.deviceManager", NULL, spec);
}

void WrapTTDeviceManagerClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)dvmg_assist,				"assist",				A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)dvmg_return_address,		"return_address",		A_CANT, 0);
	class_addmethod(c->maxClass, (method)dvmg_return_value,			"return_value",			A_CANT, 0);
	
}

void WrappedDeviceManagerClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	t_symbol					*name;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	
	if (attrstart && argv) 
		name = atom_getsym(argv);
	else
		name = gensym("Jamoma");
	
	jamoma_deviceManager_create((ObjectPtr)x, name, &x->wrappedObject);
	
	// Make two outlets
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 2);
	x->outlets[address_out] = outlet_new(x, NULL);					// anything outlet to output address
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
}

// Method for Assistance Messages
void dvmg_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "");		
	else if (msg==2)		// Outlets
		strcpy(dst, "");
}

void dvmg_return_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	outlet_anything(x->outlets[address_out], msg, argc, argv);
}

void dvmg_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	outlet_anything(x->outlets[data_out], msg, argc, argv);
}