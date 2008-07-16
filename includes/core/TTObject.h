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
#include "TTList.h"
#include "TTHash.h"
#include "TTSymbol.h"
#include "TTSymbolTable.h"
#include "TTSymbolCache.h"
#include "TTValue.h"
#include "TTValueCache.h"
#include "TTSymbolCache.h"


// forward declarations needed by the compiler
class TTAttribute;
class TTMessage;

typedef TTAttribute*	TTAttributePtr;
typedef TTMessage*		TTMessagePtr;


/** A type that can be used to store a pointer to a message for an object */
typedef TTErr (TTObject::*TTMethod)(const TTSymbol* methodName, TTValue& value);

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


/**	A convenience macro to be used by subclasses for registering messages.
	@param	name	The name of the message, and also the name of the classes' method to be called.
*/
#define registerMessageSimple(name)    registerMessage(TT(#name), (TTMethod)& thisTTClass ::name , kTTMessagePassNone)


/**	A convenience macro to be used by subclasses for registering messages.
	@param	name	The name of the message, and also the name of the classes' method to be called.
*/
#define registerMessageWithArgument(name)    registerMessage(TT(#name), (TTMethod)& thisTTClass ::name )


/**	A convenience macro to be used by subclasses for registering attributes with a custom getter.
	@param	name	The name of the attribute, which is also the name of the classes' member holding the value, and used for the getter method name.
	@param	type	The type of the value.
*/
#define registerAttributeSimple(name, type)    registerAttribute(TT(#name), type, &name)

/**	A convenience macro to be used by subclasses for registering attributes with a custom getter.
	@param	name	The name of the attribute, which is also the name of the classes' member holding the value, and used for the getter method name.
	@param	type	The type of the value.
*/
#define registerAttributeWithGetter(name, type)    registerAttribute(TT(#name), type, &name, (TTGetterMethod)& thisTTClass ::get##name )

/**	A convenience macro to be used by subclasses for registering attributes with a custom setter.
	@param	name	The name of the attribute, which is also the name of the classes' member holding the value, and used for the setter method name.
	@param	type	The type of the value.
*/
#define registerAttributeWithSetter(name, type)    registerAttribute(TT(#name), type, &name, (TTSetterMethod)& thisTTClass ::set##name )

/**	A convenience macro to be used by subclasses for registering attributes with a custom getter and setter.
	Note that we don't bother passing the address of the value in this macro, because the default setter/getter is not used to access it.
	@param	name	The name of the attribute, which is also the name of the classes' member holding the value, and used for the getter/setter method names.
	@param	type	The type of the value.
*/
#define registerAttributeWithSetterAndGetter(name, type)    registerAttribute(TT(#name), type, NULL, (TTGetterMethod)& thisTTClass ::get##name, (TTSetterMethod)& thisTTClass ::set##name )


/****************************************************************************************************/
// Class Specifications

/**
	At the moment this class uses really lame associative arrays to keep track of messages and 
	attributes.  Even lamer is that we statically limit it to 16 of each right now.  
	Eventually we will do this with something way better...
*/
class TTEXPORT TTObject : public TTElement {
private:
	TTSymbolPtr		objectName;			///< The class name of this object.
	TTHash*			messages;			///< The collection of all messages for this object, keyed on the message name.
	TTHash*			attributes;			///< The collection of all attributes for this object, keyed on the attribute name.
	TTList*			messageObservers;	///< List of all objects watching this object.
	TTList*			attributeObservers;	///< List of all objects watching this object.

public:
	TTObject(const char* name);
	virtual ~TTObject();
	
	/**
		The theory on attributes is that the subclass calls registerAttribute()
		and the base class manages a list of all registered attributes.
		
		The the end-user calls setAttribute() on the object (which is defined in 
		the base class only) and it dispatches the message as appropriate.
	*/
	TTErr registerAttribute(const TTSymbolPtr name, TTDataType type, void* address);
	TTErr registerAttribute(const TTSymbolPtr name, TTDataType type, void* address, TTGetterMethod getter);
	TTErr registerAttribute(const TTSymbolPtr name, TTDataType type, void* address, TTSetterMethod setter);
	TTErr registerAttribute(const TTSymbolPtr name, TTDataType type, void* address, TTGetterMethod getter, TTSetterMethod setter);
	
	TTErr findAttribute(const TTSymbolPtr name, TTAttribute** attr);

	TTErr setAttributeValue(const TTSymbolPtr name, const TTValue& value);
	TTErr getAttributeValue(const TTSymbolPtr name, TTValue& value);

	template<class T>
	TTErr setAttributeValue(const TTSymbolPtr name, const T& value);
	template<class T>
	TTErr getAttributeValue(const TTSymbolPtr name, T& value);
	
	TTErr getAttributeGetterFlags(const TTSymbolPtr name, TTAttributeFlags& value);
	TTErr setAttributeGetterFlags(const TTSymbolPtr name, TTAttributeFlags& value);
	TTErr getAttributeSetterFlags(const TTSymbolPtr name, TTAttributeFlags& value);
	TTErr setAttributeSetterFlags(const TTSymbolPtr name, TTAttributeFlags& value);
	

	/** return a list of names of the available functionParameters */
	void getAttributeNames(TTValue& attributeNameList);
	
	/** return the name of this class */
	TTSymbol* getName();

	
	TTErr registerMessage(const TTSymbolPtr name, TTMethod method);
	TTErr registerMessage(const TTSymbolPtr name, TTMethod method, TTMessageFlags flags);
	TTErr findMessage(const TTSymbolPtr name, TTMessage** message);
	TTErr sendMessage(const TTSymbolPtr name);
	TTErr sendMessage(const TTSymbolPtr name, TTValue& value);
	
	//TODO: implement these
	// getMessageNames()
	
	
	TTErr registerObserverForMessage(const TTObject& observingObject, const TTSymbolPtr messageName);
	TTErr registerObserverForAttribute(const TTObject& observingObject, const TTSymbolPtr attributeName);
	TTErr registerObserverForNotifications(const TTObject& observingObject, const TTSymbolPtr notificationName);
	TTErr unregisterObserverForMessage(const TTObject& observingObject, const TTSymbolPtr messageName);
	TTErr unregisterObserverForAttribute(const TTObject& observingObject, const TTSymbolPtr attributeName);
	TTErr unregisterObserverForNotifications(const TTObject& observingObject, const TTSymbolPtr notificationName);
	
	
	/**	Log messages scoped to this object instance. */
	TTErr logMessage(char* fmtstring, ...);
	TTErr logWarning(char* fmtstring, ...);
	TTErr logError(char* fmtstring, ...);
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
	const TTSymbolPtr	name;			///< the name of the attribute
	TTDataType			type;			///< the data type of the attribute value
	void*				address;		///< pointer to the memory holding the attribute value
	TTGetterMethod		getter;			///< method to fetch the attribute value
	TTSetterMethod		setter;			///< method to set the attribute value
	TTAttributeFlags	getterFlags;	///< define the behavior of the attribute getter method
	TTAttributeFlags	setterFlags;	///< define the behavior of the attribute setter method

	TTAttribute(const TTSymbolPtr newName, TTDataType newType, void* newAddress);
	TTAttribute(const TTSymbolPtr newName, TTDataType newType, void* newAddress, TTGetterMethod newGetter);
	TTAttribute(const TTSymbolPtr newName, TTDataType newType, void* newAddress, TTSetterMethod newSetter);
	TTAttribute(const TTSymbolPtr newName, TTDataType newType, void* newAddress, TTGetterMethod newGetter, TTSetterMethod newSetter);
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
	const TTSymbolPtr	name;		///< the name of the message.
	TTMessageFlags		flags;		///< define the behavior of the message.
	TTMethod			method;		///< method associated with this message.

	TTMessage(const TTSymbolPtr newName, TTMethod newMethod, TTMessageFlags newFlags);
	virtual ~TTMessage();
};


template <class T>
TTErr TTObject::setAttributeValue(const TTSymbolPtr name, const T& value)
{
	TTValue	v(value);
	return setAttributeValue(name, v);
}

template <class T>
TTErr TTObject::getAttributeValue(const TTSymbolPtr name, T& value)
{
	TTValue	v;
	TTErr error = getAttributeValue(name, v);
	value = v;
	return error;
}

#endif // __TT_OBJECT_H__

