/* 
 * TTBlue Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTObject.h"
#include "TTGlobal.h"


/****************************************************************************************************/

TTAttribute::TTAttribute(const TTSymbol& newName, TTDataType newType, void* newAddress)
: name(newName), type(newType), address(newAddress)
{
	getter = (TTGetterMethod)&TTAttribute::defaultGetter;
	setter = (TTSetterMethod)&TTAttribute::defaultSetter;
}

TTAttribute::TTAttribute(const TTSymbol& newName, TTDataType newType, void* newAddress, TTGetterMethod newGetter)
: name(newName), type(newType), address(newAddress), getter(newGetter)
{
	setter = (TTSetterMethod)&TTAttribute::defaultSetter;
}

TTAttribute::TTAttribute(const TTSymbol& newName, TTDataType newType, void* newAddress, TTSetterMethod newSetter)
: name(newName), type(newType), address(newAddress), setter(newSetter)
{
	getter = (TTGetterMethod)&TTAttribute::defaultGetter;
}

TTAttribute::TTAttribute(const TTSymbol& newName, TTDataType newType, void* newAddress, TTGetterMethod newGetter, TTSetterMethod newSetter)
: name(newName), type(newType), address(newAddress), getter(newGetter), setter(newSetter)
{

}


TTAttribute::~TTAttribute()
{
	;
}


TTErr TTAttribute::defaultGetter(TTValue& value, const TTAttribute& attribute)
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
			value = *((TTSymbol*)attribute.address);
			return kTTErrNone;
		case kTypeObject:
			value = *((TTObject*)attribute.address);
			return kTTErrNone;
		case kTypeNone:
			return kTTErrNone;
	}
	return kTTErrInvalidType;
}


TTErr TTAttribute::defaultSetter(const TTValue& value, const TTAttribute& attribute)
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
			*((TTSymbol*)attribute.address) = value;
			return kTTErrNone;
		case kTypeObject:
			*((TTObject*)attribute.address) = value;
			return kTTErrNone;
		case kTypeNone:
			return kTTErrNone;
	}
	return kTTErrInvalidType;
}


/****************************************************************************************************/

TTObject::TTObject(const char* name)
: messageCount(0), attributeCount(0), objectName(name)
{
}


TTObject::~TTObject()
{
	TTUInt16	i;

//	sendNotification(TT("objectDeleted"));

	for(i=0; i<attributeCount; i++)
		delete attributeObjects[i];
}


#if 0
#pragma mark -
#pragma mark Object Attributes
#endif

TTErr TTObject::registerAttribute(const TTSymbol& name, TTDataType type, void* address)
{
	attributeNames[attributeCount] = &name;
	attributeObjects[attributeCount] = new TTAttribute(name, type, address);
	attributeCount++;
	return kTTErrNone;
}

TTErr TTObject::registerAttribute(const TTSymbol& name, TTDataType type, void* address, TTGetterMethod getter)
{
	attributeNames[attributeCount] = &name;
	attributeObjects[attributeCount] = new TTAttribute(name, type, address, getter);
	attributeCount++;
	return kTTErrNone;
}

TTErr TTObject::registerAttribute(const TTSymbol& name, TTDataType type, void* address, TTSetterMethod setter)
{
	attributeNames[attributeCount] = &name;
	attributeObjects[attributeCount] = new TTAttribute(name, type, address, setter);
	attributeCount++;
	return kTTErrNone;
}

TTErr TTObject::registerAttribute(const TTSymbol& name, TTDataType type, void* address, TTGetterMethod getter, TTSetterMethod setter)
{
	attributeNames[attributeCount] = &name;
	attributeObjects[attributeCount] = new TTAttribute(name, type, address, getter, setter);
	attributeCount++;
	return kTTErrNone;
}


TTErr TTObject::getAttributeValue(const TTSymbol& name, TTValue& value)
{
	TTUInt8		i;
	TTAttribute	*attribute;
	
	for(i=0; i<attributeCount; i++){
		if(*attributeNames[i] == name){
			attribute = attributeObjects[i];
			return (this->*attribute->getter)(value, *attribute);
		}
	}
	return kTTErrInvalidAttribute;
}

TTErr TTObject::setAttributeValue(const TTSymbol& name, const TTValue& value)
{
	TTUInt8		i;
	TTAttribute	*attribute;
	
	for(i=0; i<attributeCount; i++){
		if(*attributeNames[i] == name){
			attribute = attributeObjects[i];
			return (this->*attribute->setter)(value, *attribute);
		}
	}
	return kTTErrInvalidAttribute;
}


TTErr TTObject::getAttributeValue(const TTSymbol& name, TTFloat32& value)
{
	TTValue	v;
	TTErr	err;
	
	err = getAttributeValue(name, v);
	value = v;
	return err;
}

TTErr TTObject::setAttributeValue(const TTSymbol& name, const TTFloat32& value)
{
	TTValue	v(value);
	return setAttributeValue(name, v);
}


TTErr TTObject::getAttributeValue(const TTSymbol& name, TTFloat64& value)
{
	TTValue	v;
	TTErr	err;
	
	err = getAttributeValue(name, v);
	value = v;
	return err;
}

TTErr TTObject::setAttributeValue(const TTSymbol& name, const TTFloat64& value)
{
	TTValue	v(value);
	return setAttributeValue(name, v);
}


TTErr TTObject::getAttributeValue(const TTSymbol& name, TTInt8& value)
{
	TTValue	v;
	TTErr	err;
	
	err = getAttributeValue(name, v);
	value = v;
	return err;
}

TTErr TTObject::setAttributeValue(const TTSymbol& name, const TTInt8& value)
{
	TTValue	v(value);
	return setAttributeValue(name, v);
}


TTErr TTObject::getAttributeValue(const TTSymbol& name, TTUInt8& value)
{
	TTValue	v;
	TTErr	err;
	
	err = getAttributeValue(name, v);
	value = v;
	return err;
}

TTErr TTObject::setAttributeValue(const TTSymbol& name, const TTUInt8& value)
{
	TTValue	v(value);
	return setAttributeValue(name, v);
}


TTErr TTObject::getAttributeValue(const TTSymbol& name, TTInt16& value)
{
	TTValue	v;
	TTErr	err;
	
	err = getAttributeValue(name, v);
	value = v;
	return err;
}

TTErr TTObject::setAttributeValue(const TTSymbol& name, const TTInt16& value)
{
	TTValue	v(value);
	return setAttributeValue(name, v);
}


TTErr TTObject::getAttributeValue(const TTSymbol& name, TTUInt16& value)
{
	TTValue	v;
	TTErr	err;
	
	err = getAttributeValue(name, v);
	value = v;
	return err;
}

TTErr TTObject::setAttributeValue(const TTSymbol& name, const TTUInt16& value)
{
	TTValue	v(value);
	return setAttributeValue(name, v);
}


TTErr TTObject::getAttributeValue(const TTSymbol& name, TTInt32& value)
{
	TTValue	v;
	TTErr	err;
	
	err = getAttributeValue(name, v);
	value = v;
	return err;
}

TTErr TTObject::setAttributeValue(const TTSymbol& name, const TTInt32& value)
{
	TTValue	v(value);
	return setAttributeValue(name, v);
}


TTErr TTObject::getAttributeValue(const TTSymbol& name, TTUInt32& value)
{
	TTValue	v;
	TTErr	err;
	
	err = getAttributeValue(name, v);
	value = v;
	return err;
}

TTErr TTObject::setAttributeValue(const TTSymbol& name, const TTUInt32& value)
{
	TTValue	v(value);
	return setAttributeValue(name, v);
}


TTErr TTObject::getAttributeValue(const TTSymbol& name, TTInt64& value)
{
	TTValue	v;
	TTErr	err;
	
	err = getAttributeValue(name, v);
	value = v;
	return err;
}

TTErr TTObject::setAttributeValue(const TTSymbol& name, const TTInt64& value)
{
	TTValue	v(value);
	return setAttributeValue(name, v);
}


TTErr TTObject::getAttributeValue(const TTSymbol& name, TTUInt64& value)
{
	TTValue	v;
	TTErr	err;
	
	err = getAttributeValue(name, v);
	value = v;
	return err;
}

TTErr TTObject::setAttributeValue(const TTSymbol& name, const TTUInt64& value)
{
	TTValue	v(value);
	return setAttributeValue(name, v);
}


TTErr TTObject::getAttributeValue(const TTSymbol& name, TTSymbol& value)
{
	TTValue	v;
	TTErr	err;
	
	err = getAttributeValue(name, v);
	value = v;
	return err;
}

TTErr TTObject::setAttributeValue(const TTSymbol& name, const TTSymbol& value)
{
	TTValue	v(value);
	return setAttributeValue(name, v);
}


void TTObject::getAttributeNames(TTValue& attributeNameList)
{
	TTUInt8		i;

	attributeNameList.clear();	
	for(i=0; i<attributeCount; i++)
		attributeNameList.append(*attributeNames[i]);
}


const TTSymbol& TTObject::getName()
{
	return objectName;
}


#if 0
#pragma mark -
#pragma mark Global Attributes
#endif

TTErr TTObject::registerGlobalAttribute(const TTSymbol& name, TTDataType type, void* address)
{
	return ttGlobalObject.registerAttribute(name, type, address);
}

TTErr TTObject::registerGlobalAttribute(const TTSymbol& name, TTDataType type, void* address, TTGetterMethod getter, TTSetterMethod setter)
{
	return ttGlobalObject.registerAttribute(name, type, address, getter, setter);
}

TTErr TTObject::getGlobalAttributeValue(const TTSymbol& name, TTValue& value)
{
	return ttGlobalObject.getAttributeValue(name, value);
}

TTErr TTObject::setGlobalAttributeValue(const TTSymbol& name, TTValue& value)
{
	return ttGlobalObject.setAttributeValue(name, value);
}


#if 0
#pragma mark -
#pragma mark Object Messages
#endif

TTErr TTObject::registerMessage(const TTSymbol& name, TTMethod message)
{
	messageNames[messageCount] = &name;
	messageTargets[messageCount] = message;
	messageCount++;
	return kTTErrNone;
}


TTErr TTObject::sendMessage(const TTSymbol& name)
{
	TTUInt8	i;
	TTValue foo;
	
	for(i=0; i<messageCount; i++){
		if(*messageNames[i] == name){
			(this->*messageTargets[i])(foo, name);
			return kTTErrNone;
		}
	}
	return kTTErrMethodNotFound;
}


TTErr TTObject::sendMessage(const TTSymbol& name, TTValue& value)
{
	TTUInt8	i;
	
	for(i=0; i<messageCount; i++){
		if(*messageNames[i] == name){
			(this->*messageTargets[i])(value, name);
			break;
		}
	}
	return kTTErrNone;
}

