/* 
 * Namespace creating and dealing interface
 * Copyright © 2010, Laurent Garnier, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Namespace.h"


Namespace::Namespace(void)
{
}

Namespace::~Namespace(void)
{
}

void
Namespace::namespaceInit(std::string appName)
{
	// Initialize TT environments
	/////////////////////////////////////////////////////////
	TTModularInit(appName);
}

void
Namespace::namespaceFree(void)
{
	TTObjectRelease(TTObjectHandle(&TTModularDirectory));
}

void
Namespace::namespaceParameterCreate(void* object, std::string address, void (*returnAddressCallback)(TTPtr, TTValue&)
																	 , void (*returnValueCallback)(TTPtr, TTValue&))
{
	//// Create a TTParameter
	///////////////////////////////////////////////////////////
	TTParameterPtr	parameter = NULL;
	TTCallbackPtr	p_returnValueCallback = NULL;
	TTValuePtr		p_returnValueBaton;
	
	// prepare arguments : see TTParameter.h to know which args are needed
	TTValue args;
	args.clear();
	TTObjectInstantiate(TT("Callback"), TTObjectHandle(&p_returnValueCallback), kTTValNONE);
	p_returnValueBaton = new TTValue(TTPtr(object));		// Here it is NULL but it could be usefull to pass 
															// an object in order to process the returned value
	p_returnValueCallback->setAttributeValue(TT("Baton"), TTPtr(p_returnValueBaton));
	p_returnValueCallback->setAttributeValue(TT("Function"), returnValueCallback);
	args.append(p_returnValueCallback);
	
	// create an instance of TTParameter
	TTObjectInstantiate(TT("Parameter"), TTObjectHandle(&parameter), args);

	// Register a TTObject into the TTModularDirectory
	/////////////////////////////////////////////////////////
	TTLogMessage("\n*** Register a parameter into the TTModularDirectory *** \n");
	TTNodePtr		returnedNode;
	TTBoolean		newInstanceCreated;

	TTModularDirectory->TTNodeCreate(TT(address), parameter, NULL, &returnedNode, &newInstanceCreated);
	// note : our myRegistrationObserver is informed if declared 
}

int 
Namespace::namespaceParameterAttributeSet(std::string address, TTSymbolPtr attribute, TTValue value)
{
	TTErr err;
	TTList returnedTTNodes;
	TTNodePtr firstReturnedTTNode;

	if(TTModularDirectory){
		err = TTModularDirectory->Lookup(TT(address), returnedTTNodes, &firstReturnedTTNode);
		if (err == kTTErrNone) {
			firstReturnedTTNode->setAttributeValue(attribute, value);
			//TTLogMessage("\n*** Set Attribute *** \n");
			return err;
		}
	}
	return kTTErrGeneric;
}

void 
Namespace::namespaceReceiverCreate(void* object, std::string address, TTSymbolPtr attribute, void (*returnAddressCallback)(TTPtr, TTValue&)
																						   , void (*returnValueCallback)(TTPtr, TTValue&))
{
	TTReceiverPtr	myReceiver = NULL;
	TTCallbackPtr	r_returnAddressCallback = NULL; 
	TTCallbackPtr	r_returnValueCallback = NULL;
	TTValuePtr		r_returnAddressBaton, r_returnValueBaton;
	
	// prepare arguments : see TTReceiver.h to know which args are needed
	TTValue args;
	args.clear();
	args.append(TTModularDirectory);
	args.append(TT(address));
	args.append(attribute);
		
	TTObjectInstantiate(TT("Callback"), TTObjectHandle(&r_returnAddressCallback), kTTValNONE);
	r_returnAddressBaton = new TTValue(TTPtr(object));		// Here it is NULL but it could be usefull to pass 
															// an object in order to process the returned value
	r_returnAddressCallback->setAttributeValue(TT("Baton"), TTPtr(r_returnAddressBaton));
	r_returnAddressCallback->setAttributeValue(TT("Function"), returnAddressCallback);
	args.append(r_returnAddressCallback);
	

	TTObjectInstantiate(TT("Callback"), TTObjectHandle(&r_returnValueCallback), kTTValNONE);
	r_returnValueBaton = new TTValue(TTPtr(object));		// Here it is NULL but it could be usefull to pass 
												// an object in order to process the returned address;
	r_returnValueCallback->setAttributeValue(TT("Baton"), TTPtr(r_returnValueBaton));
	r_returnValueCallback->setAttributeValue(TT("Function"), TTPtr(returnValueCallback));
	args.append(r_returnValueCallback);
		
	TTObjectInstantiate(TT("Receiver"), TTObjectHandle(&myReceiver), args);
}

void 
Namespace::namespaceSenderCreate(std::string address, TTSymbolPtr attribute, TTValue value)
{
	
}

int 
Namespace::namespaceDisplay(void)
{
	unsigned int i;
	TTValue hk;
	TTSymbolPtr key;

	if(TTModularDirectory){	
		TTModularDirectory->getDirectory()->getKeys(hk);

		for(i=0; i<TTModularDirectory->getDirectory()->getSize(); i++){
			hk.get(i,(TTSymbol**)&key);
			TTLogMessage("%s\n",key->getCString());
		}
		return kTTErrNone;
	}
	
	TTLogMessage("TTModularDirectory_dump : create a directory before");
	return kTTErrGeneric;
}