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
#include "TTValue.h"
#include "TTSymbol.h"
//#include "TTList.h"
//#include "TTHash.h"


/** A type that can be used to store a pointer to an arbitrary message */
//typedef TTErr (*TTMethod)(const void *target, const TTSymbol& methodName, TTValue& value);

/** A type that can be used to store a pointer to a message for an object */
typedef TTErr (TTObject::*TTMethod)(const TTSymbol& methodName, TTValue& value);



/****************************************************************************************************/
// Class Specification

/**
	At the moment this class uses really lame associative arrays to keep track of messages and 
	parameters.  Even lamer is that we statically limit it to 10 of each right now.  
	Eventually we will do this with something way better...
*/
class TTObject : public TTElement {
private:
	const TTSymbol	*messageNames[10];
	TTMethod	messageTargets[10];
	TTUInt8			messageCount;
	const TTSymbol	*parameterNames[10];
	TTMethod	parameterTargets[10];
	TTUInt8			parameterCount;
	
public:
	TTObject();
	virtual ~TTObject();
	
	/*
		The theory on parameters is that the subclass calls registerParameter()
		and the base class manages a list of all registered parameters.
		
		The the end-user calls setParameter() on the object (which is defined in 
		the base class only) and it dispatches the message as appropriate.
	*/
	TTErr registerParameter(const TTSymbol& name, TTSymbol& type, long offset);
	TTErr registerParameter(const TTSymbol& name, TTSymbol& type, long offset, TTMethod getter, TTMethod setter);
	TTErr setParameterValue(const TTSymbol& name, TTValue& value);
	TTErr getParameterValue(const TTSymbol& name, TTValue& value);
	TTErr setParameterValue(const TTSymbol& name, TTUInt32& value);	// convenience wrappers...
	TTErr getParameterValue(const TTSymbol& name, TTUInt32& value);
	TTErr setParameterValue(const TTSymbol& name, TTFloat32& value);
	TTErr getParameterValue(const TTSymbol& name, TTFloat32& value);
	
	static TTErr setGlobalParameterValue(const TTSymbol& name, TTValue& value);
	static TTErr getGlobalParameterValue(const TTSymbol& name, TTValue& value);
	
	TTErr registerMessage(const TTSymbol& name, TTMethod method);
	
	TTErr sendMessage(const TTSymbol& name);
	TTErr sendMessage(const TTSymbol& name, TTValue& value);
	
	static TTErr method(const void *self, const TTSymbol& messageName, TTValue& value);
	
	// getMessageNames()
	// getParameterNames()
	
};


#endif // __TT_OBJECT_H__

