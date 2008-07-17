/* 
 * TTBlue Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTObject.h"
#include "TTEnvironment.h"


/****************************************************************************************************/

TTMessage::TTMessage(const TTSymbolPtr newName, TTMethod newMethod, TTMessageFlags newFlags)
	: name(newName), method(newMethod), flags(newFlags)
{
	;
}


TTMessage::~TTMessage()
{
	;
}



/****************************************************************************************************/

TTAttribute::TTAttribute(const TTSymbolPtr newName, TTDataType newType, void* newAddress)
: name(newName), type(newType), address(newAddress), getterFlags(kTTAttrDefaultFlags), setterFlags(kTTAttrDefaultFlags)
{
	getter = (TTGetterMethod)&TTAttribute::defaultGetter;
	setter = (TTSetterMethod)&TTAttribute::defaultSetter;
}

TTAttribute::TTAttribute(const TTSymbolPtr newName, TTDataType newType, void* newAddress, TTGetterMethod newGetter)
: name(newName), type(newType), address(newAddress), getter(newGetter), getterFlags(kTTAttrDefaultFlags), setterFlags(kTTAttrDefaultFlags)
{
	setter = (TTSetterMethod)&TTAttribute::defaultSetter;
}

TTAttribute::TTAttribute(const TTSymbolPtr newName, TTDataType newType, void* newAddress, TTSetterMethod newSetter)
: name(newName), type(newType), address(newAddress), setter(newSetter), getterFlags(kTTAttrDefaultFlags), setterFlags(kTTAttrDefaultFlags)
{
	getter = (TTGetterMethod)&TTAttribute::defaultGetter;
}

TTAttribute::TTAttribute(const TTSymbolPtr newName, TTDataType newType, void* newAddress, TTGetterMethod newGetter, TTSetterMethod newSetter)
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
			//*((TTSymbol*)attribute.address) = value;
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


/****************************************************************************************************/

TTObject::TTObject(const char* name)
: objectName(TT(name))
{
	messages = new TTHash;
	attributes = new TTHash;
}


TTObject::~TTObject()
{
	TTValue	v, u;

	// sendNotification(TT("objectDeleted"));
	
	// Delete message objects, then delete the hash that maintains them.
	messages->getKeys(v);
	for(TTUInt16 i=0; i<v.getSize(); i++){
		TTSymbol*	name = NULL;
		TTMessage*	message = NULL;
		
		v.get(i, &name);
		messages->lookup(name, u);
		message = TTMessagePtr(TTPtr(u));
		delete message;
	}
	delete messages;
	
	// Delete attribute objects, then delete the hash that maintains them.
	attributes->getKeys(v);
	for(TTUInt16 i=0; i<v.getSize(); i++){
		TTSymbol*		name = NULL;
		TTAttribute*	attribute = NULL;
		
		v.get(i, &name);
		attributes->lookup(name, u);
		attribute = TTAttributePtr(TTPtr(u));
		delete attribute;
	}
	delete attributes;
}


#if 0
#pragma mark -
#pragma mark Object Attributes
#endif

TTErr TTObject::registerAttribute(const TTSymbolPtr name, TTDataType type, void* address)
{
	TTAttribute* newAttribute = new TTAttribute(name, type, address);

	newAttribute->setGetterFlags(kTTAttrPassObject);
	newAttribute->setSetterFlags(kTTAttrPassObject);
	attributes->append(name, TTPtr(newAttribute));
	return kTTErrNone;
}

TTErr TTObject::registerAttribute(const TTSymbolPtr name, TTDataType type, void* address, TTGetterMethod getter)
{
	TTAttribute* newAttribute = new TTAttribute(name, type, address, getter);

	newAttribute->setSetterFlags(kTTAttrPassObject);
	attributes->append(name, TTPtr(newAttribute));
	return kTTErrNone;
}

TTErr TTObject::registerAttribute(const TTSymbolPtr name, TTDataType type, void* address, TTSetterMethod setter)
{
	TTAttribute* newAttribute = new TTAttribute(name, type, address, setter);
	
	newAttribute->setGetterFlags(kTTAttrPassObject);
	attributes->append(name, TTPtr(newAttribute));
	return kTTErrNone;
}

TTErr TTObject::registerAttribute(const TTSymbolPtr name, TTDataType type, void* address, TTGetterMethod getter, TTSetterMethod setter)
{
	TTAttribute* newAttribute = new TTAttribute(name, type, address, getter, setter);

	attributes->append(name, TTPtr(newAttribute));
	return kTTErrNone;
}


TTErr TTObject::findAttribute(const TTSymbolPtr name, TTAttribute** attr)
{
	TTValue v;
	TTErr	err = kTTErrNone;
	
	err = attributes->lookup(TTSymbolPtr(name), v);
	if(!err){
		*attr = TTAttributePtr(TTPtr(v));
		return kTTErrNone;
	}
	else
		return kTTErrInvalidAttribute;
}


TTErr TTObject::getAttributeValue(const TTSymbolPtr name, TTValue& value)
{
	TTAttributePtr	attribute;
	TTErr			err;
	
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

TTErr TTObject::setAttributeValue(const TTSymbolPtr name, const TTValue& value)
{
	TTAttributePtr	attribute;
	TTErr			err;
	
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

TTErr TTObject::getAttributeGetterFlags(const TTSymbolPtr name, TTAttributeFlags& value)
{
	TTAttributePtr	attribute;
	TTErr			err;

	err = findAttribute(name, &attribute);
	if(!err)
		attribute->getGetterFlags(value);
	
	return err;
}

TTErr TTObject::setAttributeGetterFlags(const TTSymbolPtr name, TTAttributeFlags& value)
{
	TTAttributePtr	attribute;
	TTErr			err;

	err = findAttribute(name, &attribute);
	if(!err)
		attribute->setGetterFlags(value);
	
	return err;
}


TTErr TTObject::getAttributeSetterFlags(const TTSymbolPtr name, TTAttributeFlags& value)
{
	TTAttributePtr	attribute;
	TTErr			err;

	err = findAttribute(name, &attribute);
	if(!err)
		attribute->getSetterFlags(value);
	
	return err;
}

TTErr TTObject::setAttributeSetterFlags(const TTSymbolPtr name, TTAttributeFlags& value)
{
	TTAttributePtr	attribute;
	TTErr			err;

	err = findAttribute(name, &attribute);
	if(!err)
		attribute->setSetterFlags(value);
	
	return err;
}


void TTObject::getAttributeNames(TTValue& attributeNameList)
{
	attributes->getKeys(attributeNameList);
}


TTSymbol* TTObject::getName()
{
	return objectName;
}


#if 0
#pragma mark -
#pragma mark Object Messages
#endif

TTErr TTObject::registerMessage(const TTSymbolPtr name, TTMethod method)
{
	TTMessagePtr newMessage = new TTMessage(name, method, kTTMessageDefaultFlags);
	
	if(ttEnvironment && ttEnvironment->debugMessaging)
		logMessage("Registering Message '%s' with flags = %ld, message count for this object is now %ld", name->getCString(), kTTMessageDefaultFlags, messages->getSize());
	
	messages->append(name, TTPtr(newMessage));
	return kTTErrNone;
}


TTErr TTObject::registerMessage(const TTSymbolPtr name, TTMethod method, TTMessageFlags flags)
{
	TTMessagePtr newMessage = new TTMessage(name, method, flags);
	
	if(ttEnvironment->debugMessaging)
		logMessage("Registering Message '%s' with flags = %ld, message count for this object is now %ld", name->getCString(), kTTMessageDefaultFlags, messages->getSize());
	
	messages->append(name, TTPtr(newMessage));
	return kTTErrNone;
}


TTErr TTObject::findMessage(const TTSymbolPtr name, TTMessage** message)
{
	TTValue v;
	TTErr	err = kTTErrNone;
	
	err = messages->lookup(TTSymbolPtr(name), v);
	if(!err){
		*message = TTMessagePtr(TTPtr(v));
		return kTTErrNone;
	}
	else
		return kTTErrInvalidAttribute;
}


TTErr TTObject::sendMessage(const TTSymbolPtr name)
{
	TTValue	v;
	return sendMessage(name, v);
}


TTErr TTObject::sendMessage(const TTSymbolPtr name, TTValue& value)
{
	TTMessagePtr	message;
	TTErr			err;
	
	err = findMessage(name, &message);
	if(!err){
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
	return kTTErrMethodNotFound;
}



#if 0
#pragma mark -
#pragma mark Observing
#endif

TTErr TTObject::registerObserverForMessage(const TTObject& observingObject, const TTSymbolPtr messageName)
{

}

TTErr TTObject::registerObserverForAttribute(const TTObject& observingObject, const TTSymbolPtr attributeName)
{

}

TTErr TTObject::registerObserverForNotifications(const TTObject& observingObject, const TTSymbolPtr notificationName)
{

}


TTErr TTObject::unregisterObserverForMessage(const TTObject& observingObject, const TTSymbolPtr messageName)
{

}

TTErr TTObject::unregisterObserverForAttribute(const TTObject& observingObject, const TTSymbolPtr attributeName)
{

}

TTErr TTObject::unregisterObserverForNotifications(const TTObject& observingObject, const TTSymbolPtr notificationName)
{

}



#if 0
#pragma mark -
#pragma mark Logging
#endif

/**	Log messages scoped to this object instance. */
TTErr TTObject::logMessage(char* fmtstring, ...)
{
	char	str[4000];
	char	fullstr[4096];
	va_list	ap;
	
	va_start(ap, fmtstring);
	vsnprintf(str, 4000, fmtstring, ap);
	va_end(ap);
	str[4095] = 0;
	
	strncpy(fullstr, objectName->getCString(), 4095);
	strncat(fullstr, " : ", 4095);
	strncat(fullstr, str, 4095);
	TTLogMessage(fullstr);
	return kTTErrNone;
}


TTErr TTObject::logWarning(char* fmtstring, ...)
{
	char	str[4000];
	char	fullstr[4096];
	va_list	ap;
	
	va_start(ap, fmtstring);
	vsnprintf(str, 4000, fmtstring, ap);
	va_end(ap);
	str[4095] = 0;
	
	strncpy(fullstr, objectName->getCString(), 4095);
	strncat(fullstr, " : ", 4095);
	strncat(fullstr, str, 4095);
	TTLogWarning(fullstr);
	return kTTErrNone;
}


TTErr TTObject::logError(char* fmtstring, ...)
{
	char	str[4000];
	char	fullstr[4096];
	va_list	ap;
	
	va_start(ap, fmtstring);
	vsnprintf(str, 4000, fmtstring, ap);
	va_end(ap);
	str[4095] = 0;
	
	strncpy(fullstr, objectName->getCString(), 4095);
	strncat(fullstr, " : ", 4095);
	strncat(fullstr, str, 4095);
	TTLogError(fullstr);
	return kTTErrNone;	
}


TTErr TTObject::logDebug(char* fmtstring, ...)
{
	if(ttEnvironment->debugBasic){
		char	str[4000];
		char	fullstr[4096];
		va_list	ap;
		
		va_start(ap, fmtstring);
		vsnprintf(str, 4000, fmtstring, ap);
		va_end(ap);
		str[4095] = 0;
		
		strncpy(fullstr, objectName->getCString(), 4095);
		strncat(fullstr, " : ", 4095);
		strncat(fullstr, str, 4095);
		TTLogDebug(fullstr);
	}
	return kTTErrNone;
}

