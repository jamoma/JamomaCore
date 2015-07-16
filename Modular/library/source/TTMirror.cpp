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
mType(kTTSymEmpty)
{	
	TTValue				attributeNames, messageNames, none;
	TTSymbol			name;
	TTAttributePtr		anAttribute;
	TTAttributeFlags	attributeFlags = kTTAttrPassObject;
	TTMessagePtr		aMessage;
	
	if (arguments.size() >= 1)
		mType = arguments[0];
    
    if (mType != kTTSymEmpty) {
        
        if (arguments.size() >= 2)
            mGetAttributeCallback = arguments[1];
        
        if (arguments.size() >= 3)
            mSetAttributeCallback = arguments[2];
        
        if (arguments.size() >= 4)
            mSendMessageCallback = arguments[3];
        
        if (arguments.size() >= 5)
            mListenAttributeCallback = arguments[4];
        
        // if the class exist
        if (!ttEnvironment->isClassRegistered(mType)) {
            
            TTObject anObject = TTObject(mType);
            
            if (anObject.valid()) {
                
                anObject.attributes(attributeNames);
                for (TTUInt32 i = 0; i < attributeNames.size(); i++) {
                    
                    anAttribute = NULL;
                    name = attributeNames[i];
                    anObject.instance()->getAttribute(name, &anAttribute);
                    
                    if (mGetAttributeCallback.valid())
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
                
                anObject.messages(messageNames);
                for (TTUInt32 i = 0; i < messageNames.size(); i++) {
                    
                    name = messageNames[i];
                    anObject.instance()->getMessage(name, &aMessage);
                    
                    addMirrorMessage(name, aMessage->flags);
                    
                    // TODO : addMirrorMessageProperty
                }
            }
        }
    }
    
    addMessageWithArguments(AttributesInstantiate);
    addMessageWithArguments(MessagesInstantiate);
    
    addMessageWithArguments(AttributeCache);
    addMessageWithArguments(AttributeUncache);
}

TTMirror::~TTMirror()
{
	;
}

TTSymbol TTMirror::getName()
{
    return mType;
}

TTErr TTMirror::AttributesInstantiate(const TTValue& inputValue, TTValue& outputValue)
{
    TTAttributeFlags attributeFlags = kTTAttrPassObject;
    TTValue none;
    
    for (TTUInt32 i = 0; i < inputValue.size(); i++) {
        
        if (inputValue[i].type() == kTypeSymbol) {
            
            TTSymbol name = inputValue[i];
            
            if (mGetAttributeCallback.valid())
                addMirrorAttribute(name, kTypeLocalValue);
            
            // else cache the attribute value
            else {
                
                addMirrorCachedAttribute(name, kTypeLocalValue);
                
                mAttributeValueCache.append(name, none);
            }
            
            setAttributeGetterFlags(name, attributeFlags);
            setAttributeSetterFlags(name, attributeFlags);
        }
    }
    
    return kTTErrNone;
}

TTErr TTMirror::MessagesInstantiate(const TTValue& inputValue, TTValue& outputValue)
{
    TTMessageFlags messageFlags = kTTMessageDefaultFlags;
    TTValue none;
    
    for (TTUInt32 i = 0; i < inputValue.size(); i++) {
        
        if (inputValue[i].type() == kTypeSymbol) {
            
            TTSymbol name = inputValue[i];
            
            addMirrorMessage(name, messageFlags);
        }
    }
    
    return kTTErrNone;
}

TTErr TTMirror::AttributeCache(const TTValue& inputValue, TTValue& outputValue)
{
    if (inputValue.size() >= 1) {
        
        if (inputValue[0].type() == kTypeSymbol) {
            
            TTSymbol    name = inputValue[0];
            TTValue     v;
            TTValuePtr  valueToCache;
            
            // if the attribute is not already cached
            if (mAttributeValueCache.lookup(name, v)) {
                
                TTAttributePtr anAttribute;

                // get attribute
                if (!this->findAttribute(name, &anAttribute)) {
                
                    // change getter and setter
                    anAttribute->getter = (TTGetterMethod)& TTMirror::getMirrorCachedAttribute;
                    anAttribute->setter = (TTSetterMethod)& TTMirror::setMirrorCachedAttribute;
                    
                    if (inputValue.size() == 2) {
                        
                        if (inputValue[1].type() == kTypePointer) {
                            
                            valueToCache = TTValuePtr(TTPtr(inputValue[1]));
                            
                            // add it as a cached attribute with the given value
                            mAttributeValueCache.append(name, *valueToCache);
                            
                            return kTTErrNone;
                        }
                    }
                    
                    // add it as a cached attribute
                    mAttributeValueCache.append(name, v);
                    
                    return kTTErrNone;
                }
            }
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTMirror::AttributeUncache(const TTValue& inputValue, TTValue& outputValue)
{
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeSymbol) {
            
            TTSymbol name = inputValue[0];
            
            // if the attribute is cached
            if (!mAttributeValueCache.lookup(name, outputValue)) {
                    
                TTAttributePtr anAttribute;
                
                // get attribute
                this->findAttribute(name, &anAttribute);
                
                // change getter and setter
                anAttribute->getter = (TTGetterMethod)& TTMirror::getMirrorAttribute;
                anAttribute->setter = (TTSetterMethod)& TTMirror::setMirrorAttribute;
                
                // remove it from the cache
                mAttributeValueCache.remove(name);
                
                return kTTErrNone;
            }
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTMirror::getMirrorAttribute(TTAttribute& anAttribute, TTValue& value)
{
	if (mGetAttributeCallback.valid()) {
        
        TTValue data, none;
		
		data.append(anAttribute.name);
		data.append((TTPtr)&value);
		
		mGetAttributeCallback.send("notify", data);
        
        if (value.size() > 0)
            return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTMirror::setMirrorAttribute(TTAttribute& anAttribute, const TTValue& value)
{
	TTValue data, none;
	TTErr	err = kTTErrNone;
	
	if (mSetAttributeCallback.valid()) {
		
		data.append(anAttribute.name);
		data.append((TTPtr)&value);
		
		err = mSetAttributeCallback.send("notify", data);
        
        // if the mirror cannot listen value : notify observers ourself
        if (!mListenAttributeCallback.valid())
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
	TTValue data, cached, none;
	TTErr	err = kTTErrNone;
	
	if (mSetAttributeCallback.valid()) {
		
		data.append(anAttribute.name);
		data.append((TTPtr)&value);
        
        // update the cache with the value
        if (!mAttributeValueCache.lookup(anAttribute.name, cached)) {
            mAttributeValueCache.remove(anAttribute.name);
            mAttributeValueCache.append(anAttribute.name, value);
        }
		
		err = mSetAttributeCallback.send("notify", data);
        
        // if the mirror cannot listen value : notify observers ourself
        if (!mListenAttributeCallback.valid())
            anAttribute.sendNotification(kTTSym_notify, value);	// we use kTTSym_notify because we know that observers are TTCallback
	}
    
	return err;
}

TTErr TTMirror::sendMirrorMessage(const TTSymbol* messageName, const TTValue& inputValue, TTValue& outputValue)
{
	TTValue data, none;
    TTErr   err = kTTErrNone;
	
	if (mSendMessageCallback.valid()) {
		
		data.append(messageName);
		data.append((TTPtr)&inputValue);
		
		err = mSetAttributeCallback.send("notify", data);
	}
	
	return err;
}

TTErr TTMirror::updateAttributeValue(const TTSymbol attributeName, TTValue& value)
{
	TTAttributePtr	anAttribute = NULL;
	TTErr			err;
	
	err = this->findAttribute(attributeName, &anAttribute);
    
    // if attributes are cached
    if (!mGetAttributeCallback.valid()) {
        
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
	TTValue data, none;
    TTErr   err = kTTErrNone;
    
    // disable the listening if there is no more observers on the attribute
    if (!enable && anAttribute.getObserverCount() != 0)
        return kTTErrGeneric;
    
    // enable the listening only one time for the first observer
    if (enable && anAttribute.getObserverCount() != 1)
        return kTTErrGeneric;
    
	if (mListenAttributeCallback.valid()) {
		
		data.append(anAttribute.name);
		data.append(enable);
		
		err = mListenAttributeCallback.send("notify", data);
	}
	
	return err;
}
