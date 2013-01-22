/* 
 * A Container object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTContainer.h"

#define thisTTClass			TTContainer
#define thisTTClassName		"Container"
#define thisTTClassTags		"node, container"

TT_MODULAR_CONSTRUCTOR,
mPriority(0), 
mDescription(kTTSym_none),
mType(kTTSym_none),
mTag(TTValue(kTTSym_none)),
mInitialized(NO),
mAddress(kTTAdrsEmpty),
mAlias(kTTAdrsEmpty),
mActivityIn(kTTValNONE),
mActivityOut(kTTValNONE),
mReturnAddressCallback(NULL),
mReturnValueCallback(NULL),
mObjectsObserversCache(NULL),
mObserver(NULL)
{
	if(arguments.size() == 2) {
		mReturnAddressCallback = TTCallbackPtr((TTObjectPtr)arguments[0]);
		mReturnValueCallback = TTCallbackPtr((TTObjectPtr)arguments[1]);
	}
	
	addAttributeWithSetter(Priority, kTypeUInt8);
	addAttribute(Description, kTypeSymbol);
	addAttribute(Type, kTypeSymbol);
	addAttributeWithSetter(Tag, kTypeLocalValue);
	
	addAttribute(Initialized, kTypeBoolean);
	addAttributeProperty(Initialized, readOnly, YES);
	addAttributeProperty(Initialized, hidden, YES);
	
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttributeProperty(Address, hidden, YES);
	
	addAttributeWithSetter(Alias, kTypeSymbol);
	
	addAttributeWithSetter(ActivityIn, kTypeLocalValue);
	addAttributeProperty(ActivityIn, readOnly, YES);
	
	addAttributeWithSetter(ActivityOut, kTypeLocalValue);
	addAttributeProperty(ActivityOut, readOnly, YES);
	
	addMessageWithArguments(Send);
	addMessageProperty(Send, hidden, YES);
	
	addMessage(Init);
	addMessage(AliasRemove);
	
	// needed to be handled by a TTTextHandler
	addMessageWithArguments(WriteAsText);
	addMessageProperty(WriteAsText, hidden, YES);
	
	mIsSending = false;	
	
	mObjectsObserversCache = new TTHash();
}

TTContainer::~TTContainer()
{
	setAlias(kTTAdrsEmpty);
	unbind();
	
	if (mReturnAddressCallback) {
		delete (TTValuePtr)mReturnAddressCallback->getBaton();
		TTObjectRelease(TTObjectHandle(&mReturnAddressCallback));
	}
	
	if (mReturnValueCallback)
		TTObjectRelease(TTObjectHandle(&mReturnValueCallback));
	
	if (mObserver) {
		if (mAddress != kTTSymEmpty)
			getLocalDirectory->removeObserverForNotifications(mAddress, mObserver);
		delete (TTValuePtr)mObserver->getBaton();
		TTObjectRelease(TTObjectHandle(&mObserver));
	}
}

TTErr TTContainer::Send(TTValue& AddressAndValue, TTValue& outputValue)
{
	TTValue			hk, cacheElement, v;
	TTValuePtr		valueToSend;
	TTObjectPtr		anObject;
	TTAddress       aRelativeAddress, topAddress, belowAddress, keyAddress;
	TTSymbol		attrOrMess, service;
	TTAttributePtr	anAttribute;
	TTMessagePtr	aMessage;
    TTUInt32        i;
    TTInt8          depth = 0;
	TTErr			err = kTTErrNone;
	
	if (!mIsSending) {
		
		// lock
		mIsSending = true;
		
		if (mObjectsObserversCache) {
			
			// get relativeAddress and valueToSend
			aRelativeAddress = AddressAndValue[0];
            
            // get attribute or message (default is value)
			if (aRelativeAddress.getAttribute() != NO_ATTRIBUTE)
				attrOrMess = aRelativeAddress.getAttribute();
			else
				attrOrMess = kTTSym_value;
            
            // Is there a wild card ?
            if (strrchr(aRelativeAddress.c_str(), C_WILDCARD)) {
                
                mIsSending = false;
                
                // Get each keys sorted by priority
                mObjectsObserversCache->getKeysSorted(hk, &TTContainerCompareObjectPriority);
                
                // find each keyAddress equals to the relativeAddress
                for (i = 0; i < mObjectsObserversCache->getSize(); i++) {
                    
                    keyAddress = hk[i];
                    
                    if (aRelativeAddress.compare(keyAddress, depth) == kAddressEqual) {
                    
                        // replace relativeAddress by keyAddress
						AddressAndValue[0] = keyAddress.appendAttribute(attrOrMess);
                        
                        if (this->Send(AddressAndValue, kTTValNONE))
                            err = kTTErrGeneric;
                    }
                }
                
                return err;
            }
            
			valueToSend = TTValuePtr((TTPtr)AddressAndValue[1]);
			
			// get the object
			err = mObjectsObserversCache->lookup(aRelativeAddress.removeAttribute(), cacheElement);
			
			// if the relativeAddress is in the cache
			if (!err) {
				
				anObject = cacheElement[0];
				
				// DATA CASE for value attribute
				if (anObject->getName() == kTTSym_Data && attrOrMess == kTTSym_value) {
					
					// what kind of service the data is used for ?
					anObject->getAttributeValue(TTSymbol("service"), v);
					service = v[0];
					
					if (service == kTTSym_return)
						return kTTErrNone;
					
					// set the value attribute using a command
					anObject->sendMessage(kTTSym_Command, *valueToSend, kTTValNONE);
					
					// unlock
					mIsSending = false;	
					return kTTErrNone;
				}
				
				// VIEWER CASE for a same attribute
				if (anObject->getName() == kTTSym_Viewer && attrOrMess == kTTSym_value) {
					
					// send the value
					anObject->sendMessage(kTTSym_Send, *valueToSend, kTTValNONE);
					
					// unlock
					mIsSending = false;	
					return kTTErrNone;
				}
				
				// DEFAULT CASE
				// Look for attribute and set it
				if (!anObject->findAttribute(attrOrMess, &anAttribute))
					anObject->setAttributeValue(attrOrMess, *valueToSend);
				
				// Or look for message and send it
				else if (!anObject->findMessage(attrOrMess, &aMessage))
					anObject->sendMessage(attrOrMess, *valueToSend, kTTValNONE);
			}
			// maybe the relative address is for Container below ourself
			else {
				
				// split relative address and retry
				aRelativeAddress.splitAt(0, topAddress, belowAddress);
				
				// retry to get an object
				err = mObjectsObserversCache->lookup(topAddress, cacheElement);
				
				// if the topAddress is in the cache
				if (!err) {
					
					anObject = cacheElement[0];
					
					// CONTAINER CASE : use Send message
					if (anObject->getName() == kTTSym_Container) {
						
						// replace relativeAddress by belowAddress
						AddressAndValue[0] = belowAddress;
						
						// send the value
						anObject->sendMessage(kTTSym_Send, AddressAndValue, kTTValNONE);
						
						// unlock
						mIsSending = false;	
						return kTTErrNone;
					}
				}
			}
		}
	}
	
	// unlock
	mIsSending = false;	
	return err;
}

TTErr TTContainer::Init()
{
	TTValue			hk, v;
	TTValue			cacheElement;
	TTObjectPtr		anObject;
	TTAttributePtr	anAttribute;
	TTSymbol		key, service;
	TTUInt32		i;
	
	// Restart initialisation
	mInitialized = NO;
	
	// Notify observers (this can't be prioritized because observers have no priority)
	findAttribute(kTTSym_initialized, &anAttribute);
	anAttribute->sendNotification(kTTSym_notify, mInitialized);
	
	// Send Init message to all Object in the cache
	if (mObjectsObserversCache) {
		
		// send it according their priority order
		mObjectsObserversCache->getKeysSorted(hk, &TTContainerCompareObjectPriority);
		
		// Send Reset message to all Data service parameter
		for (i = 0; i < mObjectsObserversCache->getSize(); i++) {
			
			key = hk[i];
			mObjectsObserversCache->lookup(key, cacheElement);
			anObject = cacheElement[0];
			
			if (anObject)
				if (anObject->getName() == kTTSym_Data) {
					anObject->getAttributeValue(kTTSym_service, v);
					service = v[0];
					if (service == kTTSym_parameter)
						anObject->sendMessage(TTSymbol("Reset"));
				}
		}
		
		// Send Init message to all Container below
		// using priority order
		for (i = 0; i < mObjectsObserversCache->getSize(); i++) {
			
			key = hk[i];
			mObjectsObserversCache->lookup(key, cacheElement);
			anObject = cacheElement[0];
			
			if (anObject)
				if (anObject->getName() == kTTSym_Container)
					anObject->sendMessage(TTSymbol("Init"));
		}
	}
	
	// End of initialisation
	mInitialized = YES;
	
	// Notify observers
	findAttribute(kTTSym_initialized, &anAttribute);
	anAttribute->sendNotification(kTTSym_notify, mInitialized);
	
	return kTTErrNone;
}

/** */
TTErr TTContainer::AliasRemove()
{
	return setAlias(kTTAdrsEmpty);
}

TTErr TTContainer::setAddress(const TTValue& value)
{	
	unbind();
	mAddress = value[0];
	
	return bind();
}

TTErr TTContainer::setAlias(const TTValue& value)
{
	TTNodeDirectoryPtr localDirectory = getLocalDirectory;
	TTAddress           oldAlias = mAlias;
	TTNodePtr           aNode;
	TTObjectPtr         anObject;
	TTValue             hk, cacheElement;
	TTSymbol            key;
	TTUInt32            i;
	TTString            aliasKey;
	
	mAlias = value[0];
	
	// check it changes
	if (oldAlias != mAlias) {
		
		if (oldAlias != kTTAdrsEmpty) {
			
			localDirectory->AliasRemove(oldAlias);
			
			// notify the deletion of all /alias/key address
			if (mObjectsObserversCache) {
				
				mObjectsObserversCache->getKeys(hk);
				for (i = 0; i < mObjectsObserversCache->getSize(); i++) {
					key = hk[i];
					
					// edit alias/key address
					aliasKey = oldAlias.c_str();
					aliasKey += S_SEPARATOR.c_str();
					aliasKey += key.c_str();
					
					// get the node at this address
					mObjectsObserversCache->lookup(key, cacheElement);
					aNode = TTNodePtr((TTPtr)cacheElement[3]);
					
					localDirectory->notifyObservers(TTAddress(aliasKey), aNode, kAddressDestroyed);
					
					// remove alias of Container object
					anObject = NULL;
					anObject = cacheElement[0];
					
					if (anObject->getName() == kTTSym_Container)
						anObject->setAttributeValue(kTTSym_alias, kTTAdrsEmpty);
				}
			}
		}
			
		if (mAlias != kTTAdrsEmpty && mAddress != kTTAdrsEmpty) {
			
			localDirectory->AliasCreate(mAlias, mAddress);
			
			// notify the creation of all /alias/key address
			if (mObjectsObserversCache) {
				
				mObjectsObserversCache->getKeys(hk);
				for (i = 0; i < mObjectsObserversCache->getSize(); i++) {
					key = hk[i];
					
					// edit alias/key address
					aliasKey = mAlias.c_str();
					aliasKey += S_SEPARATOR.c_str();
					aliasKey += key.c_str();
					
					// get the node at this address
					mObjectsObserversCache->lookup(key, cacheElement);
					aNode = TTNodePtr((TTPtr)cacheElement[3]);
					
					localDirectory->notifyObservers(TTAddress(aliasKey), aNode, kAddressCreated);
					
					// set alias of Container object
					anObject = NULL;
					anObject = cacheElement[0];
					
					if (anObject->getName() == kTTSym_Container)
						anObject->setAttributeValue(kTTSym_alias, TTAddress(aliasKey));
					
				}
			}
		}
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTContainer::setActivityIn(const TTValue& value)
{	
	TTAttributePtr	anAttribute;
	TTErr			err = kTTErrNone;
	
	mActivityIn = value;
	
	err = this->findAttribute(kTTSym_activityIn, &anAttribute);
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, mActivityIn);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

TTErr TTContainer::setActivityOut(const TTValue& value)
{	
	TTAttributePtr	anAttribute;
	TTErr			err = kTTErrNone;
	
	mActivityOut = value;
	
	err = this->findAttribute(kTTSym_activityOut, &anAttribute);
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, mActivityOut);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

TTErr TTContainer::setTag(const TTValue& value)
{
	TTAttributePtr	anAttribute;
	TTErr			err = kTTErrNone;
	
	mTag = value;
	
	err = this->findAttribute(kTTSym_tag, &anAttribute);
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, mTag);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

TTErr TTContainer::setPriority(const TTValue& value)
{
	TTAttributePtr	anAttribute;
	TTErr			err = kTTErrNone;
	
	mPriority = value;
	
	err = this->findAttribute(kTTSym_priority, &anAttribute);
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, mPriority);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

TTErr TTContainer::bind()
{
	TTNodePtr	aNode;
	TTValuePtr	newBaton;
	TTPtr		aContext;
	TTList		aNodeList, allObjectsNodes;
	TTValue		v;
	TTErr		err;
	
	mObjectsObserversCache  = new TTHash();
	
	// 1. Look for all nodes under the address into the directory with the same Context
	err = getLocalDirectory->Lookup(mAddress, aNodeList, &aNode);
	aContext = aNode->getContext();
	
	v.append(aContext);
	err = getLocalDirectory->LookFor(&aNodeList, TTContainerTestObjectAndContext, &v, allObjectsNodes, &aNode);
	
	// 2. make a cache containing each relativeAddress : Data and Observer
	for (allObjectsNodes.begin(); allObjectsNodes.end(); allObjectsNodes.next()) {
		
		aNode = TTNodePtr((TTPtr)allObjectsNodes.current()[0]);
		makeCacheElement(aNode);
	}
	
	// 3. Observe any creation or destruction below the address
	mObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TTSymbol("callback"), TTObjectHandle(&mObserver), kTTValNONE);
	
	newBaton = new TTValue(this);
	newBaton->append(aContext);
	
	mObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
	mObserver->setAttributeValue(kTTSym_function, TTPtr(&TTContainerDirectoryCallback));
	
	mObserver->setAttributeValue(TTSymbol("owner"), TTSymbol("TTContainer"));		// this is usefull only to debug
	
	getLocalDirectory->addObserverForNotifications(mAddress, mObserver); // ask for notification for addresses below
	
	return err;
}

TTErr TTContainer::makeCacheElement(TTNodePtr aNode)
{
	TTValue			cacheElement, v;
	TTAddress       aRelativeAddress;
	TTSymbol		service;
	TTObjectPtr		anObject, valueObserver, commandObserver, returnedValueObserver, activityInObserver, activityOutObserver;
	TTAttributePtr	anAttribute = NULL;
	TTMessagePtr	aMessage;
	TTValuePtr		valueBaton, commandBaton, returnedValueBaton, activityInBaton, activityOutBaton;
	
	// process the relative address
	aNode->getAddress(aRelativeAddress, mAddress);
	
	// Filter NULL object
	anObject = aNode->getObject();
	if (!anObject)
		return kTTErrGeneric;
	
	// 0 : cache Object
	cacheElement.append(anObject);
	
	// Special case for Data : observe his value
	if (anObject->getName() == kTTSym_Data) {
		
		// What kind of service the data is used for ?
		anObject->getAttributeValue(kTTSym_service, v);
		service = v[0];
		
		// observe the Value attribute of parameter and return
		if (service == kTTSym_parameter || service == kTTSym_return) {
			
			// create a Value Attribute observer on it
			anObject->findAttribute(kTTSym_value, &anAttribute);
			
			valueObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
			TTObjectInstantiate(TTSymbol("callback"), &valueObserver, kTTValNONE);
			
			valueBaton = new TTValue(this);
			valueBaton->append(aRelativeAddress);
			
			valueObserver->setAttributeValue(kTTSym_baton, TTPtr(valueBaton));
			valueObserver->setAttributeValue(kTTSym_function, TTPtr(&TTContainerValueAttributeCallback));
			valueObserver->setAttributeValue(TTSymbol("owner"), TTSymbol("TTContainer"));					// this is usefull only to debug
			
			anAttribute->registerObserverForNotifications(*valueObserver);
			
			// 1 : cache observer
			cacheElement.append(valueObserver);
		}
		// 1 : cache NULL
		else
			cacheElement.append(NULL);
		
		// observe the Command message of parameter and message to get activity
		if (service == kTTSym_parameter || service == kTTSym_message) {
			
			// create a Command message observer on it
			anObject->findMessage(kTTSym_Command, &aMessage);
			
			commandObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
			TTObjectInstantiate(TTSymbol("callback"), &commandObserver, kTTValNONE);
			
			commandBaton = new TTValue(this);
			commandBaton->append(aRelativeAddress);
			
			commandObserver->setAttributeValue(kTTSym_baton, TTPtr(commandBaton));
			commandObserver->setAttributeValue(kTTSym_function, TTPtr(&TTContainerCommandMessageCallback));
			commandObserver->setAttributeValue(TTSymbol("owner"), TTSymbol("TTContainer"));					// this is usefull only to debug
			
			aMessage->registerObserverForNotifications(*commandObserver);
			
			// 2 : cache observer
			cacheElement.append(commandObserver);
			
		}
		// 2 : cache NULL
		else
			cacheElement.append(NULL);
	}
	
	// Special case for Viewer : observe what it returns
	else if (anObject->getName() == kTTSym_Viewer) {
		
		// create a returnedValue Attribute observer on it
		anObject->findAttribute(kTTSym_returnedValue, &anAttribute);
		
		returnedValueObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TTSymbol("callback"), &returnedValueObserver, kTTValNONE);
		
		returnedValueBaton = new TTValue(this);
		returnedValueBaton->append(aRelativeAddress);
		
		returnedValueObserver->setAttributeValue(kTTSym_baton, TTPtr(returnedValueBaton));
		returnedValueObserver->setAttributeValue(kTTSym_function, TTPtr(&TTContainerValueAttributeCallback));
		returnedValueObserver->setAttributeValue(TTSymbol("owner"), TTSymbol("TTContainer"));					// this is usefull only to debug
		
		anAttribute->registerObserverForNotifications(*returnedValueObserver);
		
		// 1 : cache observer
		cacheElement.append(returnedValueObserver);
		
		// 2 : cache NULL
		cacheElement.append(NULL);
	}
	
	// Special case for Container : observe his activity
	else if (anObject->getName() == kTTSym_Container) {
		
		// create a activityIn Attribute observer on it
		anObject->findAttribute(kTTSym_activityIn, &anAttribute);
		
		activityInObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TTSymbol("callback"), &activityInObserver, kTTValNONE);
		
		activityInBaton = new TTValue(this);
		activityInBaton->append(aRelativeAddress);
		
		activityInObserver->setAttributeValue(kTTSym_baton, TTPtr(activityInBaton));
		activityInObserver->setAttributeValue(kTTSym_function, TTPtr(&TTContainerCommandMessageCallback));
		activityInObserver->setAttributeValue(TTSymbol("owner"), TTSymbol("TTContainer"));					// this is usefull only to debug
		
		anAttribute->registerObserverForNotifications(*activityInObserver);
		
		// 1 : cache observer
		cacheElement.append(activityInObserver);
		
		// create a activityIn Attribute observer on it
		anAttribute = NULL;
		anObject->findAttribute(kTTSym_activityOut, &anAttribute);
		
		activityOutObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TTSymbol("callback"), &activityOutObserver, kTTValNONE);
		
		activityOutBaton = new TTValue(this);
		activityOutBaton->append(aRelativeAddress);
		
		activityOutObserver->setAttributeValue(kTTSym_baton, TTPtr(activityOutBaton));
		activityOutObserver->setAttributeValue(kTTSym_function, TTPtr(&TTContainerValueAttributeCallback));
		activityOutObserver->setAttributeValue(TTSymbol("owner"), TTSymbol("TTContainer"));					// this is usefull only to debug
		
		anAttribute->registerObserverForNotifications(*activityOutObserver);
		
		// 2 : cache observer
		cacheElement.append(activityOutObserver);
	}
	
	else {
		// 1 : cache NULL
		cacheElement.append(NULL);
		// 2 : cache NULL
		cacheElement.append(NULL);
	}
	
	// 3 : cache the node too (used during alias creation/destruction)
	cacheElement.append((TTPtr)aNode);
	
	// append the cacheElement to the cache hash table
	mObjectsObserversCache->append(aRelativeAddress, cacheElement);
	
	return kTTErrNone;
}

TTErr TTContainer::deleteCacheElement(TTNodePtr aNode)
{
	TTAddress       aRelativeAddress;
	TTValue			v, cacheElement;
	TTObjectPtr		anObject, anObserver;
	TTSymbol		service;
	TTAttributePtr	anAttribute;
	TTMessagePtr	aMessage;
	TTErr			err;
	
	// process the relative address
	aNode->getAddress(aRelativeAddress, mAddress);
	
	// delete attribute observers
	err = mObjectsObserversCache->lookup(aRelativeAddress, cacheElement);
	
	if (!err) {
		
		// get the object using the node instead of the stored one
		anObject = aNode->getObject();
		
		// Filter NULL object
		if (anObject) {
			
			// it is a Data
			if (anObject->getName() == kTTSym_Data) {
				
				// What kind of service the data is used for ?
				anObject->getAttributeValue(kTTSym_service, v);
				service = v[0];
				
				// delete Value observer for parameter and return
				if (service == kTTSym_parameter || service == kTTSym_return) {
					anObserver = NULL;
					anObserver = cacheElement[1];
					anAttribute = NULL;
					err = anObject->findAttribute(kTTSym_value, &anAttribute);
					
					if(!err){
						
						err = anAttribute->unregisterObserverForNotifications(*anObserver);
						
						if(!err)
							TTObjectRelease(&anObserver);
					}
				}
				
				// delete Command observer for parameter and message
				if (service == kTTSym_parameter || service == kTTSym_message) {
					anObserver = NULL;
					anObserver = cacheElement[2];
					aMessage = NULL;
					err = anObject->findMessage(kTTSym_Command, &aMessage);
					
					if(!err){
						
						err = aMessage->unregisterObserverForNotifications(*anObserver);
						
						if(!err)
							TTObjectRelease(&anObserver);
					}
				}
			}
			
			// it is a Viewer
			if (anObject->getName() == kTTSym_Viewer) {
				
				// delete returnedValue observer
				anObserver = NULL;
				anObserver = cacheElement[1];
				anAttribute = NULL;
				err = anObject->findAttribute(kTTSym_value, &anAttribute);
				
				if(!err){
					
					err = anAttribute->unregisterObserverForNotifications(*anObserver);
					
					if(!err)
						TTObjectRelease(&anObserver);
				}
			}
			
			// it is a Container
			if (anObject->getName() == kTTSym_Container) {
				
				// delete activityIn observer
				anObserver = NULL;
				anObserver = cacheElement[1];
				anAttribute = NULL;
				err = anObject->findAttribute(kTTSym_activityIn, &anAttribute);
				
				if(!err){
					
					err = anAttribute->unregisterObserverForNotifications(*anObserver);
					
					if(!err)
						TTObjectRelease(&anObserver);
				}
				
				// delete activityOut observer
				anObserver = NULL;
				anObserver = cacheElement[2];
				anAttribute = NULL;
				err = anObject->findAttribute(kTTSym_activityOut, &anAttribute);
				
				if(!err){
					
					err = anAttribute->unregisterObserverForNotifications(*anObserver);
					
					if(!err)
						TTObjectRelease(&anObserver);
				}
			}
		}
	}
	
	// remove cacheData
	return mObjectsObserversCache->remove(aRelativeAddress);
}

TTErr TTContainer::unbind()
{
	TTValue			hk, v;
	TTValue			cacheElement;
	TTObjectPtr		anObject, aValueObserver, aCommandObserver;//, anInitObserver;
	TTAttributePtr	anAttribute;
	TTMessagePtr	aMessage;
	TTSymbol		key;
	TTUInt8			i;
	TTErr			err;
	
	// delete all attribute/message observers of mDatasObserversCache
	if (mObjectsObserversCache) {
		
		mObjectsObserversCache->getKeys(hk);
		
		for (i = 0; i < mObjectsObserversCache->getSize(); i++) {
			
			key = hk[i];
			mObjectsObserversCache->lookup(key, cacheElement);
			anObject = cacheElement[0];
			
			if (anObject) {
				// is it a Data ?
				if (anObject->getName() == kTTSym_Data) {
					
					// delete Value observer
					aValueObserver = cacheElement[1];
					anAttribute = NULL;
					err = anObject->findAttribute(kTTSym_value, &anAttribute);
					
					if (!err) {
						
						err = anAttribute->unregisterObserverForNotifications(*aValueObserver);
						
						if (!err)
							TTObjectRelease(&aValueObserver);
					}
					
					// delete Command observer
					aCommandObserver = cacheElement[2];
					aMessage = NULL;
					err = anObject->findMessage(kTTSym_Command, &aMessage);
					
					if(!err){
						
						err = aMessage->unregisterObserverForNotifications(*aCommandObserver);
						
						if(!err)
							TTObjectRelease(&aCommandObserver);
					}
				}
			}
		}
		
		delete mObjectsObserversCache;
	}
	
	// stop life cycle observation
	if (mObserver && getLocalDirectory) {
		
		err = getLocalDirectory->removeObserverForNotifications(mAddress, mObserver);
		
		if (!err)
			TTObjectRelease(TTObjectHandle(&mObserver));
	}
	
	mAddress = kTTAdrsEmpty;
	
	return kTTErrNone;
}

TTErr TTContainer::WriteAsText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr aTextHandler;
	TTString		*buffer;
	TTUInt16		i;
	TTValue			keys, cacheElement, s, arg;
	TTSymbol		name, service;
	TTObjectPtr		anObject;
	
	aTextHandler = TTTextHandlerPtr((TTObjectPtr)inputValue[0]);
	buffer = aTextHandler->mWriter;
	
	// html header
	*buffer =  "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">";	
	*buffer += "<html>";
	*buffer += "\t<head>";
	*buffer += "\t\t<meta http-equiv=\"content-type\" content=\"text/html;charset=ISO-8859-1\">";
	*buffer += "<title>";
	*buffer += this->mAddress.c_str();
	*buffer += "</title>";	
	
	this->cssDefinition(buffer);
	
	*buffer += "\t</head>";
	*buffer += "";
	
	// html body
	*buffer += "<body>";
	*buffer += "\t<div id=\"jmod_header\">";
	
	// Top of page displaying name of module etc.
	*buffer += "\t<img src=\"../../../documentation/graphics/jmodular.icon.png\" width=\"128\" height=\"128\">";	
	*buffer += "\t<h1>";
	*buffer += this->mAddress.c_str();
	*buffer += "</h1>";
	*buffer += "\t<h2>";
	*buffer += this->mDescription.c_str();
	*buffer += "</h2>";
	
	// Menu
	*buffer += "\t<h6><a href=\"../../../documentation/html/index.html\">Table of Contents</a> | <a href=\"../../../documentation/html/modules.html\">Index of Modules</a> | <a href=\"../../../documentation/html/credits.html\">Credits</a> | <a href=\"http://pledgie.com/campaigns/5615\">Donate</a> | <a href=\"http://www.jamoma.org/\">Jamoma.org</a></h6>";
	*buffer += "\t</div>";
	*buffer += "";
	
	/* 
	 Configuration
	 */
	*buffer += "\t<h3> Configuration </h3>";
	*buffer += "\t<p> Model Type: <code>";
	*buffer += this->mType.c_str();
	*buffer += "</code> <br>";
	
	/* 
	 Inlets and outlets Objects 
	 */
	
	// TODO : Make TTIn and TTOut and store them
	*buffer += "\t<p>Number of signal inlets: <code> 0 </code> <br/>";
	*buffer += "\t<p>Number of signal outlets: <code> 0 </code> <br/>";
	
	
	mObjectsObserversCache->getKeys(keys);
	/* 
	 Data @service parameter
	 */
	*buffer += "\t<h3> Parameters </h3>";	
	this->dataHeading(buffer);
	
	for (i = 0; i < keys.size(); i++)
	{
		name = keys[i];
		mObjectsObserversCache->lookup(name, cacheElement);
		anObject = cacheElement[0];
		
		if (anObject->getName() == kTTSym_Data) {
			anObject->getAttributeValue(kTTSym_service, s);
			service = s[0];
			
			if (service == kTTSym_parameter) {
				*buffer += "\t\t<tr>";
				*buffer += "\t\t\t<td class=\"instructionName\"> ";
				*buffer += name.c_str();
				*buffer += "</td>";
				
				arg = TTValue(anObject);
				aTextHandler->setAttributeValue(kTTSym_object, arg);
				
				arg = TTValue(aTextHandler);
				anObject->sendMessage(TTSymbol("WriteAsText"), arg, kTTValNONE);
				*buffer += "\t\t<tr>";
			}
		}
	}
	
	// End of table
	*buffer += "\t</table>";
	*buffer += "";
	*buffer += "\t<p>&nbsp;</p>";
	*buffer += "";
	
	/* 
	 Data @service message
	 */
	*buffer += "\t<h3> Messages </h3>";	
	this->dataHeading(buffer);
	
	for (i = 0; i < keys.size(); i++)
	{
		name = keys[i];
		mObjectsObserversCache->lookup(name, cacheElement);
		anObject = cacheElement[0];
		
		if (anObject->getName() == kTTSym_Data) {
			anObject->getAttributeValue(kTTSym_service, s);
			service = s[0];
			
			if (service == kTTSym_message) {
				*buffer += "\t\t<tr>";
				*buffer += "\t\t\t<td class=\"instructionName\"> ";
				*buffer += name.c_str();
				*buffer += "</td>";
				
				arg = TTValue(anObject);
				aTextHandler->setAttributeValue(kTTSym_object, arg);
				
				arg = TTValue(aTextHandler);
				anObject->sendMessage(TTSymbol("WriteAsText"), arg, kTTValNONE);
				*buffer += "\t\t<tr>";
			}
		}
	}
	
	// End of table
	*buffer += "\t</table>";
	*buffer += "";
	*buffer += "\t<p>&nbsp;</p>";
	*buffer += "";
	
	
	/* 
	 Data @service return
	 */
	*buffer += "\t<h3> Returns </h3>";	
	this->dataHeading(buffer);
	
	for (i = 0; i < keys.size(); i++)
	{
		name = keys[i];
		mObjectsObserversCache->lookup(name, cacheElement);
		anObject = cacheElement[0];
		
		if (anObject->getName() == kTTSym_Data) {
			anObject->getAttributeValue(kTTSym_service, s);
			service = s[0];
			
			if (service == kTTSym_return) {
				*buffer += "\t\t<tr>";
				*buffer += "\t\t\t<td class=\"instructionName\"> ";
				*buffer += name.c_str();
				*buffer += "</td>";
				
				arg = TTValue(anObject);
				aTextHandler->setAttributeValue(kTTSym_object, arg);
				
				arg = TTValue(aTextHandler);
				anObject->sendMessage(TTSymbol("WriteAsText"), arg, kTTValNONE);
				*buffer += "\t\t<tr>";
			}
		}
	}
	
	// End of table
	*buffer += "\t</table>";
	*buffer += "";
	*buffer += "\t<p>&nbsp;</p>";
	*buffer += "";
	
	
	// Some final info on Jamoma
	*buffer += "\t<h3> About Jamoma </h3>";		
	*buffer += "\t<p> Jamoma is a system for creating and exchanging structured Max patches. ";
	*buffer += "\tIt consists of both a set of guidelines and an implementation of those guidelines. ";
	*buffer += "\tFor more information please visit <a href=\"http://jamoma.org/\">jamoma.org</a>. </p> ";
	
	// End of page
	*buffer += "</body>";
	*buffer += "</html>";
	
	return kTTErrNone;
}

void TTContainer::dataHeading(TTString *buffer)
{		
	*buffer += "\t<table>";
	*buffer += "\t\t<tr class=\"tableHeading2\">";
	*buffer += "\t\t\t<td> /name </td>";
	*buffer += "\t\t\t<td> /type </td>";
	*buffer += "\t\t\t<td> /range/bounds </td>";
	*buffer += "\t\t\t<td> /range/clipmode </td>";
#ifdef TTDATA_RAMPLIB
	*buffer += "\t\t\t<td> /ramp/drive </td>";
	*buffer += "\t\t\t<td> /ramp/function </td>";
#endif
	*buffer += "\t\t\t<td> /dataspace </td>"; 
	*buffer += "\t\t\t<td> /dataspace/unit/native </td>"; 
	*buffer += "\t\t\t<td> /repetitions/allow </td>";	
	*buffer += "\t\t\t<td> /description </td>";
	*buffer += "\t\t<tr>";
}

void TTContainer::cssDefinition(TTString *buffer)
{
	*buffer += "<style type=\"text/css\">";
	
	*buffer +=	"\
	body {\
	margin: 0px;\
	font-family: Arial, Helvetica, sans-serif;\
	}\
	\
	h1 {\
	font-size: 24px;\
	font-weight:100;\
	padding-top: 1em;\
	margin: 0;\
	}\
	\
	\
	h2 {\
	font-size: 18px;\
	font-weight:200;\
	margin: 0;\
	color: #555;\
	text-transform: lowercase;\
	}\
	\
	h3 {\
	color: #888;\
	border-bottom: 1px solid #333;\
	font-size: 18px;\
	font-weight:100;\
	margin-top: 20px;\
	margin-bottom: 10px;\
	margin-left: 2%;\
	margin-right: 2%;\
	}\
	\
	h4{\
	color: #333;\
	font-size: 14px;\
	font-weight: bold;\
	margin-bottom: 0px;\
	margin-left: 2%;\
	margin-right: 2%;\
	}\
	\
	h6 {\
	font-size: 12px;\
	font-weight:100;\
	line-height: 1.2;\
	margin-right: 2%;\
	margin-left: 2%;\
	}\
	\
	p {\
	font-size: 12px;\
	font-weight:100;\
	margin: 5px 2%;\
	padding-bottom: 1em;\
	}\
	\
	ul{\
	margin-top:0;\
	padding-top:0;\
	}\
	\
	li {\
	font-size: 12px;\
	font-weight:100;\
	margin-top: 0;\
	margin-left: 10px;\
	padding: 0em 0em 0.3em;\
	}\
	\
	img {\
	padding: 10px 10px 0px 0px;\
	}\
	\
	\
	#jmod_header{\
	display: block;\
	margin: 0 0 40px 0;\
	}\
	\
	#jmod_header img{\
	float: left;\
	}\
	\
	\
	.objectname {\
	font-size: 24px;\
	font-weight: bold;\
	}\
	\
	\
	.moduleName {\
	font-size: 2em;\
	background-color: #c5c5c5;\
	text-align: right;\
	vertical-align: top;\
	font-weight: bold;\
	}\
	.moduleDescription {\
	font-size: 1em;\
	background-color: #000000;\
	color: #c5c5c5;\
	text-align: right;\
	vertical-align: top;\
	}\
	\
	.tableHeading2 {\
	background-color: #eee;\
	text-align: left;\
	vertical-align: top;\
	font-weight:bold;\
	font-size: 12px;\
	}\
	\
	table {\
	border: 0px;\
	width: 96%;\
	margin-top: 10px;\
	margin-bottom: 10px;\
	margin-left: 2%;\
	font-size: 14px;\
	}\
	";
	
	*buffer +=	"\
	\
	.instructionName {\
	font-family: 'Courier New', Courier, mono;\
	background-color: #edd;\
	vertical-align: top;\
	}\
	\
	.instructionType {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eee;\
	vertical-align: top;\
	}\
	\
	.instructionDataspace {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eed;\
	vertical-align: top;\
	}\
	\
	.instructionDataspaceUnitNative {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eee;\
	vertical-align: top;\
	}\
	\
	.instructionRangeBounds {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eed;\
	vertical-align: top;\
	}\
	.instructionRangeClipmode {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eee;\
	vertical-align: top;\
	}\
	.instructionRampDrive {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eed;\
	vertical-align: top;\
	}\
	.instructionRampFunction {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eee;\
	vertical-align: top;\
	}\
	.instructionRepetitionsAllow {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eed;\
	vertical-align: top;\
	}\
	.instructionDescription {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eee;\
	vertical-align: top;\
	}\
	td {\
	padding-right: 5px;\
	padding-left: 5px;\
	}\
	ul {\
	list-style-type: disc;\
	}\
	.patchimage {\
	clear: both;\
	}\
	.comment {\
	color: #6666FF;\
	}\
	.smallTable {\
	width: 400px;\
	border: none;\
	}\
	caption {\
	font-size: 11px;\
	font-style: italic;\
	}\
	.filepath {\
	font-family: 'Courier New', Courier, mono;\
	}\
	.instruction {\
	font-family: 'Courier New', Courier, mono;\
	}\
	";
	
	*buffer += "</style>";
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTContainerDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTValue			arg;
	TTContainerPtr	aContainer;
	TTPtr			hisContext;
	TTCallbackPtr	anObserver;
	TTNodePtr		aNode;
	TTAddress       anAddress;
	TTUInt8			flag;
	
	// unpack baton (a TTContainerPtr, his Context)
	b = (TTValuePtr)baton;
	aContainer = TTContainerPtr((TTObjectPtr)(*b)[0]);
	hisContext = (*b)[1];
	
	// Unpack data (anAddress, aNode, flag, anObserver)
	anAddress = data[0];
	aNode = TTNodePtr((TTPtr)data[1]);
	flag = data[2];
	anObserver = TTCallbackPtr((TTObjectPtr)data[3]);
	
	// Prepare argument
	arg.append(hisContext);
	
	switch (flag) {
			
		case kAddressCreated :
		{
			if (TTContainerTestObjectAndContext(aNode, &arg))
				aContainer->makeCacheElement(aNode);
			
			break;
		}
			
		case kAddressDestroyed :
		{
			if (TTContainerTestObjectAndContext(aNode, &arg)) 
				aContainer->deleteCacheElement(aNode);
			
			break;
		}
			
		default:
			break;
	}
	
	return kTTErrNone;
}

TTErr TTContainerValueAttributeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTValue			cacheElement, v;
	TTObjectPtr		anObject;
	TTContainerPtr	aContainer;
	TTAddress       relativeAddress, relativeDataAddress;
	TTValue			address;
	TTErr			err;
	
	// unpack baton
	b = (TTValuePtr)baton;
	aContainer = TTContainerPtr((TTObjectPtr)(*b)[0]);
	relativeAddress = (*b)[1];
	
	if (aContainer->mReturnAddressCallback && aContainer->mReturnValueCallback) {
		
		// Check what type of object is notifyng the container
		err = aContainer->mObjectsObserversCache->lookup(relativeAddress, cacheElement);
		
		if (!err) {
			
			anObject = cacheElement[0];
			
			// none CONTAINER CASE
			if (anObject->getName() != kTTSym_Container) {
				
				v = data; // protect the data
			}
			// CONTAINER CASE : activity out observation
			// the data is <relativeDataAddress, value, ...>
			else {
				
				relativeDataAddress = data[0];
				relativeAddress = relativeAddress.appendAddress(relativeDataAddress);
				
				v.copyFrom(data, 1); // protect the data
			}
			
			// return the address
			address.append(relativeAddress);
			aContainer->mReturnAddressCallback->notify(address, kTTValNONE);
			
			// return the value
			aContainer->mReturnValueCallback->notify(v, kTTValNONE);
			
			// Notify activityOut observers (about value changes only)
			v.prepend(TTValue(relativeAddress));
			aContainer->setActivityOut(v);
		}
	}
	else
		return kTTErrGeneric;
	
	return kTTErrNone;
}

TTErr TTContainerCommandMessageCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTContainerPtr	aContainer;
	TTAddress       relativeAddress;
	TTValue			address;
	
	// unpack baton
	b = (TTValuePtr)baton;
	aContainer = TTContainerPtr((TTObjectPtr)(*b)[0]);
	relativeAddress = (*b)[1];
	
	// Notify activityIn observers
	data.prepend(TTValue(relativeAddress));
	aContainer->setActivityIn(data);
	
	return kTTErrNone;
}

TTBoolean TTContainerTestObjectAndContext(TTNodePtr n, TTPtr args)
{
	TTValue		v;
	TTValuePtr	av;
	TTPtr		c, t_c, p_c = NULL;
	
	// our context
	av = (TTValuePtr)args;
	t_c = (*av)[0];
	
	// context of the tested node
	c = n->getContext();
	
	// context of the parent of the tested node
	if (n->getParent())
		if (n->getParent()->getName() != S_SEPARATOR)
			p_c = n->getParent()->getContext();
	
	/* to - this doesn't allow data under the root to subscribe to a container at the root
	 
	// Keep only nodes from our context if they aren't under the root (p_c is NULL)
	// if contexts are different, check also if the parent context is the same as our context
	return (c == t_c && p_c ) || (c != t_c && p_c == t_c );
	 */
	
	// Keep only nodes from our context if they have the same context than the container
	// if contexts are different, check also if the parent context is the same as our context
	return (c == t_c) || (c != t_c && p_c == t_c );
	
}

TTBoolean TTContainerCompareObjectPriority(TTValue& v1, TTValue& v2) 
{
	TTObjectPtr o1, o2;
	TTValue		v;
	TTInt32		p1 = 0;
	TTInt32		p2 = 0;
	
	// get priority of v1
	o1 = v1[1];
	if (o1)
		if (!o1->getAttributeValue(kTTSym_priority, v))
			p1 = v[0];
	
	// get priority of v2
    o2 = v2[1];
	if (o2)
		if (!o2->getAttributeValue(kTTSym_priority, v))
			p2 = v[0];
	
	if (p1 == 0 && p2 == 0) return v1 < v2;
	
	if (p1 == 0) return NO;
	if (p2 == 0) return YES;
	
	return p1 < p2;
}
