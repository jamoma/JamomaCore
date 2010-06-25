/* 
 * Namespace creating and dealing interface
 * Copyright © 2010, Laurent Garnier, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef Namespace_H
#define Namespace_H
#pragma once

#include "TTModular.h"

class Namespace
{
public:
	Namespace(void);
	~Namespace(void);

	/** Initialise the global namespace directory */
	void namespaceInit(std::string appName);

	/** Free the global namespace directory */
	void namespaceFree(void);

	/** Create a parameter object and register it in the namespace according to address arg 
		Callback methods can be passed to process the value and/or address of the parameter value attribute when change*/
	void namespaceParameterCreate(void* object, std::string address, void (*returnAddressCallback)(TTPtr, TTValue&)
																   , void (*returnValueCallback)(TTPtr, TTValue&));
	
	/** Set the value of a parameter attribute */
	int  namespaceParameterAttributeSet(std::string address, TTSymbolPtr attribute, TTValue value);

	/** Create a Receiver object on a parameter attribute which could execute callback methods when attribute is updated by a Sender */
	void namespaceReceiverCreate(void* object, std::string address, TTSymbolPtr attribute, void (*returnAddressCallback)(TTPtr, TTValue&)
																						 , void (*returnValueCallback)(TTPtr, TTValue&));

	/** Create a Sender object to update a parameter attribute */
	void namespaceSenderCreate(std::string address, TTSymbolPtr attribute, TTValue value);
	
	/** Display the namespace keys on console (usefull to debug) */
	int namespaceDisplay(void);

private:


};

#endif /*Namespace_H*/