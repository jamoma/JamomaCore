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

TTMessage::TTMessage(const TTSymbol& newName, TTMethod newMethod, TTMessageFlags newFlags)
	: name(newName), method(newMethod), flags(newFlags)
{
	;
}


TTMessage::~TTMessage()
{
	;
}



/****************************************************************************************************/

TTAttribute::TTAttribute(const TTSymbol& newName, TTDataType newType, void* newAddress)
: name(newName), type(newType), address(newAddress), getterFlags(kTTAttrDefaultFlags), setterFlags(kTTAttrDefaultFlags)
{
	getter = (TTGetterMethod)&TTAttribute::defaultGetter;
	setter = (TTSetterMethod)&TTAttribute::defaultSetter;
}

TTAttribute::TTAttribute(const TTSymbol& newName, TTDataType newType, void* newAddress, TTGetterMethod newGetter)
: name(newName), type(newType), address(newAddress), getter(newGetter), getterFlags(kTTAttrDefaultFlags), setterFlags(kTTAttrDefaultFlags)
{
	setter = (TTSetterMethod)&TTAttribute::defaultSetter;
}

TTAttribute::TTAttribute(const TTSymbol& newName, TTDataType newType, void* newAddress, TTSetterMethod newSetter)
: name(newName), type(newType), address(newAddress), setter(newSetter), getterFlags(kTTAttrDefaultFlags), setterFlags(kTTAttrDefaultFlags)
{
	getter = (TTGetterMethod)&TTAttribute::defaultGetter;
}

TTAttribute::TTAttribute(const TTSymbol& newName, TTDataType newType, void* newAddress, TTGetterMethod newGetter, TTSetterMethod newSetter)
: name(newName), type(newType), address(newAddress), getter(newGetter), setter(newSetter), getterFlags(kTTAttrDefaultFlags), setterFlags(kTTAttrDefaultFlags)
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
: objectName(name), messageCount(0), attributeCount(0)
{
	;
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
	attributeObjects[attributeCount]->setGetterFlags(kTTAttrPassObject);
	attributeObjects[attributeCount]->setSetterFlags(kTTAttrPassObject);
	attributeCount++;
	return kTTErrNone;
}

TTErr TTObject::registerAttribute(const TTSymbol& name, TTDataType type, void* address, TTGetterMethod getter)
{
	attributeNames[attributeCount] = &name;
	attributeObjects[attributeCount] = new TTAttribute(name, type, address, getter);
	attributeObjects[attributeCount]->setSetterFlags(kTTAttrPassObject);
	attributeCount++;
	return kTTErrNone;
}

TTErr TTObject::registerAttribute(const TTSymbol& name, TTDataType type, void* address, TTSetterMethod setter)
{
	attributeNames[attributeCount] = &name;
	attributeObjects[attributeCount] = new TTAttribute(name, type, address, setter);
	attributeObjects[attributeCount]->setGetterFlags(kTTAttrPassObject);
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


TTErr TTObject::findAttribute(const TTSymbol& name, TTAttribute** attr)
{
	TTUInt8		i;
	
	for(i=0; i<attributeCount; i++){
		if(*attributeNames[i] == name){
			*attr = attributeObjects[i];
			return kTTErrNone;
		}
	}
	return kTTErrInvalidAttribute;
}


TTErr TTObject::getAttributeValue(const TTSymbol& name, TTValue& value)
{
	TTAttribute	*attribute;
	TTErr		err;
	
	err = findAttribute(name, &attribute);
	if(!err){
		if(attribute->getterFlags & kTTAttrPassObject)
			err = (this->*attribute->getter)(*attribute, value);
		else{
			TTMethodValue getter = (TTMethodValue)attribute->getter;
			err = (this->*getter)(value);
		}
	}
	
	return err;
}

TTErr TTObject::setAttributeValue(const TTSymbol& name, const TTValue& value)
{
	TTAttribute	*attribute;
	TTErr		err;
	
	err = findAttribute(name, &attribute);
	if(!err){
		if(attribute->setterFlags & kTTAttrPassObject)
			err = (this->*attribute->setter)(*attribute, value);
		else{
			TTMethodConstValue setter = (TTMethodConstValue)attribute->setter;
			err = (this->*setter)(value);
		}
	}
	return err;
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


TTErr TTObject::getAttributeGetterFlags(const TTSymbol& name, TTAttributeFlags& value)
{
	TTAttribute*	attribute;
	TTErr			err;

	err = findAttribute(name, &attribute);
	if(!err)
		attribute->getGetterFlags(value);
	
	return err;
}

TTErr TTObject::setAttributeGetterFlags(const TTSymbol& name, TTAttributeFlags& value)
{
	TTAttribute*	attribute;
	TTErr			err;

	err = findAttribute(name, &attribute);
	if(!err)
		attribute->setGetterFlags(value);
	
	return err;
}


TTErr TTObject::getAttributeSetterFlags(const TTSymbol& name, TTAttributeFlags& value)
{
	TTAttribute*	attribute;
	TTErr			err;

	err = findAttribute(name, &attribute);
	if(!err)
		attribute->getSetterFlags(value);
	
	return err;
}

TTErr TTObject::setAttributeSetterFlags(const TTSymbol& name, TTAttributeFlags& value)
{
	TTAttribute*	attribute;
	TTErr			err;

	err = findAttribute(name, &attribute);
	if(!err)
		attribute->setSetterFlags(value);
	
	return err;
}


void TTObject::getAttributeNames(TTValue& attributeNameList)
{
	TTUInt8		i;

	attributeNameList.clear();	
	for(i=0; i<attributeCount; i++)
		attributeNameList.append(*attributeNames[i]);
}


TTSymbol& TTObject::getName()
{
	return objectName;
}


#if 0
#pragma mark -
#pragma mark Global Attributes
#endif

TTErr TTObject::registerGlobalAttribute(const TTSymbol& name, TTDataType type, void* address)
{
	return ttGlobalObject->registerAttribute(name, type, address);
}

TTErr TTObject::registerGlobalAttribute(const TTSymbol& name, TTDataType type, void* address, TTGetterMethod getter, TTSetterMethod setter)
{
	return ttGlobalObject->registerAttribute(name, type, address, getter, setter);
}

TTErr TTObject::getGlobalAttributeValue(const TTSymbol& name, TTValue& value)
{
	return ttGlobalObject->getAttributeValue(name, value);
}

TTErr TTObject::setGlobalAttributeValue(const TTSymbol& name, TTValue& value)
{
	return ttGlobalObject->setAttributeValue(name, value);
}


#if 0
#pragma mark -
#pragma mark Object Messages
#endif

TTErr TTObject::registerMessage(const TTSymbol& name, TTMethod method)
{
	messageNames[messageCount] = &name;
	messageObjects[messageCount] = new TTMessage(name, method, kTTMessageDefaultFlags);
	messageCount++;
	return kTTErrNone;
}


TTErr TTObject::registerMessage(const TTSymbol& name, TTMethod method, TTMessageFlags flags)
{
	messageNames[messageCount] = &name;
	messageObjects[messageCount] = new TTMessage(name, method, flags);
	messageCount++;
	return kTTErrNone;
}


TTErr TTObject::sendMessage(const TTSymbol& name)
{
	TTUInt8		i;
	TTMessage	*message;

	for(i=0; i<messageCount; i++){
		if(*messageNames[i] == name){
			message = messageObjects[i];
			if(message->flags & kTTMessagePassNone){
				TTMethodNone	method = (TTMethodNone)message->method;
				return (this->*method)();
			}
			else if(message->flags & kTTMessagePassNameAndValue){
				TTValue foo;
				return (this->*message->method)(name, foo);			
			}
			else{	// default is kTTMessagePassValue
				TTMethodValue method = (TTMethodValue)message->method;
				TTValue foo;
				return (this->*method)(foo);
			}
		}
	}
	return kTTErrMethodNotFound;
}


TTErr TTObject::sendMessage(const TTSymbol& name, TTValue& value)
{
	TTUInt8		i;
	TTMessage	*message;

	for(i=0; i<messageCount; i++){
		if(*messageNames[i] == name){
			message = messageObjects[i];
			if(message->flags & kTTMessagePassNone){
				TTMethodNone method = (TTMethodNone)message->method;
				return (this->*method)();
			}
			else if(message->flags & kTTMessagePassNameAndValue){
				return (this->*message->method)(name, value);			
			}
			else{	// default is kTTMessagePassValue
				TTMethodValue method = (TTMethodValue)message->method;
				return (this->*method)(value);
			}
		}
	}
	return kTTErrMethodNotFound;
}

