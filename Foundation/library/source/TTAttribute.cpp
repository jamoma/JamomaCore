/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief The TTAttribute class represents a single attribute, as used by the TTObjectBase class.
 *
 * @details 
 *
 * @authors Timothy Place, Theo de la Hogue, Nils Peters, Trond Lossius
 *
 * @copyright Copyright © 2008, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTObject.h"
#include "TTMatrix.h"
#include "TTEnvironment.h"
#include "TTCallback.h"


TTAttribute::TTAttribute(const TTSymbol& newName, TTDataType newType, void* newAddress) :
	TTObjectBase(TTValue()),
	name(newName), 
	type(newType), 
	address(newAddress), 
	getterObject(NULL), 
	setterObject(NULL), 
	getterFlags(kTTAttrDefaultFlags), 
	setterFlags(kTTAttrDefaultFlags),
  	readOnly(NO), 
	rangeLowBound(0.0), 
	rangeHighBound(1.0), 
	rangeChecking(kTTSym_none),
	hidden(NO),
	description(kTTSymEmpty),
	mDefaultValue(0)
{
	getter = (TTGetterMethod)&TTAttribute::defaultGetter;
	setter = (TTSetterMethod)&TTAttribute::defaultSetter;
}

TTAttribute::TTAttribute(const TTSymbol& newName, TTDataType newType, void* newAddress, TTGetterMethod newGetter)
: TTObjectBase(TTValue()), name(newName), type(newType), address(newAddress), getter(newGetter), getterObject(NULL), setterObject(NULL), getterFlags(kTTAttrDefaultFlags), setterFlags(kTTAttrDefaultFlags),
  readOnly(NO), rangeLowBound(0.0), rangeHighBound(1.0), rangeChecking(kTTSym_none), hidden(NO), description(kTTSymEmpty), mDefaultValue(0)
{
	setter = (TTSetterMethod)&TTAttribute::defaultSetter;
}

TTAttribute::TTAttribute(const TTSymbol& newName, TTDataType newType, void* newAddress, TTSetterMethod newSetter)
: TTObjectBase(TTValue()), name(newName), type(newType), address(newAddress), setter(newSetter), getterObject(NULL), setterObject(NULL), getterFlags(kTTAttrDefaultFlags), setterFlags(kTTAttrDefaultFlags),
  readOnly(NO), rangeLowBound(0.0), rangeHighBound(1.0), rangeChecking(kTTSym_none), hidden(NO), description(kTTSymEmpty), mDefaultValue(0)
{
	getter = (TTGetterMethod)&TTAttribute::defaultGetter;
}

TTAttribute::TTAttribute(const TTSymbol& newName, TTDataType newType, void* newAddress, TTGetterMethod newGetter, TTSetterMethod newSetter)
: TTObjectBase(TTValue()), name(newName), type(newType), address(newAddress), getter(newGetter), setter(newSetter), getterObject(NULL), setterObject(NULL), getterFlags(kTTAttrDefaultFlags), setterFlags(kTTAttrDefaultFlags),
  readOnly(NO), rangeLowBound(0.0), rangeHighBound(1.0), rangeChecking(kTTSym_none), hidden(NO), description(kTTSymEmpty), mDefaultValue(0)
{
	;
}

TTAttribute::TTAttribute(const TTSymbol& newName, const TTObjectBasePtr newGetterObject, const TTObjectBasePtr newSetterObject)
: TTObjectBase(TTValue()), name(newName), type(kTypeNone), getterObject(newGetterObject), setterObject(newSetterObject), getterFlags(kTTAttrPassObject), setterFlags(kTTAttrPassObject),
  readOnly(NO), rangeLowBound(0.0), rangeHighBound(1.0), rangeChecking(kTTSym_none), hidden(NO), description(kTTSymEmpty), mDefaultValue(0)
{
	getter = (TTGetterMethod)&TTAttribute::callbackGetter;
	setter = (TTSetterMethod)&TTAttribute::callbackSetter;
}

TTAttribute::TTAttribute(TTAttributePtr extendedAttribute, const TTObjectBasePtr extendedObject)
: TTObjectBase(TTValue()), name(extendedAttribute->name), type(extendedAttribute->type), getterObject(extendedObject), setterObject(extendedObject), getterFlags(kTTAttrPassObject), setterFlags(kTTAttrPassObject),
readOnly(extendedAttribute->readOnly), rangeLowBound(extendedAttribute->rangeLowBound), rangeHighBound(extendedAttribute->rangeHighBound), rangeChecking(extendedAttribute->rangeChecking), description(kTTSymEmpty), mDefaultValue(0)
{
	getter = (TTGetterMethod)&TTAttribute::extendedGetter;
	setter = (TTSetterMethod)&TTAttribute::extendedSetter;
}

TTAttribute::~TTAttribute()
{
	;
}


void TTAttribute::setGetterFlags(TTAttributeFlags newFlags)
{
	getterFlags = newFlags;
}

void TTAttribute::getGetterFlags(TTAttributeFlags& currentFlags)
{
	currentFlags = getterFlags;
}

void TTAttribute::setSetterFlags(TTAttributeFlags newFlags)
{
	setterFlags = newFlags;
}

void TTAttribute::getSetterFlags(TTAttributeFlags& currentFlags)
{
	currentFlags = setterFlags;
}


TTErr TTAttribute::defaultGetter(const TTAttribute& attribute, TTValue& value)
{	
	switch(attribute.type) {
		case kTypeFloat32:
			value = *((TTFloat32*)attribute.address);
			return kTTErrNone;
		case kTypeFloat64:
			value = *((TTFloat64*)attribute.address);
			return kTTErrNone;
		case kTypeInt8:
			value = *((TTInt8*)attribute.address);
			return kTTErrNone;
		case kTypeUInt8:
			value = *((TTUInt8*)attribute.address);
			return kTTErrNone;
		case kTypeInt16:
			value = *((TTInt16*)attribute.address);
			return kTTErrNone;
		case kTypeUInt16:
			value = *((TTUInt16*)attribute.address);
			return kTTErrNone;
		case kTypeInt32:
			value = (int)*((TTInt32*)attribute.address);
			return kTTErrNone;
		case kTypeUInt32:
			value = *((TTUInt32*)attribute.address);
			return kTTErrNone;
		case kTypeInt64:
			value = *((TTInt64*)attribute.address);
			return kTTErrNone;
		case kTypeUInt64:
			value = *((TTUInt64*)attribute.address);
			return kTTErrNone;
		case kTypeBoolean:
			value = *((TTBoolean*)attribute.address);
			return kTTErrNone;
		case kTypeSymbol:
			value = *((TTSymbol*)attribute.address);
			return kTTErrNone;
		case kTypeObject:
			value = *((TTObjectBasePtr*)attribute.address);
			return kTTErrNone;
//		case kTypeMatrix:
//			value = *((TTMatrix*)attribute.address);
//			return kTTErrNone;
		case kTypePointer:
			value = *((TTPtr*)attribute.address);
			return kTTErrNone;
		case kTypeNone:
			return kTTErrNone;
		case kTypeLocalValue:
			value = *((TTValue*)attribute.address);
			return kTTErrNone;
			
		case kTypeString:

		case kNumTTDataTypes:
		default:
			return kTTErrInvalidType;
	}
	return kTTErrInvalidType;
}


TTErr TTAttribute::defaultSetter(const TTAttribute& attribute, const TTValue& value)
{
	switch (attribute.type) {
		case kTypeFloat32:
			*((TTFloat32*)attribute.address) = value;
			return kTTErrNone;
		case kTypeFloat64:
			*((TTFloat64*)attribute.address) = value;
			return kTTErrNone;
		case kTypeInt8:
			*((TTInt8*)attribute.address) = value;
			return kTTErrNone;
		case kTypeUInt8:
			*((TTUInt8*)attribute.address) = value;
			return kTTErrNone;
		case kTypeInt16:
			*((TTInt16*)attribute.address) = value;
			return kTTErrNone;
		case kTypeUInt16:
			*((TTUInt16*)attribute.address) = value;
			return kTTErrNone;
		case kTypeInt32:
			*((TTInt32*)attribute.address) = value;
			return kTTErrNone;
		case kTypeUInt32:
			*((TTUInt32*)attribute.address) = value;
			return kTTErrNone;
		case kTypeInt64:
			*((TTInt64*)attribute.address) = value;
			return kTTErrNone;
		case kTypeUInt64:
			*((TTUInt64*)attribute.address) = value;
			return kTTErrNone;
		case kTypeBoolean:
			*((TTBoolean*)attribute.address) = value;
			return kTTErrNone;
		case kTypeSymbol:
			*((TTSymbol*)attribute.address) = value;
			return kTTErrNone;
		case kTypeObject:
			*((TTObjectBasePtr*)attribute.address) = value;
			return kTTErrNone;
//		case kTypeMatrix:
//			*((TTMatrix*)attribute.address) = value;
//			return kTTErrNone;
		case kTypePointer:
			*((TTPtr*)attribute.address) = (TTPtr)value;
			return kTTErrNone;
		case kTypeNone:
			return kTTErrNone;

		case kTypeString:
		case kTypeLocalValue:
		case kNumTTDataTypes:
		default:
			return kTTErrInvalidType;			
	}
	return kTTErrInvalidType;
}

TTErr TTAttribute::callbackGetter(const TTAttribute& attribute, TTValue& value)
{
	TTCallbackPtr aGetter = (TTCallbackPtr)attribute.getterObject;
	
	return aGetter->notify(value, value);
}

TTErr TTAttribute::callbackSetter(const TTAttribute& attribute, TTValue& value)
{
	TTCallbackPtr aSetter = (TTCallbackPtr)attribute.setterObject;
	
	return aSetter->notify(value, value);
}

TTErr TTAttribute::extendedGetter(const TTAttribute& attribute, TTValue& value)
{
	TTObjectBasePtr anExtendedObject = (TTObjectBasePtr)attribute.getterObject;
	
	return anExtendedObject->getAttributeValue(attribute.name, value);
}

TTErr TTAttribute::extendedSetter(const TTAttribute& attribute, TTValue& value)
{
	TTObjectBasePtr anExtendedObject = (TTObjectBasePtr)attribute.setterObject;
	
	return anExtendedObject->setAttributeValue(attribute.name, value);
}

TTErr TTAttribute::setreadOnly(const TTValue& newReadOnlyValue)
{
	readOnly = newReadOnlyValue;
	return kTTErrNone;
}

TTErr TTAttribute::getreadOnly(TTValue& currentReadOnlyValue)
{
	currentReadOnlyValue = readOnly;
	return kTTErrNone;
}


TTErr TTAttribute::setrange(const TTValue& newRange)
{
	if (newRange.size() == 2) {
		rangeLowBound = newRange[0];
		rangeHighBound = newRange[1];
		return kTTErrNone;
	}
	else
		return kTTErrWrongNumValues;
}

TTErr TTAttribute::getrange(TTValue& currentRange)
{
	currentRange.clear();
	currentRange.push_back(rangeLowBound);
	currentRange.append(rangeHighBound);
	return kTTErrNone;
}


TTErr TTAttribute::setrangeChecking(const TTValue& newRangeCheckingMode)
{
	rangeChecking = newRangeCheckingMode;
	return kTTErrNone;
}

TTErr TTAttribute::getrangeChecking(TTValue& currentRangeCheckingMode)
{
	currentRangeCheckingMode = rangeChecking;
	return kTTErrNone;
}


TTErr TTAttribute::sethidden(const TTValue& newHiddenFlag)
{
	hidden = newHiddenFlag;
	return kTTErrNone;
}

TTErr TTAttribute::gethidden(TTValue& currentHiddenFlag)
{
	currentHiddenFlag = hidden;
	return kTTErrNone;
}


TTErr TTAttribute::setdescription(const TTValue& newDescription)
{
	description = newDescription[0];
	return kTTErrNone;
}

TTErr TTAttribute::getdescription(TTValue& returnedDescription)
{
	returnedDescription = description;
	return kTTErrNone;
}


TTErr TTAttribute::setdefaultValue(const TTValue& aDefaultValue)
{
	mDefaultValue = aDefaultValue;
	return kTTErrNone;
}

TTErr TTAttribute::getdefaultValue(TTValue& aReturnedDefaultValue)
{
	aReturnedDefaultValue = mDefaultValue;
	return kTTErrNone;
}

