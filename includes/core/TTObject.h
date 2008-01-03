/* 
 * TTBlue Object Base Class
 * Copyright � 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_OBJECT_H__
#define __TT_OBJECT_H__

#include "TTElement.h"
#include "TTSymbol.h"
#include "TTValue.h"
#include "TTValueCache.h"
//#include "TTList.h"
//#include "TTHash.h"


/** A type that can be used to store a pointer to an arbitrary message */
//typedef TTErr (*TTMethod)(const void *target, const TTSymbol& methodName, TTValue& value);

class TTParameter;	// forward declaration of TTParameter so the compiler is okay with the following typedefs

/** A type that can be used to store a pointer to a message for an object */
typedef TTErr (TTObject::*TTMethod)(TTValue& value, const TTSymbol& methodName);

/** A type that can be used to store a pointer to a message for an object */
typedef TTErr (TTObject::*TTGetterMethod)(TTValue& value, const TTParameter& parameter);

/** A type that can be used to store a pointer to a message for an object */
typedef TTErr (TTObject::*TTSetterMethod)(const TTValue& value, const TTParameter& parameter);


/****************************************************************************************************/
// Class Specifications

/**
	This class represents a single parameter, as used by the TTObject class.
	At the moment we define it in the same file because we are sharing the typedef
	for TTMethod.
*/
class TTParameter : TTElement {
private:
public:
	// Should make this group private, but to get things working initially, we're leaving them public...
	const TTSymbol*		name;		///< the name of the parameter
	TTDataType			type;		///< the data type of the parameter value
	TTUInt32			offset;		///< offset into the class/struct of the parameter value
	TTGetterMethod		getter;		///< method to fetch the parameter value
	TTSetterMethod		setter;		///< method to set the parameter value


	TTParameter(const TTSymbol& newName, TTDataType newType, long newOffset);
	TTParameter(const TTSymbol& newName, TTDataType newType, long newOffset, TTGetterMethod newGetter, TTSetterMethod newSetter);
	virtual ~TTParameter();

	TTErr defaultGetter(const TTSymbol& name, TTValue& value);
	TTErr defaultSetter(const TTSymbol& name, TTValue& value);
};


/**
	At the moment this class uses really lame associative arrays to keep track of messages and 
	parameters.  Even lamer is that we statically limit it to 10 of each right now.  
	Eventually we will do this with something way better...
*/
class TTObject : public TTElement {
private:
	const TTSymbol*	messageNames[10];
	TTMethod		messageTargets[10];
	TTUInt8			messageCount;
	const TTSymbol*	parameterNames[10];
	TTParameter*	parameterObjects[10];
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
	TTErr registerParameter(const TTSymbol& name, TTDataType type, long offset);
	TTErr registerParameter(const TTSymbol& name, TTDataType type, long offset, TTGetterMethod getter, TTSetterMethod setter);
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

