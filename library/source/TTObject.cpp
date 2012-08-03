/*
 * The Jamoma Object Base Class
 * Copyright 2008, Timothy Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTObject.h"
#include "TTEnvironment.h"
#include "TTClass.h"

TTObject::TTObject(TTValue& arguments)
	: classPtr(NULL), observers(NULL), messageObservers(NULL), attributeObservers(NULL),
	  mLocked(false), referenceCount(1), valid(false), reserved1(0), reserved2(0)
{
	messages = new TTHash;
	attributes = new TTHash;
	observers = new TTList;
	// 'valid' will be set true by the Environment class which is the factory for all objects
}


TTObject::~TTObject()
{
	TTValue	v, u;

	delete observers;

	// Delete message objects, then delete the hash that maintains them.
	messages->getKeys(v);
	for (TTUInt16 i=0; i<v.getSize(); i++) {
		TTSymbolRef	name(kTTSymEmpty);
		TTMessage*	message = NULL;

		v.get(i, name);
		messages->lookup(name, u);
		message = TTMessagePtr(TTPtr(u));
		delete message;
	}
	delete messages;

	// Delete attribute objects, then delete the hash that maintains them.
	attributes->getKeys(v);
	for (TTUInt16 i=0; i<v.getSize(); i++) {
		TTSymbolRef		name(kTTSymEmpty);
		TTAttribute*	attribute = NULL;

		v.get(i, name);
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

TTErr TTObject::registerAttribute(const TTSymbolRef name, const TTDataType type, void* address)
{
	TTAttribute* newAttribute = new TTAttribute(name, type, address);

	newAttribute->setGetterFlags(kTTAttrPassObject);
	newAttribute->setSetterFlags(kTTAttrPassObject);
	attributes->append(name, TTPtr(newAttribute));
	return kTTErrNone;
}

TTErr TTObject::registerAttribute(const TTSymbolRef name, const TTDataType type, void* address, TTGetterMethod getter)
{
	TTAttribute* newAttribute = new TTAttribute(name, type, address, getter);

	newAttribute->setSetterFlags(kTTAttrPassObject);
	attributes->append(name, TTPtr(newAttribute));
	return kTTErrNone;
}

TTErr TTObject::registerAttribute(const TTSymbolRef name, const TTDataType type, void* address, TTSetterMethod setter)
{
	TTAttribute* newAttribute = new TTAttribute(name, type, address, setter);

	newAttribute->setGetterFlags(kTTAttrPassObject);
	attributes->append(name, TTPtr(newAttribute));
	return kTTErrNone;
}

TTErr TTObject::registerAttribute(const TTSymbolRef name, const TTDataType type, void* address, TTGetterMethod getter, TTSetterMethod setter)
{
	TTAttribute* newAttribute = new TTAttribute(name, type, address, getter, setter);

	attributes->append(name, TTPtr(newAttribute));
	return kTTErrNone;
}

TTErr TTObject::registerAttribute(const TTSymbolRef name, const TTObjectPtr newGetterObject, const TTObjectPtr newSetterObject)
{
	TTAttribute* newAttribute = new TTAttribute(name, newGetterObject, newSetterObject);

	attributes->append(name, TTPtr(newAttribute));
	return kTTErrNone;
}

TTErr TTObject::extendAttribute(const TTSymbolRef name, const TTObjectPtr extendedObject, const TTSymbolRef extendedName)
{
	TTAttributePtr	extendedAttribute = NULL;
	TTAttributePtr	newAttribute;
	TTErr			err = extendedObject->findAttribute(extendedName, &extendedAttribute);

	if (!err) {
		newAttribute = new TTAttribute(extendedAttribute, extendedObject);
		attributes->append(name, TTPtr(newAttribute));
		return kTTErrNone;
	}
	else
		return err;
}

TTErr TTObject::removeAttribute(const TTSymbolRef name)
{
	TTAttribute*	attribute = NULL;
	TTErr			err = findAttribute(name, &attribute);

	if (!err) {
		err = attributes->remove(name);
		delete attribute;
	}
	return err;
}


TTErr TTObject::findAttribute(const TTSymbolRef name, TTAttribute** attr)
{
	TTValue v;
	TTErr	err = kTTErrNone;

	err = attributes->lookup(TTSymbolRef(name), v);
	if (!err) {
		*attr = TTAttributePtr(TTPtr(v));
		return kTTErrNone;
	}
	else
		return kTTErrInvalidAttribute;
}


TTErr TTObject::getAttributeValue(const TTSymbolRef name, TTValue& value)
{
	TTAttributePtr	attribute = NULL;
	TTErr			err;

	err = findAttribute(name, &attribute);
	if (!err) {

		if (attribute->getterFlags & kTTAttrPassObject)
			err = (this->*attribute->getter)(*attribute, value);
		else {
			TTMethodOutputValue getter = (TTMethodOutputValue)attribute->getter;
			err = (this->*getter)(value);
		}
	}
	return err;
}

TTErr TTObject::setAttributeValue(const TTSymbolRef name, TTValue& value)
{
	TTAttributePtr	attribute = NULL;
	TTErr			err;

	err = findAttribute(name, &attribute);
	if (!err) {
		if (attribute->readOnly)
			err = kTTErrReadOnly;
		else {
			if (attribute->rangeChecking == TT("clip"))
				value.clip(attribute->rangeLowBound, attribute->rangeHighBound);
			else if (attribute->rangeChecking == TT("cliplow"))
				value.cliplow(attribute->rangeLowBound);
			else if (attribute->rangeChecking == TT("cliphigh"))
				value.cliphigh(attribute->rangeHighBound);

			if (attribute->setterFlags & kTTAttrPassObject)
				err = (this->*attribute->setter)(*attribute, value);
			else {
				TTMethodInputValue setter = (TTMethodInputValue)attribute->setter;
				err = (this->*setter)(value);
			}
		}
	}
	return err;
}

TTErr TTObject::getAttributeGetterFlags(const TTSymbolRef name, TTAttributeFlags& value)
{
	TTAttributePtr	attribute = NULL;
	TTErr			err;

	err = findAttribute(name, &attribute);
	if (!err)
		attribute->getGetterFlags(value);

	return err;
}

TTErr TTObject::setAttributeGetterFlags(const TTSymbolRef name, TTAttributeFlags& value)
{
	TTAttributePtr	attribute = NULL;
	TTErr			err;

	err = findAttribute(name, &attribute);
	if (!err)
		attribute->setGetterFlags(value);

	return err;
}


TTErr TTObject::getAttributeSetterFlags(const TTSymbolRef name, TTAttributeFlags& value)
{
	TTAttributePtr	attribute = NULL;
	TTErr			err;

	err = findAttribute(name, &attribute);
	if (!err)
		attribute->getSetterFlags(value);

	return err;
}

TTErr TTObject::setAttributeSetterFlags(const TTSymbolRef name, TTAttributeFlags& value)
{
	TTAttributePtr	attribute = NULL;
	TTErr			err;

	err = findAttribute(name, &attribute);
	if (!err)
		attribute->setSetterFlags(value);

	return err;
}


void TTObject::getAttributeNames(TTValue& attributeNameList)
{
	TTValue			unfilteredNameList;
	TTUInt32		attributeCount;

	attributes->getKeys(unfilteredNameList);
	attributeCount = unfilteredNameList.getSize();

	attributeNameList.clear();

	for (TTUInt32 i=0; i<attributeCount; i++) {
		TTAttributePtr	attribute = NULL;
		TTSymbolRef		attributeName(kTTSymEmpty);

		unfilteredNameList.get(i, attributeName);
		getAttribute(attributeName, &attribute);

		if (attribute->hidden == NO)
			attributeNameList.append(attributeName);
	}
}


TTErr TTObject::registerAttributeProperty(const TTSymbolRef attributeName, const TTSymbolRef propertyName, const TTValue& initialValue, TTGetterMethod getter, TTSetterMethod setter)
{
	TTAttributePtr	theAttr = NULL;
	TTValue			v;
	TTErr			err;

	err = attributes->lookup(attributeName, v);
	if (!err) {
		theAttr = TTAttributePtr(TTPtr(v));
		err = theAttr->registerAttribute(propertyName, kTypeLocalValue, NULL, getter, setter);
		theAttr->setAttributeValue(propertyName, (TTValue&)initialValue);
	}
	return err;
}


TTErr TTObject::registerMessageProperty(const TTSymbolRef messageName, const TTSymbolRef propertyName, const TTValue& initialValue, TTGetterMethod getter, TTSetterMethod setter)
{
	TTMessagePtr	theMessage = NULL;
	TTValue			v;
	TTErr			err;

	err = messages->lookup(messageName, v);
	if (!err) {
		theMessage = TTMessagePtr(TTPtr(v));
		err = theMessage->registerAttribute(propertyName, kTypeLocalValue, NULL, getter, setter);
		theMessage->setAttributeValue(propertyName, (TTValue&)initialValue);
	}
	return err;
}


void TTObject::getMessageNames(TTValue& messageNameList)
{
	TTValue			unfilteredNameList;
	TTUInt32		messageCount;

	messages->getKeys(unfilteredNameList);
	messageCount = unfilteredNameList.getSize();

	messageNameList.clear();

	for (TTUInt32 i=0; i<messageCount; i++) {
		TTMessagePtr	message = NULL;
		TTSymbolRef		messageName(kTTSymEmpty);

		unfilteredNameList.get(i, messageName);
		getMessage(messageName, &message);

		if (message->hidden == NO)
			messageNameList.append(messageName);
	}
}


TTSymbolRef TTObject::getName() const
{
	return classPtr->name;
}


#if 0
#pragma mark -
#pragma mark Object Messages
#endif

TTErr TTObject::registerMessage(const TTSymbolRef name, TTMethod method)
{
	TTMessagePtr newMessage = new TTMessage(name, method, kTTMessageDefaultFlags);

	if (ttEnvironment && ttEnvironment->mDebugMessaging)
		logMessage("Registering Message '%s' with flags = %ld, message count for this object is now %ld\n", name.getCString(), kTTMessageDefaultFlags, messages->getSize());

	messages->append(name, TTPtr(newMessage));
	return kTTErrNone;
}


TTErr TTObject::registerMessage(const TTSymbolRef name, TTMethod method, TTMessageFlags flags)
{
	TTMessagePtr newMessage = new TTMessage(name, method, flags);

	if (ttEnvironment->mDebugMessaging)
		logMessage("Registering Message '%s' with flags = %ld, message count for this object is now %ld\n", name.getCString(), kTTMessageDefaultFlags, messages->getSize());

	messages->append(name, TTPtr(newMessage));
	return kTTErrNone;
}


TTErr TTObject::findMessage(const TTSymbolRef name, TTMessage** message)
{
	TTValue v;
	TTErr	err = kTTErrNone;

	err = messages->lookup(TTSymbolRef(name), v);
	if (!err) {
		*message = TTMessagePtr(TTPtr(v));
		return kTTErrNone;
	}
	else
		return kTTErrInvalidAttribute;
}


TTErr TTObject::sendMessage(const TTSymbolRef name)
{
	return sendMessage(name, kTTValNONE, kTTValNONE);
}


#ifdef TT_SUPPORT_SINGLE_ARG_MESSAGE_CALLS

TTErr TTObject::sendMessage(const TTSymbolRef name, TTValue& anOutputValue)
{
	return sendMessage(name, kTTValNONE, anOutputValue);
}


TTErr TTObject::sendMessage(const TTSymbolRef name, const TTValue& anInputValue)
{
	return sendMessage(name, anInputValue, kTTValNONE);
}

#endif


TTErr TTObject::sendMessage(const TTSymbolRef name, const TTValue& anInputValue, TTValue& anOutputValue)
{
	TTMessagePtr	message = NULL;
	TTErr			err;
	
	err = findMessage(name, &message);
	if (!err) {
		if (message->flags & kTTMessagePassNone) {
			TTMethodNone method = (TTMethodNone)message->method;
			return (this->*method)();
		}
		else if (message->flags & kTTMessagePassNameAndValue) {
			return (this->*message->method)(name, anInputValue, anOutputValue);
		}
		else {	// default is kTTMessagePassValue
			TTMethodValue method = (TTMethodValue)message->method;
			return (this->*method)(anInputValue, anOutputValue);
		}
	}
	return kTTErrMethodNotFound;
}



#if 0
#pragma mark -
#pragma mark Observing
#endif

TTErr TTObject::registerObserverForMessage(const TTObject& observingObject, const TTSymbolRef messageName)
{
	return kTTErrGeneric;
}

TTErr TTObject::registerObserverForAttribute(const TTObject& observingObject, const TTSymbolRef attributeName)
{
	return kTTErrGeneric;
}

TTErr TTObject::registerObserverForNotifications(const TTObject& observingObject)
{
	TTValue v = observingObject;
	observers->appendUnique(v);
	return kTTErrNone;
}


TTErr TTObject::unregisterObserverForMessage(const TTObject& observingObject, const TTSymbolRef messageName)
{
	return kTTErrGeneric;
}

TTErr TTObject::unregisterObserverForAttribute(const TTObject& observingObject, const TTSymbolRef attributeName)
{
	return kTTErrGeneric;
}

TTErr TTObject::unregisterObserverForNotifications(const TTObject& observingObject)
{
	TTValue	c(observingObject);
	TTValue	v;
	TTErr	err;

	err = observers->findEquals(c, v);
	if (!err)
		observers->remove(v);
	return err;
}


TTErr TTObject::sendNotification(const TTSymbolRef name, const TTValue& arguments)
{
	return observers->iterateObjectsSendingMessage(name, TTValueRef(arguments));
}


#if 0
#pragma mark -
#pragma mark Logging
#endif

/**	Log messages scoped to this object instance. */
TTErr TTObject::logMessage(TTImmutableCString fmtstring, ...)
{
	char	str[4096];
	char	fullstr[4096];
	va_list	ap;

	va_start(ap, fmtstring);
	vsnprintf(str, 4000, fmtstring, ap);
	va_end(ap);
	str[4095] = 0;

	strncpy(fullstr, classPtr->name.getCString(), 4095);
	strncat(fullstr, " : ", 4095);
	strncat(fullstr, str, 4095);
	TTLogMessage(fullstr);
	return kTTErrNone;
}


TTErr TTObject::logWarning(TTImmutableCString fmtstring, ...)
{
	char	str[4096];
	char	fullstr[4096];
	va_list	ap;

	va_start(ap, fmtstring);
	vsnprintf(str, 4000, fmtstring, ap);
	va_end(ap);
	str[4095] = 0;

	strncpy(fullstr, classPtr->name.getCString(), 4095);
	strncat(fullstr, " : ", 4095);
	strncat(fullstr, str, 4095);
	TTLogWarning(fullstr);
	return kTTErrNone;
}


TTErr TTObject::logError(TTImmutableCString fmtstring, ...)
{
	char	str[4096];
	char	fullstr[4096];
	va_list	ap;

	va_start(ap, fmtstring);
	vsnprintf(str, 4000, fmtstring, ap);
	va_end(ap);
	str[4095] = 0;

	// classPtr can be NULL if a post happens during construction
	if (classPtr)
		strncpy(fullstr, classPtr->name.getCString(), 4095);
	else
		strncpy(fullstr, "<class name not available>", 4095);
	strncat(fullstr, " : ", 4095);
	strncat(fullstr, str, 4095);
	TTLogError(fullstr);
	return kTTErrNone;
}


TTErr TTObject::logDebug(TTImmutableCString fmtstring, ...)
{
	if (ttEnvironment->mDebugBasic) {
		char	str[4096];
		char	fullstr[4096];
		va_list	ap;

		va_start(ap, fmtstring);
		vsnprintf(str, 4000, fmtstring, ap);
		va_end(ap);
		str[4095] = 0;

		strncpy(fullstr, classPtr->name.getCString(), 4095);
		strncat(fullstr, " : ", 4095);
		strncat(fullstr, str, 4095);
		TTLogDebug(fullstr);
	}
	return kTTErrNone;
}

