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
mSendMessageCallback(NULL)
{	
	TTValue			attributeNames, messageNames;
	TTSymbolPtr		name;
	TTAttributePtr	anAttribute;
	TTMessagePtr	aMessage;
	
	TT_ASSERT("Correct number of args to create TTMirror", arguments.getSize() == 4);

	if (arguments.getSize() >= 1)
		arguments.get(0, &mType);

	if (arguments.getSize() >= 2)
		arguments.get(1, (TTPtr*)&mGetAttributeCallback);
	
	if (arguments.getSize() >= 3)
		arguments.get(2, (TTPtr*)&mSetAttributeCallback);
	
	if (arguments.getSize() >= 4)
		arguments.get(3, (TTPtr*)&mSendMessageCallback);
	

	// instantiate a temp object to copy visible attributes and messages
	TTObjectPtr anObject = NULL;
	TTObjectInstantiate(mType,  &anObject, kTTValNONE);
	
	anObject->getAttributeNames(attributeNames);
	for (TTUInt32 i=0; i<attributeNames.getSize(); i++) {
		
		attributeNames.get(i, (TTSymbolPtr*)&name);
		anObject->getAttribute(name, &anAttribute);
		
		addMirrorAttribute(name, anAttribute->type);
		addAttributeProperty(service, readOnly, anAttribute->readOnly);
		// TODO : add all other property
	}
	
	anObject->getMessageNames(messageNames);
	for (TTUInt32 i=0; i<messageNames.getSize(); i++) {
		
		messageNames.get(i, (TTSymbolPtr*)&name);
		anObject->getMessage(name, &aMessage);
		
		addMirrorMessage(name, aMessage->flags);
		// TODO : add all other property
	}
	
	TTObjectRelease(&anObject);
}

TTMirror::~TTMirror() // TODO : delete things...
{
	;
}

TTErr TTMirror::getMirrorAttribute(const TTAttribute& attribute, TTValue& value)
{
	TTValue data;
	
	if (mGetAttributeCallback) {
		
		data.append(attribute.name);
		data.append((TTPtr)&value);
		
		return mGetAttributeCallback->notify(data);
	}
	
	return kTTErrGeneric;
}

TTErr TTMirror::setMirrorAttribute(const TTAttribute& attribute, const TTValue& value)
{
	TTValue data;
	
	if (mSetAttributeCallback) {
		
		data.append(attribute.name);
		data.append((TTPtr)&value);
		
		return mSetAttributeCallback->notify(data);
	}
	
	return kTTErrGeneric;
}

TTErr TTMirror::sendMirrorMessage(const TTSymbol* messageName, TTValue& value)
{
	TTValue data;
	
	if (mSendMessageCallback) {
		
		data.append(messageName);
		data.append((TTPtr)&value);
		
		return mSetAttributeCallback->notify(data);
	}
	
	return kTTErrGeneric;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif
