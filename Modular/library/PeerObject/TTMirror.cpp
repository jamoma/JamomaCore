/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A Mirror Object
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
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
	TTValue				attributeNames, messageNames, args, none;
	TTSymbol			name;
	TTAttributePtr		anAttribute;
	TTAttributeFlags	attributeFlags = kTTAttrPassObject;
	TTMessagePtr		aMessage;
    TTErr               err;
	
	TT_ASSERT("Correct number of args to create TTMirror", arguments.size() == 5);
    
	if (arguments.size() >= 1)
		mType = arguments[0];
    
    if (mType != kTTSymEmpty) {
        
        if (arguments.size() >= 2)
            mGetAttributeCallback = TTCallbackPtr((TTObjectBasePtr)arguments[1]);
        
        if (arguments.size() >= 3)
            mSetAttributeCallback = TTCallbackPtr((TTObjectBasePtr)arguments[2]);
        
        if (arguments.size() >= 4)
            mSendMessageCallback = TTCallbackPtr((TTObjectBasePtr)arguments[3]);
        
        if (arguments.size() >= 5)
            mListenAttributeCallback = TTCallbackPtr((TTObjectBasePtr)arguments[4]);
        
        
        // instantiate a temp object to copy visible attributes and messages
        TTObjectBasePtr anObject = NULL;
        args.resize(32);
        err = TTObjectBaseInstantiate(mType,  &anObject, args);
        
        if (!err) {
            
            anObject->getAttributeNames(attributeNames);
            for (TTUInt32 i = 0; i < attributeNames.size(); i++) {
                
                anAttribute = NULL;
                name = attributeNames[i];
                anObject->getAttribute(name, &anAttribute);
                
                if (mGetAttributeCallback)
                    addMirrorAttribute(name, anAttribute->type);
                
                // else cache the attribute value
                else {
                    
                    addMirrorCachedAttribute(name, anAttribute->type);
                    
                    mAttributeValueCache.append(name, none);
                }
                
                setAttributeGetterFlags(name, attributeFlags);
                setAttributeSetterFlags(name, attributeFlags);
                
                // TODO : addMirrorAttributeProperty
                //addMirrorAttributeProperty(name, readOnly, anAttribute->readOnly);
            }
            
            anObject->getMessageNames(messageNames);
            for (TTUInt32 i = 0; i < messageNames.size(); i++) {
                
                name = messageNames[i];
                anObject->getMessage(name, &aMessage);
                
                addMirrorMessage(name, aMessage->flags);
                
                // TODO : addMirrorMessageProperty
            }
            
            TTObjectBaseRelease(&anObject);
        }
    }
}

TTMirror::~TTMirror()
{
	;
}

TTSymbol TTMirror::getName()
{
    return mType;
}

TTErr TTMirror::getMirrorAttribute(TTAttribute& anAttribute, TTValue& value)
{
	TTValue data, aReturnWeDontCareAbout;
	
	if (mGetAttributeCallback) {
		
		data.append(anAttribute.name);
		data.append((TTPtr)&value);
		
		return mGetAttributeCallback->deliver(data);
		mGetAttributeCallback->notify(data, aReturnWeDontCareAbout);
        
        if (value.size() > 0)
            return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTMirror::setMirrorAttribute(TTAttribute& anAttribute, const TTValue& value)
{
	TTValue data;
	TTErr	err = kTTErrNone;
	
	if (mSetAttributeCallback) {
		
		data.append(anAttribute.name);
		data.append((TTPtr)&value);
		
		err = mSetAttributeCallback->deliver(data);
        
        // if the mirror cannot listen value : notify observers ourself
        if (!mListenAttributeCallback)
            anAttribute.sendNotification(kTTSym_notify, value);	// we use kTTSym_notify because we know that observers are TTCallback
	}
	 
	return err;
}

TTErr TTMirror::getMirrorCachedAttribute(TTAttribute& anAttribute, TTValue& value)
{
	TTValue data;

    data.append(anAttribute.name);
    
    // get the value from the cache
    if (!mAttributeValueCache.lookup(anAttribute.name, value)) {
        
        data.append((TTPtr)&value);
		
        if (value.size() > 0)
            return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTMirror::setMirrorCachedAttribute(TTAttribute& anAttribute, const TTValue& value)
{
	TTValue data, cached;
	TTErr	err = kTTErrNone;
	
	if (mSetAttributeCallback) {
		
		data.append(anAttribute.name);
		data.append((TTPtr)&value);
        
        // update the cache with the value
        if (!mAttributeValueCache.lookup(anAttribute.name, cached)) {
            mAttributeValueCache.remove(anAttribute.name);
            mAttributeValueCache.append(anAttribute.name, value);
        }
		
		err = mSetAttributeCallback->deliver(data);
        
        // if the mirror cannot listen value : notify observers ourself
        if (!mListenAttributeCallback)
            anAttribute.sendNotification(kTTSym_notify, value);	// we use kTTSym_notify because we know that observers are TTCallback
	}
    
	return err;
}

TTErr TTMirror::sendMirrorMessage(const TTSymbol* messageName, const TTValue& inputValue, TTValue& outputValue)
{
	TTValue data;
    TTErr   err = kTTErrNone;
	
	if (mSendMessageCallback) {
		
		data.append(messageName);
		data.append((TTPtr)&inputValue);
		
		err = mSetAttributeCallback->deliver(data);
	}
	
	return err;
}

TTErr TTMirror::updateAttributeValue(const TTSymbol attributeName, TTValue& value)
{
	TTAttributePtr	anAttribute = NULL;
	TTErr			err;
	
	err = this->findAttribute(attributeName, &anAttribute);
    
    // if attributes are cached
    if (!mGetAttributeCallback) {
        
        TTValue cached;
        
        // update the cache with the value
        if (!mAttributeValueCache.lookup(attributeName, cached)) {
            mAttributeValueCache.remove(attributeName);
            mAttributeValueCache.append(attributeName, value);
        }
    }
	
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, value);	// we use kTTSym_notify because we know that observers are TTCallback
    
	return err;
}

TTErr TTMirror::enableListening(const TTAttribute& anAttribute, TTBoolean enable)
{	
	TTValue data;
    TTErr   err = kTTErrNone;
	
	if (mListenAttributeCallback) {
		
		data.append(anAttribute.name);
		data.append(enable);
		
		err = mListenAttributeCallback->deliver(data);
	}
	
	return err;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif
