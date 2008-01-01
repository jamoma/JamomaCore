/* 
 * TTBlue Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_OBJECT_H__
#define __TT_OBJECT_H__

#include "TTElement.h"
#include "TTSymbol.h"
#include "TTValue.h"
//#include "TTList.h"
//#include "TTHash.h"

/****************************************************************************************************/
// Class Specification

/**
	At the moment this class uses really lame associative arrays to keep track of messages and 
	parameters.  Even lamer is that we statically limit it to 10 of each right now.  
	Eventually we will do this with something way better...
*/
class TTObject : TTElement {
private:
	TTSymbol	messageNames[10];
	TTMessage	messageTargets[10];
	TTUInt8		messageCount;
	TTSymbol	parameterNames[10];
	TTMessage	parameterTargets[10];
	TTUInt8		parameterCount;
	
public:
	TTObject();
	virtual ~TTObject();
	
	/*
		The theory on parameters is that the subclass calls registerParameter()
		and the base class manages a list of all registered parameters.
		
		The the end-user calls setParameter() on the object (which is defined in 
		the base class only) and it dispatches the message as appropriate.
	*/
	registerParameter(TTSymbol& name, TTSymbol& type, long offset);
	registerParameter(TTSymbol& name, TTSymbol& type, long offset, TTGetterType getter, TTSetterType setter);
	setParameterValue(TTSymbol& name, TTValue& value);
	getParameterValue(TTSymbol& name, TTValue& value);
	//setParameterValue(TTSymbol& name, TTUInt32& value);	// convenience wrappers?
	//getParameterValue(TTSymbol& name, TTUInt32& value);
	//setParameterValue(TTSymbol& name, TTFloat32& value);
	//getParameterValue(TTSymbol& name, TTFloat32& value);
	
	registerMessage(TTSymbol& name, TTMessage message)
	{
		messageNames[messageCount] = name;
		messageTargets[messageCount] = message;
		messageCount++;
	}
	
	sendMessage(TTSymbol& name);
	sendMessage(TTSymbol& name, TTValue& value);
	
	// getMessageNames()
	// getParameterNames()
	
};


#endif // __TT_OBJECT_H__

