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


// forward declarations needed by the compiler
class TTParameter;
class TTGlobal;

/** A type that can be used to store a pointer to a message for an object */
typedef TTErr (TTObject::*TTMethod)(TTValue& value, const TTSymbol& methodName);

/** A type that can be used to store a pointer to a message for an object */
typedef TTErr (TTObject::*TTGetterMethod)(TTValue& value, const TTParameter& parameter);

/** A type that can be used to store a pointer to a message for an object */
typedef TTErr (TTObject::*TTSetterMethod)(const TTValue& value, const TTParameter& parameter);

/** The instance that manages access to global parameters and settings in the TTBlue environment. */
extern TTGlobal	ttGlobalObject;


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
	void*				address;	///< pointer to the memory holding the parameter value
	TTGetterMethod		getter;		///< method to fetch the parameter value
	TTSetterMethod		setter;		///< method to set the parameter value


	TTParameter(const TTSymbol& newName, TTDataType newType, void* newAddress);
	TTParameter(const TTSymbol& newName, TTDataType newType, void* newAddress, TTGetterMethod newGetter);
	TTParameter(const TTSymbol& newName, TTDataType newType, void* newAddress, TTSetterMethod newSetter);
	TTParameter(const TTSymbol& newName, TTDataType newType, void* newAddress, TTGetterMethod newGetter, TTSetterMethod newSetter);
	virtual ~TTParameter();

	TTErr defaultGetter(TTValue& value, const TTParameter& parameter);
	TTErr defaultSetter(const TTValue& value, const TTParameter& parameter);
};


/**
	At the moment this class uses really lame associative arrays to keep track of messages and 
	parameters.  Even lamer is that we statically limit it to 10 of each right now.  
	Eventually we will do this with something way better...
*/
class TTObject : public TTElement {
private:
	const TTSymbol*			messageNames[16];
	TTMethod				messageTargets[16];
	TTUInt8					messageCount;
	const TTSymbol*			parameterNames[16];
	TTParameter*			parameterObjects[16];
	TTUInt8					parameterCount;

public:
	TTObject();
	virtual ~TTObject();
	
	/*
		The theory on parameters is that the subclass calls registerParameter()
		and the base class manages a list of all registered parameters.
		
		The the end-user calls setParameter() on the object (which is defined in 
		the base class only) and it dispatches the message as appropriate.
	*/
	TTErr registerParameter(const TTSymbol& name, TTDataType type, void* address);
	TTErr registerParameter(const TTSymbol& name, TTDataType type, void* address, TTGetterMethod getter);
	TTErr registerParameter(const TTSymbol& name, TTDataType type, void* address, TTSetterMethod setter);
	TTErr registerParameter(const TTSymbol& name, TTDataType type, void* address, TTGetterMethod getter, TTSetterMethod setter);
	
	TTErr setParameterValue(const TTSymbol& name, const TTValue& value);
	TTErr getParameterValue(const TTSymbol& name, TTValue& value);
	// convenience wrappers...
	TTErr setParameterValue(const TTSymbol& name, const TTFloat32& value);
	TTErr getParameterValue(const TTSymbol& name, TTFloat32& value);
	TTErr setParameterValue(const TTSymbol& name, const TTFloat64& value);
	TTErr getParameterValue(const TTSymbol& name, TTFloat64& value);
	TTErr setParameterValue(const TTSymbol& name, const TTInt8& value);
	TTErr getParameterValue(const TTSymbol& name, TTInt8& value);
	TTErr setParameterValue(const TTSymbol& name, const TTUInt8& value);
	TTErr getParameterValue(const TTSymbol& name, TTUInt8& value);
	TTErr setParameterValue(const TTSymbol& name, const TTInt16& value);
	TTErr getParameterValue(const TTSymbol& name, TTInt16& value);
	TTErr setParameterValue(const TTSymbol& name, const TTUInt16& value);
	TTErr getParameterValue(const TTSymbol& name, TTUInt16& value);
	TTErr setParameterValue(const TTSymbol& name, const TTInt32& value);
	TTErr getParameterValue(const TTSymbol& name, TTInt32& value);
	TTErr setParameterValue(const TTSymbol& name, const TTUInt32& value);
	TTErr getParameterValue(const TTSymbol& name, TTUInt32& value);
	TTErr setParameterValue(const TTSymbol& name, const TTInt64& value);
	TTErr getParameterValue(const TTSymbol& name, TTInt64& value);
	TTErr setParameterValue(const TTSymbol& name, const TTUInt64& value);
	TTErr getParameterValue(const TTSymbol& name, TTUInt64& value);
	TTErr setParameterValue(const TTSymbol& name, const TTSymbol& value);
	TTErr getParameterValue(const TTSymbol& name, TTSymbol& value);
	
	// These are not registered as static, even though they are operating only on statics.
	// This is because the function pointers for the parameter getter/setter require a valid 'this' member.
	// The result however, is that you can't call static methods from anywhere for these...
	// So instead we create a "ttGlobalObject" instance just for this purpose.
	static TTErr registerGlobalParameter(const TTSymbol& name, TTDataType type, void* address);
	static TTErr registerGlobalParameter(const TTSymbol& name, TTDataType type, void* address, TTGetterMethod getter, TTSetterMethod setter);
	static TTErr setGlobalParameterValue(const TTSymbol& name, TTValue& value);
	static TTErr getGlobalParameterValue(const TTSymbol& name, TTValue& value);
	
	TTErr registerMessage(const TTSymbol& name, TTMethod method);
	TTErr sendMessage(const TTSymbol& name);
	TTErr sendMessage(const TTSymbol& name, TTValue& value);
	
	// getMessageNames()
	// getParameterNames()
	
};


#endif // __TT_OBJECT_H__

