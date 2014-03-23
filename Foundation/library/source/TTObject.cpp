/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief The Jamoma Object Base Class.
 *
 * @details Base class for all first-class Jamoma objects.
 * Internal objects may inherit directly from #TTObjectBase,
 * but most objects will inherit from #TTDataObject or #TTAudioObject.
 *
 * @authors Timothy Place, Theo de la Hogue, Trond Lossius
 *
 * @copyright Copyright © 2008, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTObject.h"
#include "TTEnvironment.h"
#include "TTClass.h"

TTObjectBase::TTObjectBase(TTValue arguments)
	: classPtr(NULL), observers(NULL), messageObservers(NULL), attributeObservers(NULL),
	  mLocked(false), referenceCount(1), valid(false), reserved1(0), reserved2(0)
{
	messages = new TTHash;
	attributes = new TTHash;
	observers = new TTList;
	// 'valid' will be set true by the Environment class which is the factory for all objects
	
	// Cannot add any messages or attributes here because messages and attributes are themselves objects
	// and we will infinitely recurse
}


TTObjectBase::~TTObjectBase()
{
	TTValue	v, u;

	delete observers;

	// Delete message objects, then delete the hash that maintains them.
	messages->getKeys(v);
	for (TTUInt16 i=0; i<v.size(); i++) {
		TTSymbol	name(kTTSymEmpty);
		TTMessage*	message = NULL;

		name = v[i];
		messages->lookup(name, u);
		message = TTMessagePtr(TTPtr(u));
		delete message;
	}
	delete messages;

	// Delete attribute objects, then delete the hash that maintains them.
	attributes->getKeys(v);
	for (TTUInt16 i=0; i<v.size(); i++) {
		TTSymbol		name(kTTSymEmpty);
		TTAttribute*	attribute = NULL;

		name = v[i];
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

TTErr TTObjectBase::registerAttribute(const TTSymbol name, const TTDataType type, void* address)
{
	TTAttribute* newAttribute = new TTAttribute(name, type, address);

	newAttribute->setGetterFlags(kTTAttrPassObject);
	newAttribute->setSetterFlags(kTTAttrPassObject);
	attributes->append(name, TTPtr(newAttribute));
	return kTTErrNone;
}

TTErr TTObjectBase::registerAttribute(const TTSymbol name, const TTDataType type, void* address, TTGetterMethod getter)
{
	TTAttribute* newAttribute = new TTAttribute(name, type, address, getter);

	newAttribute->setSetterFlags(kTTAttrPassObject);
	attributes->append(name, TTPtr(newAttribute));
	return kTTErrNone;
}

TTErr TTObjectBase::registerAttribute(const TTSymbol name, const TTDataType type, void* address, TTSetterMethod setter)
{
	TTAttribute* newAttribute = new TTAttribute(name, type, address, setter);

	newAttribute->setGetterFlags(kTTAttrPassObject);
	attributes->append(name, TTPtr(newAttribute));
	return kTTErrNone;
}

TTErr TTObjectBase::registerAttribute(const TTSymbol name, const TTDataType type, void* address, TTGetterMethod getter, TTSetterMethod setter)
{
	TTAttribute* newAttribute = new TTAttribute(name, type, address, getter, setter);

	attributes->append(name, TTPtr(newAttribute));
	return kTTErrNone;
}

TTErr TTObjectBase::registerAttribute(const TTSymbol name, const TTObjectBasePtr newGetterObject, const TTObjectBasePtr newSetterObject)
{
	TTAttribute* newAttribute = new TTAttribute(name, newGetterObject, newSetterObject);

	attributes->append(name, TTPtr(newAttribute));
	return kTTErrNone;
}

TTErr TTObjectBase::extendAttribute(const TTSymbol name, const TTObjectBasePtr extendedObject, const TTSymbol extendedName)
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

TTErr TTObjectBase::removeAttribute(const TTSymbol name)
{
	TTAttribute*	attribute = NULL;
	TTErr			err = findAttribute(name, &attribute);

	if (!err) {
		err = attributes->remove(name);
		delete attribute;
	}
	return err;
}


TTErr TTObjectBase::findAttribute(const TTSymbol name, TTAttribute** attr)
{
	TTValue v;
	TTErr	err = kTTErrNone;

	err = attributes->lookup(name, v);
	if (err == kTTErrNone)
		*attr = TTAttributePtr(TTPtr(v));
	else
		err = kTTErrInvalidAttribute;
	return err;
}


TTErr TTObjectBase::getAttributeValue(const TTSymbol name, TTValue& value)
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

TTErr TTObjectBase::setAttributeValue(const TTSymbol name, TTValue& value)
{
	TTAttributePtr	attribute = NULL;
	TTErr			err = findAttribute(name, &attribute);
	
	if (value.empty()) {
		return setAttributeValue(name, attribute->mDefaultValue);
	}
	
	if (!err) {
		if (attribute->readOnly)
			err = kTTErrReadOnly;
		else {
			if (attribute->rangeChecking == kTTSym_clip)
				value.clip(attribute->rangeLowBound, attribute->rangeHighBound);
			else if (attribute->rangeChecking == kTTSym_cliplow)
				value.cliplow(attribute->rangeLowBound);
			else if (attribute->rangeChecking == kTTSym_cliphigh)
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

TTErr TTObjectBase::getAttributeGetterFlags(const TTSymbol name, TTAttributeFlags& value)
{
	TTAttributePtr	attribute = NULL;
	TTErr			err;

	err = findAttribute(name, &attribute);
	if (!err)
		attribute->getGetterFlags(value);

	return err;
}

TTErr TTObjectBase::setAttributeGetterFlags(const TTSymbol name, TTAttributeFlags& value)
{
	TTAttributePtr	attribute = NULL;
	TTErr			err;

	err = findAttribute(name, &attribute);
	if (!err)
		attribute->setGetterFlags(value);

	return err;
}


TTErr TTObjectBase::getAttributeSetterFlags(const TTSymbol name, TTAttributeFlags& value)
{
	TTAttributePtr	attribute = NULL;
	TTErr			err;

	err = findAttribute(name, &attribute);
	if (!err)
		attribute->getSetterFlags(value);

	return err;
}

TTErr TTObjectBase::setAttributeSetterFlags(const TTSymbol name, TTAttributeFlags& value)
{
	TTAttributePtr	attribute = NULL;
	TTErr			err;

	err = findAttribute(name, &attribute);
	if (!err)
		attribute->setSetterFlags(value);

	return err;
}


void TTObjectBase::getAttributeNames(TTValue& attributeNameList)
{
	TTValue			unfilteredNameList;
	TTUInt32		attributeCount;

	attributes->getKeys(unfilteredNameList);
	attributeCount = unfilteredNameList.size();

	attributeNameList.clear();

	for (TTUInt32 i=0; i<attributeCount; i++) {
		TTAttributePtr	attribute = NULL;
		TTSymbol		attributeName = kTTSymEmpty;

		attributeName = unfilteredNameList[i];
//		getAttribute(attributeName, &attribute);
		findAttribute(attributeName, &attribute);

		if (attribute->hidden == NO)
			attributeNameList.append(attributeName);
	}
}


TTErr TTObjectBase::registerAttributeProperty(const TTSymbol attributeName, const TTSymbol propertyName, const TTValue& initialValue, TTGetterMethod getter, TTSetterMethod setter)
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


TTErr TTObjectBase::registerMessageProperty(const TTSymbol messageName, const TTSymbol propertyName, const TTValue& initialValue, TTGetterMethod getter, TTSetterMethod setter)
{
	TTMessagePtr	theMessage = NULL;
	TTValue			v;
	TTErr			err;

	err = messages->lookup(messageName, v);
	if (err == kTTErrNone) {
		theMessage = TTMessagePtr(TTPtr(v));
		err = theMessage->registerAttribute(propertyName, kTypeLocalValue, NULL, getter, setter);
		theMessage->setAttributeValue(propertyName, (TTValue&)initialValue);
	}
	return err;
}


void TTObjectBase::getMessageNames(TTValue& messageNameList)
{
	TTValue			unfilteredNameList;
	TTUInt32		messageCount;

	messages->getKeys(unfilteredNameList);
	messageCount = unfilteredNameList.size();

	messageNameList.clear();

	for (TTUInt32 i=0; i<messageCount; i++) {
		TTMessagePtr	message = NULL;
		TTSymbol		messageName(kTTSymEmpty);

		messageName = unfilteredNameList[i];
		getMessage(messageName, &message);

		if (message->hidden == NO)
			messageNameList.append(messageName);
	}
}


TTSymbol TTObjectBase::getName() const
{
	return classPtr->name;
}


#if 0
#pragma mark -
#pragma mark Object Messages
#endif

TTErr TTObjectBase::registerMessage(const TTSymbol name, TTMethod method)
{
	TTMessagePtr newMessage = new TTMessage(name, method, kTTMessageDefaultFlags);

	if (ttEnvironment && ttEnvironment->mDebugMessaging)
		logMessage("Registering Message '%s' with flags = %ld, message count for this object is now %ld\n", name.c_str(), kTTMessageDefaultFlags, messages->getSize());

	messages->append(name, TTPtr(newMessage));
	return kTTErrNone;
}


TTErr TTObjectBase::registerMessage(const TTSymbol name, TTMethod method, TTMessageFlags flags)
{
	TTMessagePtr newMessage = new TTMessage(name, method, flags);

	if (ttEnvironment->mDebugMessaging)
		logMessage("Registering Message '%s' with flags = %ld, message count for this object is now %ld\n", name.c_str(), kTTMessageDefaultFlags, messages->getSize());

	messages->append(name, TTPtr(newMessage));
	return kTTErrNone;
}


TTErr TTObjectBase::findMessage(const TTSymbol name, TTMessage** message)
{
	TTValue v;
	TTErr	err = kTTErrNone;

	err = messages->lookup(TTSymbol(name), v);
	if (!err) {
		*message = TTMessagePtr(TTPtr(v));
		return kTTErrNone;
	}
	else
		return kTTErrInvalidAttribute;
}

TTErr TTObjectBase::removeMessage(const TTSymbol name)
{
	TTMessage*      message = NULL;
	TTErr			err = findMessage(name, &message);
    
	if (!err) {
		err = messages->remove(name);
		delete message;
	}
	return err;
}


TTErr TTObjectBase::sendMessage(const TTSymbol name)
{
	TTValue v;
	return sendMessage(name, TTValue(), v);
}


#ifdef TT_SUPPORT_SINGLE_ARG_MESSAGE_CALLS

TTErr TTObjectBase::sendMessage(const TTSymbolRef name, TTValue& anOutputValue)
{
	return sendMessage(name, kTTValNONE, anOutputValue);
}


TTErr TTObjectBase::sendMessage(const TTSymbolRef name, const TTValue& anInputValue)
{
	return sendMessage(name, anInputValue, kTTValNONE);
}

#endif


TTErr TTObjectBase::sendMessage(const TTSymbol name, const TTValue& anInputValue, TTValue& anOutputValue)
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


TTErr TTObjectBase::registerObserverForNotifications(const TTObjectBase& observingObject)
{
	TTValue v = observingObject;
	observers->appendUnique(v);
	return kTTErrNone;
}


TTErr TTObjectBase::unregisterObserverForNotifications(const TTObjectBase& observingObject)
{
	TTValue	c(observingObject);
	TTValue	v;
	TTErr	err;

	err = observers->findEquals(c, v);
	if (!err)
		observers->remove(v);
	return err;
}


TTErr TTObjectBase::sendNotification(const TTSymbol name, const TTValue& arguments)
{
	return observers->iterateObjectsSendingMessage(name, TTValueRef(arguments));
}


#if 0
#pragma mark -
#pragma mark Logging
#endif

/**	Log messages scoped to this object instance. */
TTErr TTObjectBase::logMessage(TTImmutableCString fmtstring, ...)
{
	char	str[4096];
	char	fullstr[4096];
	va_list	ap;

	va_start(ap, fmtstring);
	vsnprintf(str, 4000, fmtstring, ap);
	va_end(ap);
	str[4095] = 0;

	strncpy(fullstr, classPtr->name.c_str(), 4095);
	strncat(fullstr, " : ", 4095);
	strncat(fullstr, str, 4095);
	TTLogMessage(fullstr);
	return kTTErrNone;
}


TTErr TTObjectBase::logWarning(TTImmutableCString fmtstring, ...)
{
	char	str[4096];
	char	fullstr[4096];
	va_list	ap;

	va_start(ap, fmtstring);
	vsnprintf(str, 4000, fmtstring, ap);
	va_end(ap);
	str[4095] = 0;

	strncpy(fullstr, classPtr->name.c_str(), 4095);
	strncat(fullstr, " : ", 4095);
	strncat(fullstr, str, 4095);
	TTLogWarning(fullstr);
	return kTTErrNone;
}


TTErr TTObjectBase::logError(TTImmutableCString fmtstring, ...)
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
		strncpy(fullstr, classPtr->name.c_str(), 4095);
	else
		strncpy(fullstr, "<class name not available>", 4095);
	strncat(fullstr, " : ", 4095);
	strncat(fullstr, str, 4095);
	TTLogError(fullstr);
	return kTTErrNone;
}


TTErr TTObjectBase::logDebug(TTImmutableCString fmtstring, ...)
{
	if (ttEnvironment->mDebugBasic) {
		char	str[4096];
		char	fullstr[4096];
		va_list	ap;

		va_start(ap, fmtstring);
		vsnprintf(str, 4000, fmtstring, ap);
		va_end(ap);
		str[4095] = 0;

		strncpy(fullstr, classPtr->name.c_str(), 4095);
		strncat(fullstr, " : ", 4095);
		strncat(fullstr, str, 4095);
		TTLogDebug(fullstr);
	}
	return kTTErrNone;
}

