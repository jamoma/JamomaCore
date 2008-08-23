/* 
 * TTBlue Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTObject.h"
#include "TTEnvironment.h"


TTAttribute::TTAttribute(const TTSymbolPtr newName, TTDataType newType, void* newAddress)
: TTObject("attribute"), name(newName), type(newType), address(newAddress), getterFlags(kTTAttrDefaultFlags), setterFlags(kTTAttrDefaultFlags),
  readOnly(NO), rangeLowBound(0.0), rangeHighBound(1.0), rangeChecking(TT("none"))
{
	getter = (TTGetterMethod)&TTAttribute::defaultGetter;
	setter = (TTSetterMethod)&TTAttribute::defaultSetter;
}

TTAttribute::TTAttribute(const TTSymbolPtr newName, TTDataType newType, void* newAddress, TTGetterMethod newGetter)
: TTObject("attribute"), name(newName), type(newType), address(newAddress), getter(newGetter), getterFlags(kTTAttrDefaultFlags), setterFlags(kTTAttrDefaultFlags),
  readOnly(NO), rangeLowBound(0.0), rangeHighBound(1.0), rangeChecking(TT("none"))
{
	setter = (TTSetterMethod)&TTAttribute::defaultSetter;
}

TTAttribute::TTAttribute(const TTSymbolPtr newName, TTDataType newType, void* newAddress, TTSetterMethod newSetter)
: TTObject("attribute"), name(newName), type(newType), address(newAddress), setter(newSetter), getterFlags(kTTAttrDefaultFlags), setterFlags(kTTAttrDefaultFlags),
  readOnly(NO), rangeLowBound(0.0), rangeHighBound(1.0), rangeChecking(TT("none"))
{
	getter = (TTGetterMethod)&TTAttribute::defaultGetter;
}

TTAttribute::TTAttribute(const TTSymbolPtr newName, TTDataType newType, void* newAddress, TTGetterMethod newGetter, TTSetterMethod newSetter)
: TTObject("attribute"), name(newName), type(newType), address(newAddress), getter(newGetter), setter(newSetter), getterFlags(kTTAttrDefaultFlags), setterFlags(kTTAttrDefaultFlags),
  readOnly(NO), rangeLowBound(0.0), rangeHighBound(1.0), rangeChecking(TT("none"))
{
	;
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
	switch(attribute.type){
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
			value = *((TTInt32*)attribute.address);
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
			value = *((TTSymbol**)attribute.address);
			return kTTErrNone;
		case kTypeObject:
			value = *((TTObject*)attribute.address);
			return kTTErrNone;
		case kTypeNone:
			return kTTErrNone;
	}
	return kTTErrInvalidType;
}


TTErr TTAttribute::defaultSetter(const TTAttribute& attribute, const TTValue& value)
{
	switch(attribute.type){
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
			*((TTSymbol**)attribute.address) = (TTSymbol*)value;
			return kTTErrNone;
		case kTypeObject:
			*((TTObject*)attribute.address) = value;
			return kTTErrNone;
		case kTypeNone:
			return kTTErrNone;
	}
	return kTTErrInvalidType;
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
	if(newRange.getSize() == 2){
		newRange.get(0, rangeLowBound);
		newRange.get(1, rangeHighBound);
		return kTTErrNone;
	}
	else
		return kTTErrWrongNumValues;
}

TTErr TTAttribute::getrange(TTValue& currentRange)
{
	currentRange.clear();
	currentRange.append(rangeLowBound);
	currentRange.append(rangeHighBound);
	return kTTErrNone;
}

