/* 
 * A Mirror Object
 * Copyright © 2011, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMirror.h"

#define thisTTClass			TTMirror
#define thisTTClassName		"Mirror"
#define thisTTClassTags		"mirror"

TT_MODULAR_CONSTRUCTOR,
mType(kTTSymEmpty),
mGetAttributeCallback(NULL),
mSetAttributeCallback(NULL),
mSendMessageCallback(NULL),
mListenAttributeCallback(NULL)
{	
	TTValue				attributeNames, messageNames;
	TTSymbol			name;
	TTAttributePtr		anAttribute;
	TTAttributeFlags	attributeFlags = kTTAttrPassObject;
	TTMessagePtr		aMessage;
	
	TT_ASSERT("Correct number of args to create TTMirror", arguments.size() == 5);

	if (arguments.size() >= 1)
		arguments[0] mType);

	if (arguments.size() >= 2)
		arguments.get(1, (TTPtr*)&mGetAttributeCallback);
	
	if (arguments.size() >= 3)
		arguments.get(2, (TTPtr*)&mSetAttributeCallback);
	
	if (arguments.size() >= 4)
		arguments.get(3, (TTPtr*)&mSendMessageCallback);
	
	if (arguments.size() >= 5)
		arguments.get(4, (TTPtr*)&mListenAttributeCallback);
	

	// instantiate a temp object to copy visible attributes and messages
	TTObjectPtr anObject = NULL;
	TTObjectInstantiate(mType,  &anObject, kTTValNONE);
	
	anObject->getAttributeNames(attributeNames);
	for (TTUInt32 i=0; i<attributeNames.size(); i++) {
		
		anAttribute = NULL;
		attributeNames.get(i, name);
		anObject->getAttribute(name, &anAttribute);
		
		addMirrorAttribute(name, anAttribute->type);
		setAttributeGetterFlags(name, attributeFlags);
		setAttributeSetterFlags(name, attributeFlags);
		
		// TODO : addMirrorAttributeProperty
		//addMirrorAttributeProperty(name, readOnly, anAttribute->readOnly);
	}
	
	anObject->getMessageNames(messageNames);
	for (TTUInt32 i=0; i<messageNames.size(); i++) {
		
		messageNames.get(i, name);
		anObject->getMessage(name, &aMessage);
		
		addMirrorMessage(name, aMessage->flags);
		
		// TODO : addMirrorMessageProperty
	}
	
	TTObjectRelease(&anObject);
}

TTMirror::~TTMirror() // TODO : delete things...
{
	;
}

TTErr TTMirror::getMirrorAttribute(const TTAttribute& anAttribute, TTValue& value)
{
	TTValue data;
	
	if (mGetAttributeCallback) {
		
		data.append(anAttribute.name);
		data.append((TTPtr)&value);
		
		return mGetAttributeCallback->notify(data, kTTValNONE);
	}
	
	return kTTErrGeneric;
}

TTErr TTMirror::setMirrorAttribute(const TTAttribute& anAttribute, const TTValue& value)
{
	TTValue data;
	TTErr	err = kTTErrNone;
	
	if (mSetAttributeCallback) {
		
		data.append(anAttribute.name);
		data.append((TTPtr)&value);
		
		err = mSetAttributeCallback->notify(data, kTTValNONE);
	}
	 
	return err;
}

TTErr TTMirror::sendMirrorMessage(const TTSymbol* messageName, const TTValue& inputValue, TTValue& outputValue)
{
	TTValue data;
	
	if (mSendMessageCallback) {
		
		data.append(messageName);
		data.append((TTPtr)&inputValue);
		
		return mSetAttributeCallback->notify(data, kTTValNONE);
	}
	
	return kTTErrGeneric;
}

TTErr TTMirror::updateAttributeValue(const TTSymbol attributeName, TTValue& value)
{
	TTAttributePtr	anAttribute = NULL;
	TTErr			err;
	
	err = this->findAttribute(attributeName, &anAttribute);
	
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, value);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

TTErr TTMirror::enableListening(const TTAttribute& anAttribute, TTBoolean enable)
{	
	TTValue data;
	
	if (mListenAttributeCallback) {
		
		data.append(anAttribute.name);
		data.append(enable);
		
		return mListenAttributeCallback->notify(data, kTTValNONE);
	}
	
	return kTTErrGeneric;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif
