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

#define dump_out 0

// This is used to store extra data
typedef struct extra {
	
	TTSymbolPtr			protocolName;	// remember the handled protocol 
	
} t_extra;
#define EXTRA ((t_extra*)x->extra)


// Definitions
void	WrapTTApplicationClass(WrappedClassPtr c);
void	WrappedApplicationClass_new(TTPtr self, AtomCount argc, AtomPtr argv);
void	WrappedApplicationClass_free(TTPtr self);

void	modular_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void	modular_protocol_setup(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void	modular_namespace_read(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void	modular_namespace_doread(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTApplicationClass;
	spec->_new = &WrappedApplicationClass_new;
	spec->_any = NULL;
	spec->_free = &WrappedApplicationClass_free;
	
	return wrapTTModularClassAsMaxClass(kTTSym_Application, "jcom.modular", NULL, spec);
}

void WrapTTApplicationClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)modular_assist,					"assist",						A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)modular_protocol_setup,			"protocol/setup",				A_GIMME, 0);
	
	class_addmethod(c->maxClass, (method)modular_namespace_read,			"namespace/read",				A_GIMME, 0);
}

void WrappedApplicationClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTSymbolPtr					applicationName = NULL;
	TTSymbolPtr					protocolName = NULL;
	TTOpmlHandlerPtr			aOpmlHandler;
	TTValue						v, args;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
		
	// jcom.modular can handle the local application (1 argument to declare a protocol to use)
	if (attrstart <= 1) {
		
		// our wrapped object is the local application
		applicationName = getLocalApplicationName;
		x->wrappedObject = getLocalApplication;
		
		if (attrstart == 1)
			protocolName = TT(atom_getsym(argv)->s_name);
		
	}
	// or it can handle a distant application (2 arguments to declare the name of the distant application and the protocol to use)
	else if (attrstart == 2) {
		
		// our wrapped object is a distant application
		applicationName = TT(atom_getsym(argv)->s_name);
		x->wrappedObject = getApplication(applicationName);
		
		// if the application doesn't exists
		if (!x->wrappedObject) {
			
			// create the application
			args = TTValue(applicationName);
			TTObjectInstantiate(kTTSym_Application, TTObjectHandle(&x->wrappedObject), args);
			
		}
		
		protocolName = TT(atom_getsym(argv+1)->s_name);
		
	}
	
	// jcom.modular handle only one protocol per application
	if (protocolName) {
		
		// check if the protocol has been loaded
		if (!getProtocol(protocolName)) {
			object_error((ObjectPtr)x, "the %s protocol is not available", protocolName->getCString());
			return;
		}
		
		// register the application to the protocol
		v = TTValue(applicationName);
		getProtocol(protocolName)->sendMessage(TT("registerApplication"), v, kTTValNONE);
		
		// run this protocol
		TTModularApplications->sendMessage(TT("ProtocolRun"), protocolName, kTTValNONE);
	}
	
	// Prepare extra data
	x->extra = (t_extra*)malloc(sizeof(t_extra));
	EXTRA->protocolName = protocolName;
	
	// Prepare Internals hash to store OpmlHanler object
	x->internals = new TTHash();
	
	// create internal TTOpmlHandler
	aOpmlHandler = NULL;
	TTObjectInstantiate(kTTSym_OpmlHandler, TTObjectHandle(&aOpmlHandler), args);
	v = TTValue(TTPtr(aOpmlHandler));
	x->internals->append(kTTSym_OpmlHandler, v);
	v = TTValue(TTPtr(x->wrappedObject));
	aOpmlHandler->setAttributeValue(kTTSym_object, v);
	
	if (attrstart && argv) attr_args_process(x, argc, argv);
}

void WrappedApplicationClass_free(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;

	// don't release the local application
	if (x->wrappedObject != getLocalApplication)
		TTObjectRelease(&x->wrappedObject);
	
	free(EXTRA);
}

// Method for Assistance Messages
void modular_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1) 						// Inlet
		strcpy(dst, "input");
	else {								// Outlets
		switch(arg) {
			case dump_out:
				strcpy(dst, "dumpout");
				break;
		}
 	}
}

void modular_protocol_setup(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTSymbolPtr applicationName, parameterName;
	TTObjectPtr	aProtocol = NULL;
	TTHashPtr	hashParameters;
	TTValue		v, keys, parameterValue;
	AtomCount	ac;
	AtomPtr		av;
	TTErr		err;
	
	// get the protocol object
	if (aProtocol = getProtocol(EXTRA->protocolName)) {
		
		if (x->wrappedObject) {
			x->wrappedObject->getAttributeValue(kTTSym_name, v);
			v.get(0, &applicationName);
			
			// get parameters
			err = aProtocol->getAttributeValue(TT("applicationParameters"), v);

			if (!err) {
				
				// get parameter's value
				v.get(0, (TTPtr*) &hashParameters);
				
				// set one application protocol parameter
				if (argc && argv) {
					
					parameterName = TT(atom_getsym(argv)->s_name);
					jamoma_ttvalue_from_Atom(parameterValue, _sym_nothing, argc-1, argv+1);
					
					// check if parameter exists
					err = hashParameters->lookup(parameterName, v);
					
					if (!err) {
						
						// set parameter value
						hashParameters->remove(parameterName);
						hashParameters->append(parameterName, parameterValue);
						
						// stop the protocol
						aProtocol->sendMessage(TT("Stop"));
						
						// set parameters
						v = TTValue(applicationName);
						v.append(TTPtr(hashParameters));
						err = aProtocol->setAttributeValue(TT("applicationParameters"), v);
						
						// run the protocol
						aProtocol->sendMessage(TT("Run"));
					}
					else
						object_error((ObjectPtr)x, "%s is not a parameter of %s protocol", parameterName->getCString(), EXTRA->protocolName->getCString());
					
				}
				// or if no arg : dumpout the current setup
				else {
					
					hashParameters->getKeys(keys);
					for (TTUInt8 i=0; i<keys.getSize(); i++) {
						
						keys.get(i, &parameterName);
						hashParameters->lookup(parameterName, parameterValue);
						
						parameterValue.prepend(parameterName);
						ac = 0;
						av = NULL;
						jamoma_ttvalue_to_Atom(parameterValue, &ac, &av);
						object_obex_dumpout(self, gensym("protocol/setup"), ac, av);
					}
				}
			}
		}
		else
			object_error((ObjectPtr)x, "doesn't handle any application");
	}
}

void modular_namespace_read(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	defer(self, (method)modular_namespace_doread, msg, argc, argv);
}

void modular_namespace_doread(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{	
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue				o, v;
	TTSymbolPtr			fullpath;
	TTOpmlHandlerPtr	aOpmlHandler = NULL;
	TTErr				tterr;
	
	if (x->wrappedObject) {
		
		fullpath = jamoma_file_read((ObjectPtr)x, argc, argv, NULL);
		v.append(fullpath);
		
		tterr = x->internals->lookup(kTTSym_OpmlHandler, o);
		
		if (!tterr) {
			
			o.get(0, (TTPtr*)&aOpmlHandler);
			
			critical_enter(0);
			tterr = aOpmlHandler->sendMessage(kTTSym_Read, v, kTTValNONE);
			critical_exit(0);
			
			if (!tterr)
				object_obex_dumpout(self, _sym_read, argc, argv);
			else
				object_obex_dumpout(self, _sym_error, 0, NULL);
		}
	}
}