/* 
 * TTBlue Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_ATTRIBUTE_H__
#define __TT_ATTRIBUTE_H__

#include "TTObject.h"


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


/** A convenience macro to be used for registering properties of attributes.
	This assumes that the property is one that has been explicitly supported by TTAttribute through the definition of accessor methods.
	If you are adding a custom property then you must define your own accessor methods and register the property by calling the
	TTObject::registerAttributeProperty() method directly.
*/
#define addAttributeProperty(attributeName, propertyName, initialValue)		registerAttributeProperty(TT(#attributeName), TT(#propertyName), initialValue, (TTGetterMethod)& TTAttribute::get##propertyName , (TTSetterMethod)& TTAttribute::set##propertyName )

/****************************************************************************************************/
// Class Specifications


/**
	This class represents a single attribute, as used by the TTObject class.
	At the moment we define it in the same file because we are sharing the typedef
	for TTMethod.
*/
class TTEXPORT TTAttribute : public TTObject {
private:
public:
	// Should make this group private, but to get things working initially, we're leaving them public...
	const TTSymbolPtr	name;			///< The name of the attribute.
	TTDataType			type;			///< The data type of the attribute value.
	void*				address;		///< Pointer to the memory holding the attribute value.
	TTGetterMethod		getter;			///< Method to fetch the attribute value.
	TTSetterMethod		setter;			///< Method to set the attribute value.
	TTAttributeFlags	getterFlags;	///< Define the behavior of the attribute getter method.
	TTAttributeFlags	setterFlags;	///< Define the behavior of the attribute setter method.
	TTValue				internalValue;	///< Attributes that maintain their own data use this member to store it.
										///< This should typically only be used by attribute properties that are not performance critical.
	TTBoolean			readOnly;		///< The readonly property, if defined, means an attribute cannot be set.
	TTFloat64			rangeLowBound;	///< If the range property is defined, this is the bottom of a value's range.
	TTFloat64			rangeHighBound;	///< If the range property is defined, this is the top of a value's range.
	TTSymbolPtr			rangeChecking;	///< If the rangeChecking property is defined, the value should be checked for range and modified accordingly.
	TTPtrSizedInt		reserved1;		///< Reserved for future use.
	TTPtrSizedInt		reserved2;		///< Reserved for future use.
	
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
	
	// Potential Attributes of TTAttribute
	TTErr setreadOnly(const TTValue& newReadOnlyValue);
	TTErr getreadOnly(TTValue& currentReadOnlyValue);
	
	TTErr setrange(const TTValue& newRange);
	TTErr getrange(TTValue& currentRange);
	
	TTErr setrangeChecking(const TTValue& newRangeCheckingMode);
	TTErr getrangeChecking(TTValue& currentRangeCheckingMode);
	
};


#endif // __TT_ATTRIBUTE_H__

