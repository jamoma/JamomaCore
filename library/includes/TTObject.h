/* 
 * The Jamoma Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_OBJECT_H__
#define __TT_OBJECT_H__

#include "TTBase.h"
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
class TTObject;
class TTClass;

typedef TTAttribute*	TTAttributePtr;
typedef TTMessage*		TTMessagePtr;
typedef TTObject*		TTObjectPtr;
typedef TTObject**		TTObjectHandle;
typedef TTObject&		TTObjectRef;
typedef TTClass*		TTClassPtr;


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
enum TTMessageFlags {
	kTTMessageDefaultFlags = 0,		///< The default set of flags will be used if this is specified.  At this time the default is #kTTMethodPassValue.
	kTTMessagePassNone = 1,			///< Set this flag if the method you are binding to this message is prototyped to accept no arguments.
	kTTMessagePassValue = 2,		///< Set this flag if the method you are binding to this message is prototyped with a single #TTValue& argument.
	kTTMessagePassNameAndValue = 4	///< Set this flag if the method you are binding to this message is prototyped with two arguments: a const #TTSymbol& and a #TTValue&.
};
	
/** Flags that determine the behavior of messages. */
enum TTAttributeFlags {
	kTTAttrDefaultFlags = 0,		///< The default set of flags will be used if this is specified. At this time the default is #kTTAttrPassValueOnly.
	kTTAttrPassValueOnly = 1,		///< Attribute accessors will only be passed a reference to the attribute's value.
	kTTAttrPassObject = 2			///< Attribute accessors will first be passed a reference to the #TTAttribute object, then it will be passed  a reference to the attribute's value.
};


/****************************************************************************************************/
// Class Specifications

/**
	Base class for all first-class Jamoma objects.
	Internal objects may inherit directly from #TTObject, 
	but most objects should inherit from #TTDataObject or #TTAudioObject.
*/
class TTFOUNDATION_EXPORT TTObject : public TTBase {
private:
	friend class TTEnvironment;

	TTClassPtr			classPtr;			///< The class definition for this object
	TTHash*				messages;			///< The collection of all messages for this object, keyed on the message name.
	TTHash*				attributes;			///< The collection of all attributes for this object, keyed on the attribute name.
protected:
	TTList*				observers;			///< List of all objects watching this object for life-cycle and other changes.
private:
	TTList*				messageObservers;	///< List of all objects watching this object for messages sent to it.
	TTList*				attributeObservers;	///< List of all objects watching this object for changes to attribute values.
	TTUInt8				locked;				///< Is there a lock placed on this object using lock() or unlock()?
	TTUInt16			referenceCount;		///< Reference count for this instance.
public:
	TTBoolean			valid;				///< If the object isn't completely built, or is in the process of freeing, this will be false.
private:
	TTPtrSizedInt		reserved1;			///< Reserved -- May be used for something in the future without changing the size of the struct.
	TTPtrSizedInt		reserved2;			///< Reserved -- May be used for something in the future without changing the size of the struct.

protected:
	TTObject(TTValue& arguments);
public:
	virtual ~TTObject();
	
	/**	Query an object to get its current reference count.	*/
	TTUInt16 getReferenceCount() {return referenceCount;}
	
	/**
		The theory on attributes is that the subclass calls registerAttribute()
		and the base class manages a list of all registered attributes.
		
		The the end-user calls setAttribute() on the object (which is defined in 
		the base class only) and it dispatches the message as appropriate.
	*/
	TTErr registerAttribute(const TTSymbolPtr name, const TTDataType type, void* address);
	TTErr registerAttribute(const TTSymbolPtr name, const TTDataType type, void* address, TTGetterMethod getter);
	TTErr registerAttribute(const TTSymbolPtr name, const TTDataType type, void* address, TTSetterMethod setter);
	TTErr registerAttribute(const TTSymbolPtr name, const TTDataType type, void* address, TTGetterMethod getter, TTSetterMethod setter);
	TTErr registerAttribute(const TTSymbolPtr name, const TTObjectPtr newGetterObject, const TTObjectPtr newSetterObject);
	
	/** Extend the attribute of an existing TTObject to this TTObject (using another attribute name) 
		@param	name			The name of the attribute as you wish for it to be in your object (e.g. myFrequency).
		@param	extendedObject	A pointer to the object to which the attribute will be bound.
		@param	extendedName	The name of the attribute as defined by the object that you are extending (e.g. frequency).
		@return					An error code.
	 */
	TTErr extendAttribute(const TTSymbolPtr name, const TTObjectPtr extendedObject, const TTSymbolPtr extendedName);

	TTErr removeAttribute(const TTSymbolPtr name);
	
	TTErr findAttribute(const TTSymbolPtr name, TTAttribute** attr);

	/**	Set an attribute value for an object
		@param	name	The name of the attribute to set.
		@param	value	The value to use for setting the attribute.  
						This value can be changed(!), for example if the value is out of range for the attribute.
						Hence, it is not declared const.
		@return			An error code.
	 */
	TTErr setAttributeValue(const TTSymbolPtr name, TTValue& value);
	TTErr getAttributeValue(const TTSymbolPtr name, TTValue& value);

/*	
	// special case to work around "ambiguous overload" errors in GCC 4.2
	TTErr setAttributeValue(const TTSymbolPtr name, const int& value)
	{
		TTValue v(value);
		return setAttributeValue(name, v);
	}
	
	template <class T>
	TTErr setAttributeValue(const TTSymbolPtr name, const T& value)
	{
		TTValue	v(value);
		return setAttributeValue(name, v);
	}
*/
	// We do the following because templates cause us a lot of headaches in this case due to type ambiguity and linking
#define TT_SETATTR_WRAP(type) \
	TTErr setAttributeValue(const TTSymbolPtr name, const type & value)	\
	{																	\
		TTValue v(value);												\
		return setAttributeValue(name, v);								\
	}
	
	TT_SETATTR_WRAP(TTInt8)
	TT_SETATTR_WRAP(TTInt16)
#ifdef USE_TTInt32
	TT_SETATTR_WRAP(TTInt32)
#else
	TT_SETATTR_WRAP(int) // defined(TT_PLATFORM_MAC)	// <-- seems to be we need it this way on Windows too
	//	TTErr setAttributeValue(const TTSymbolPtr name, const int value)	
	//	{																	
	//		TTValue v((TTInt32)value);												
	//		return setAttributeValue(name, v);								
	//	}
#endif
	TT_SETATTR_WRAP(TTInt64)
	TT_SETATTR_WRAP(TTUInt8)
	TT_SETATTR_WRAP(TTUInt16)
#ifdef USE_TTInt32
	TT_SETATTR_WRAP(TTUInt32)
#else
//	TT_SETATTR_WRAP(unsigned int)
	TTErr setAttributeValue(const TTSymbolPtr name, const unsigned int value)	
	{																	
		TTValue v((TTUInt32)value);
		return setAttributeValue(name, v);
	}
#endif
	TT_SETATTR_WRAP(TTUInt64)
	TT_SETATTR_WRAP(TTFloat32)
	TT_SETATTR_WRAP(TTFloat64)
	TT_SETATTR_WRAP(TTSymbolPtr)
	TT_SETATTR_WRAP(TTPtr)
	
#undef TT_SETATTR_WRAP
	
	template <class T>
	TTErr getAttributeValue(const TTSymbolPtr name, T& value)
	{
		TTValue	v;
		TTErr error = getAttributeValue(name, v);
		value = v;
		return error;
	}
	
	TTErr getAttributeGetterFlags(const TTSymbolPtr name, TTAttributeFlags& value);
	TTErr setAttributeGetterFlags(const TTSymbolPtr name, TTAttributeFlags& value);
	TTErr getAttributeSetterFlags(const TTSymbolPtr name, TTAttributeFlags& value);
	TTErr setAttributeSetterFlags(const TTSymbolPtr name, TTAttributeFlags& value);

	TTErr registerAttributeProperty(const TTSymbolPtr attributeName, const TTSymbolPtr propertyName, const TTValue& initialValue, TTGetterMethod getter, TTSetterMethod setter);
	TTErr registerMessageProperty(const TTSymbolPtr messageName, const TTSymbolPtr propertyName, const TTValue& initialValue, TTGetterMethod getter, TTSetterMethod setter);
	
	TTErr getAttribute(const TTSymbolPtr name, TTAttributePtr* attributeObject)
	{
		return findAttribute(name, attributeObject);
	}
	
	TTErr getMessage(const TTSymbolPtr name, TTMessagePtr* messageObject)
	{
		return findMessage(name, messageObject);
	}
	
	
	/** return a list of names of the available attributes */
	void getAttributeNames(TTValue& attributeNameList);
	
	/** return a list of names of the available messages */
	void getMessageNames(TTValue& messageNameList);
	
	/** return the name of this class */
	TTSymbol* getName() const;

	
	TTErr registerMessage(const TTSymbolPtr name, TTMethod method);
	TTErr registerMessage(const TTSymbolPtr name, TTMethod method, TTMessageFlags flags);
	TTErr findMessage(const TTSymbolPtr name, TTMessage** message);
	TTErr sendMessage(const TTSymbolPtr name);
	TTErr sendMessage(const TTSymbolPtr name, TTValue& value);

// TODO: implement
//	TTErr registerMessageProperty(const TTSymbolPtr messageName, const TTSymbolPtr propertyName, const TTValue& initialValue);
	
	TTErr registerObserverForMessage(const TTObject& observingObject, const TTSymbolPtr messageName);
	TTErr registerObserverForAttribute(const TTObject& observingObject, const TTSymbolPtr attributeName);
	TTErr registerObserverForNotifications(const TTObject& observingObject);
	TTErr unregisterObserverForMessage(const TTObject& observingObject, const TTSymbolPtr messageName);
	TTErr unregisterObserverForAttribute(const TTObject& observingObject, const TTSymbolPtr attributeName);
	TTErr unregisterObserverForNotifications(const TTObject& observingObject);
	
	TTErr sendNotification(const TTSymbolPtr name, const TTValue& arguments);
	
	
	/**	Log messages scoped to this object instance. */
	TTErr logMessage(TTImmutableCString fmtstring, ...);
	TTErr logWarning(TTImmutableCString fmtstring, ...);
	TTErr logError(TTImmutableCString fmtstring, ...);
	
	/**	Log messages (scoped to this object instance) to output only if the basic debugging flag is enabled in the environment.  */
	TTErr logDebug(TTImmutableCString fmtstring, ...);
	
	
	inline TTErr lock()
	{
		locked++;
		return kTTErrNone;
	}
	
	inline TTErr unlock()
	{
		locked--;
		return kTTErrNone;
	}
	
	inline TTBoolean getlock()
	{
		return locked > 0;
	}
	
	virtual TTErr test(TTValue& returnedTestInfo)
	{
		logMessage("No Tests have been written for this class -- please supply a test method.\n");
		return kTTErrGeneric;
	}
	
};


#include "TTAttribute.h"
#include "TTMessage.h"


#define TT_OBJECT_CONSTRUCTOR_EXPORT \
	\
	extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void);\
	TTErr loadTTExtension(void)\
	{\
		TTFoundationInit();\
		thisTTClass :: registerClass(); \
		return kTTErrNone;\
	}\
	\
	TT_OBJECT_CONSTRUCTOR


#endif // __TT_OBJECT_H__

