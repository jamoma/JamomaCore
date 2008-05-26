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
#include "TTSymbolTable.h"
#include "TTSymbolCache.h"
#include "TTValue.h"
#include "TTValueCache.h"
#include "TTSymbolCache.h"


// forward declarations needed by the compiler
class TTAttribute;
class TTMessage;
class TTGlobal;

/** A type that can be used to store a pointer to a message for an object */
typedef TTErr (TTObject::*TTMethod)(const TTSymbol& methodName, TTValue& value);

/** A type that can be used to call a message for an object that does not declare the name argument. */
typedef TTErr (TTObject::*TTMethodValue)(TTValue& value);

/** A type that can be used to call a message for an object that does not declare the name argument. */
typedef TTErr (TTObject::*TTMethodConstValue)(const TTValue& value);

/** A type that can be used to call a message for an object that does not declare any arguments. */
typedef TTErr (TTObject::*TTMethodNone)();


/** A type that can be used to store a pointer to a message for an object */
typedef TTErr (TTObject::*TTGetterMethod)(const TTAttribute& attribute, TTValue& value);

/** A type that can be used to store a pointer to a message for an object */
typedef TTErr (TTObject::*TTSetterMethod)(const TTAttribute& attribute, const TTValue& value);


/** Flags that determine the behavior of messages. */
typedef enum TTMessageFlags {
	kTTMessageDefaultFlags = 0,		///< The default set of flags will be used if this is specified.  At this time the default is #kTTMethodPassValue.
	kTTMessagePassNone = 1,			///< Set this flag if the method you are binding to this message is prototyped to accept no arguments.
	kTTMessagePassValue = 2,		///< Set this flag if the method you are binding to this message is prototyped with a single #TTValue& argument.
	kTTMessagePassNameAndValue = 4	///< Set this flag if the method you are binding to this message is prototyped with two arguments: a const #TTSymbol& and a #TTValue&.
};
	
/** Flags that determine the behavior of messages. */
typedef enum TTAttributeFlags {
	kTTAttrDefaultFlags = 0,		///< The default set of flags will be used if this is specified. At this time the default is #kTTAttrPassValueOnly.
	kTTAttrPassValueOnly = 1,		///< Attribute accessors will only be passed a reference to the attribute's value.
	kTTAttrPassObject = 2			///< Attribute accessors will first be passed a reference to the #TTAttribute object, then it will be passed  a reference to the attribute's value.
};



/****************************************************************************************************/
// Class Specifications

/**
	At the moment this class uses really lame associative arrays to keep track of messages and 
	attributes.  Even lamer is that we statically limit it to 16 of each right now.  
	Eventually we will do this with something way better...
*/
class TTEXPORT TTObject : public TTElement {
private:
	TTSymbol				objectName;
	const TTSymbol*			messageNames[16];
	TTMessage*				messageObjects[16];
	TTUInt8					messageCount;
	const TTSymbol*			attributeNames[16];
	TTAttribute*			attributeObjects[16];
	TTUInt8					attributeCount;

public:
	TTObject(const char* name);
	virtual ~TTObject();
	
	/**
		The theory on attributes is that the subclass calls registerAttribute()
		and the base class manages a list of all registered attributes.
		
		The the end-user calls setAttribute() on the object (which is defined in 
		the base class only) and it dispatches the message as appropriate.
	*/
	TTErr registerAttribute(const TTSymbol& name, TTDataType type, void* address);
	TTErr registerAttribute(const TTSymbol& name, TTDataType type, void* address, TTGetterMethod getter);
	TTErr registerAttribute(const TTSymbol& name, TTDataType type, void* address, TTSetterMethod setter);
	TTErr registerAttribute(const TTSymbol& name, TTDataType type, void* address, TTGetterMethod getter, TTSetterMethod setter);
	
	TTErr findAttribute(const TTSymbol& name, TTAttribute** attr);

	TTErr setAttributeValue(const TTSymbol& name, const TTValue& value);
	TTErr getAttributeValue(const TTSymbol& name, TTValue& value);
	// convenience wrappers...
	TTErr setAttributeValue(const TTSymbol& name, const TTFloat32& value);
	TTErr getAttributeValue(const TTSymbol& name, TTFloat32& value);
	TTErr setAttributeValue(const TTSymbol& name, const TTFloat64& value);
	TTErr getAttributeValue(const TTSymbol& name, TTFloat64& value);
	TTErr setAttributeValue(const TTSymbol& name, const TTInt8& value);
	TTErr getAttributeValue(const TTSymbol& name, TTInt8& value);
	TTErr setAttributeValue(const TTSymbol& name, const TTUInt8& value);
	TTErr getAttributeValue(const TTSymbol& name, TTUInt8& value);
	TTErr setAttributeValue(const TTSymbol& name, const TTInt16& value);
	TTErr getAttributeValue(const TTSymbol& name, TTInt16& value);
	TTErr setAttributeValue(const TTSymbol& name, const TTUInt16& value);
	TTErr getAttributeValue(const TTSymbol& name, TTUInt16& value);
	TTErr setAttributeValue(const TTSymbol& name, const TTInt32& value);
	TTErr getAttributeValue(const TTSymbol& name, TTInt32& value);
	TTErr setAttributeValue(const TTSymbol& name, const TTUInt32& value);
	TTErr getAttributeValue(const TTSymbol& name, TTUInt32& value);
	TTErr setAttributeValue(const TTSymbol& name, const TTInt64& value);
	TTErr getAttributeValue(const TTSymbol& name, TTInt64& value);
	TTErr setAttributeValue(const TTSymbol& name, const TTUInt64& value);
	TTErr getAttributeValue(const TTSymbol& name, TTUInt64& value);
	TTErr setAttributeValue(const TTSymbol& name, const TTSymbol& value);
	TTErr getAttributeValue(const TTSymbol& name, TTSymbol& value);

	TTErr TTObject::getAttributeGetterFlags(const TTSymbol& name, TTAttributeFlags& value);
	TTErr TTObject::setAttributeGetterFlags(const TTSymbol& name, TTAttributeFlags& value);
	TTErr TTObject::getAttributeSetterFlags(const TTSymbol& name, TTAttributeFlags& value);
	TTErr TTObject::setAttributeSetterFlags(const TTSymbol& name, TTAttributeFlags& value);
	

	/** return a list of names of the available functionParameters */
	void getAttributeNames(TTValue& attributeNameList);
	
	/** return the name of this class */
	TTSymbol& getName();

	// These are not registered as static, even though they are operating only on statics.
	// This is because the function pointers for the attribute getter/setter require a valid 'this' member.
	// The result however, is that you can't call static methods from anywhere for these...
	// So instead we create a "ttGlobalObject" instance just for this purpose.
	static TTErr registerGlobalAttribute(const TTSymbol& name, TTDataType type, void* address);
	static TTErr registerGlobalAttribute(const TTSymbol& name, TTDataType type, void* address, TTGetterMethod getter, TTSetterMethod setter);
	static TTErr setGlobalAttributeValue(const TTSymbol& name, TTValue& value);
	static TTErr getGlobalAttributeValue(const TTSymbol& name, TTValue& value);
	
	TTErr registerMessage(const TTSymbol& name, TTMethod method);
	TTErr registerMessage(const TTSymbol& name, TTMethod method, TTMessageFlags flags);
	TTErr sendMessage(const TTSymbol& name);
	TTErr sendMessage(const TTSymbol& name, TTValue& value);
	
	//TODO: implement these
	// getMessageNames()
	// getAttributeNames()
	
};


/**
	This class represents a single attribute, as used by the TTObject class.
	At the moment we define it in the same file because we are sharing the typedef
	for TTMethod.
*/
class TTEXPORT TTAttribute : TTElement {
private:
public:
	// Should make this group private, but to get things working initially, we're leaving them public...
	const TTSymbol&		name;			///< the name of the attribute
	TTDataType			type;			///< the data type of the attribute value
	void*				address;		///< pointer to the memory holding the attribute value
	TTGetterMethod		getter;			///< method to fetch the attribute value
	TTSetterMethod		setter;			///< method to set the attribute value
	TTAttributeFlags	getterFlags;	///< define the behavior of the attribute getter method
	TTAttributeFlags	setterFlags;	///< define the behavior of the attribute setter method

	TTAttribute(const TTSymbol& newName, TTDataType newType, void* newAddress);
	TTAttribute(const TTSymbol& newName, TTDataType newType, void* newAddress, TTGetterMethod newGetter);
	TTAttribute(const TTSymbol& newName, TTDataType newType, void* newAddress, TTSetterMethod newSetter);
	TTAttribute(const TTSymbol& newName, TTDataType newType, void* newAddress, TTGetterMethod newGetter, TTSetterMethod newSetter);
	virtual ~TTAttribute();
	
	void setGetterFlags(TTAttributeFlags newFlags);
	void getGetterFlags(TTAttributeFlags& currentFlags);

	void setSetterFlags(TTAttributeFlags newFlags);
	void getSetterFlags(TTAttributeFlags& currentFlags);

	TTErr defaultGetter(const TTAttribute& attribute, TTValue& value);
	TTErr defaultSetter(const TTAttribute& attribute, const TTValue& value);
};


/**
	This class represents a single message, as used by the TTObject class.
	At the moment we define it in the same file because we are sharing the typedef
	for TTMethod.
*/
class TTEXPORT TTMessage : TTElement {
private:
public:
	// Should make this group private, but to get things working initially, we're leaving them public...
	const TTSymbol&		name;		///< the name of the message.
	TTMessageFlags		flags;		///< define the behavior of the message.
	TTMethod			method;		///< method associated with this message.

	TTMessage(const TTSymbol& newName, TTMethod newMethod, TTMessageFlags newFlags);
	virtual ~TTMessage();
};

#endif // __TT_OBJECT_H__

