/* 
 * A Sender Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSender.h"

#define thisTTClass			TTSender
#define thisTTClassName		"Sender"
#define thisTTClassTags		"node, sender"

TT_MODULAR_CONSTRUCTOR,
mSignal(NULL),
mAddress(kTTAdrsEmpty),
mDirectory(NULL),
mObjectCache(NULL),
mAddressObserver(NULL),
mApplicationObserver(NULL)
{
	TT_ASSERT("Correct number of args to create TTSender", arguments.getSize() <= 1);
	
	// a Sender can handle a signal
	if (arguments.getSize() >= 1)
		arguments.get(0, (TTPtr*)&mSignal);
		
	addAttributeWithSetter(Address, kTypeSymbol);
	
	addAttribute(ObjectCache, kTypePointer);
	addAttributeProperty(ObjectCache, hidden, YES);
	addAttributeProperty(ObjectCache, readOnly, YES);
	
	addMessageWithArguments(Send);
	addMessageProperty(Send, hidden, YES);
	
	mIsSending = false;
}

TTSender::~TTSender()
{
	if (mSignal)
		TTObjectRelease(TTObjectHandle(&mSignal));
	
	unbindAddress();
	unbindApplication();
}

TTErr TTSender::setAddress(const TTValue& newValue)
{
	unbindAddress();
	unbindApplication();
	
	newValue.get(0, &mAddress);
	
	// default attribute to bind is value
	if (mAddress->getAttribute() == NO_ATTRIBUTE)
		mAddress = mAddress->appendAttribute(kTTSym_value);
	
	mDirectory = getDirectoryFrom(mAddress);
	if (mDirectory)
		return bindAddress();
	else 
		return bindApplication();
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTSender::Send(TTValue& valueToSend, TTValue& outputValue)
{
	TTObjectPtr		anObject;
	TTValue			aCacheElement, v, c;
	TTAttributePtr	anAttribute;
	TTSymbol		ttAttributeName;
	TTMessagePtr	aMessage;
	TTAddress relativeAddress;
	TTUInt16		index = 0;
	TTErr			err = kTTErrNone;
	
	if (!mDirectory || mAddress == kTTAdrsEmpty)
		return kTTErrGeneric;

	if (!mIsSending) {
		
		// lock
		mIsSending = true;
		
		if (!mObjectCache->isEmpty()) {
			
			ttAttributeName = ToTTName(mAddress->getAttribute());
			
			// send data to each node of the selection
			for (mObjectCache->begin(); mObjectCache->end(); mObjectCache->next()) {
				
				aCacheElement = mObjectCache->current();
								
				// then his object
				aCacheElement.get(0, (TTPtr*)&anObject);
				
				if (anObject) {
					// DATA CASE for value attribute
					if (anObject->getName() == kTTSym_Data && ttAttributeName == kTTSym_value) {
						
						// set the value attribute using a command
						anObject->sendMessage(kTTSym_Command, valueToSend, kTTValNONE);
					}
					// CONTAINER CASE for value attribute
					else if (anObject->getName() == kTTSym_Container && ttAttributeName == kTTSym_value) {
						
						if (valueToSend.getType() == kTypeSymbol) {
							valueToSend.get(0, &relativeAddress);
							c.copyFrom(valueToSend, 1);
						
							v = TTValue(relativeAddress);
							v.append((TTPtr*)&c);
						
							// send the value
							anObject->sendMessage(kTTSym_Send, v, kTTValNONE);
						}
						else
							err = kTTErrGeneric;
						
					}
					else if (anObject->getName() == kTTSym_Input && ttAttributeName == kTTSym_signal) {
						
						// send the value
						anObject->sendMessage(kTTSym_Send, valueToSend, kTTValNONE);
					}
					// DEFAULT CASE
					// Look for attribute and set it
					else if (!anObject->findAttribute(ttAttributeName, &anAttribute))
						anObject->setAttributeValue(ttAttributeName, valueToSend);
					
					// Or look for message and send it
					else if (!anObject->findMessage(ttAttributeName, &aMessage))
						anObject->sendMessage(ttAttributeName, valueToSend, kTTValNONE);
				}
			}
		}
		
		// unlock
		mIsSending = false;	
	}
	
	return err;
}

TTErr TTSender::bindAddress()
{
	TTNodePtr	aNode;
	TTObjectPtr	anObject;
	TTValuePtr	newBaton;
	TTValue		aCacheElement;
	TTList		aNodeList;
	TTValue		v;
	
	// 1. Look for the node(s) into the directory
	mDirectory->Lookup(mAddress, aNodeList, &aNode);
	
	// 2. make a cache containing each object
	mObjectCache  = new TTList();
	
	for (aNodeList.begin(); aNodeList.end(); aNodeList.next()) {
		aNodeList.current().get(0, (TTPtr*)&aNode);
		anObject = aNode->getObject();
		aCacheElement = (TTPtr)anObject;
		mObjectCache->append(aCacheElement);
	}
	
	// 3. Observe any creation or destruction below the address
	mAddressObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), TTObjectHandle(&mAddressObserver), kTTValNONE);
	
	newBaton = new TTValue(TTPtr(this));
	newBaton->append(TTPtr(kTTSymEmpty));
	
	mAddressObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
	mAddressObserver->setAttributeValue(kTTSym_function, TTPtr(&TTSenderDirectoryCallback));
	
	mAddressObserver->setAttributeValue(TT("owner"), TT("TTSender"));		// this is usefull only to debug
	
	mDirectory->addObserverForNotifications(mAddress, mAddressObserver, 0); // ask for notification only for equal addresses
	
	return kTTErrNone;
}

TTErr TTSender::unbindAddress()
{
	TTErr		err = kTTErrNone;	
	
	if (mAddress != kTTAdrsEmpty) {
		
		if (mObjectCache)
			delete mObjectCache;
		mObjectCache = NULL;
		
		// stop life cycle observation
		if(mAddressObserver && mDirectory) {
			
			err = mDirectory->removeObserverForNotifications(mAddress, mAddressObserver);
			
			if(!err) {
				delete (TTValuePtr)mAddressObserver->getBaton();
				TTObjectRelease(TTObjectHandle(&mAddressObserver));
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTSender::bindApplication() 
{
	TTValuePtr	newBaton;
	
	if (!mApplicationObserver) {
		
		mApplicationObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TT("callback"), TTObjectHandle(&mApplicationObserver), kTTValNONE);
		
		newBaton = new TTValue(TTPtr(this));
		
		mApplicationObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
		mApplicationObserver->setAttributeValue(kTTSym_function, TTPtr(&TTSenderApplicationManagerCallback));
		
		mApplicationObserver->setAttributeValue(TT("owner"), TT("TTSender"));		// this is usefull only to debug
		
		return TTApplicationManagerAddApplicationObserver(mAddress->getDirectory(), *mApplicationObserver);
	}
	
	return kTTErrGeneric;
}

TTErr TTSender::unbindApplication() 
{
	
	if (mApplicationObserver) {
		
		TTApplicationManagerRemoveApplicationObserver(mAddress->getDirectory(), *mApplicationObserver);
		
		delete (TTValuePtr)mApplicationObserver->getBaton();
		TTObjectRelease(TTObjectHandle(&mApplicationObserver));
	}
	
	mDirectory = NULL;
	
	return kTTErrNone;
}

TTErr TTSenderDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTValue			aCacheElement;
	TTSenderPtr		aSender;
	TTNodePtr		aNode;
	TTObjectPtr		anObject, aCacheObject;
	TTAddress anAddress;
	TTValue			v;
	TTUInt8			flag;

	// unpack baton (a TTSenderPtr)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aSender);

	// Unpack data (address, aNode, flag, anObserver)
	data.get(0, &anAddress);
	data.get(1, (TTPtr*)&aNode);
	data.get(2, flag);
	
	switch (flag) {
			
		case kAddressCreated :
		{
			anObject = aNode->getObject();
			if (anObject) {
				aCacheElement = (TTPtr)anObject;
				aSender->mObjectCache->appendUnique(aCacheElement);
			}
			break;
		}
			
		case kAddressDestroyed :
		{
			anObject = aNode->getObject();
			
			// find the object in the cache and remove it
			for (aSender->mObjectCache->begin(); aSender->mObjectCache->end(); aSender->mObjectCache->next()) {
				
				// get a node
				aSender->mObjectCache->current().get(0,(TTPtr*)&aCacheObject);
				
				if (aCacheObject == anObject) {
					aSender->mObjectCache->remove(aSender->mObjectCache->current());
					break;
				}
			}
			break;
		}
			
		default:
			break;
	}
	
	return kTTErrNone;
}

TTErr TTSenderApplicationManagerCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTSenderPtr		aSender;
	TTSymbol		anApplicationName;
	TTApplicationPtr anApplication;
	TTValue			v;
	TTUInt8			flag;
	
	// unpack baton (a TTSenderPtr)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aSender);
	
	// Unpack data (applicationName, application, flag, observer)
	data.get(0, &anApplicationName);
	data.get(1, (TTPtr*)&anApplication);
	data.get(2, flag);
	
	switch (flag) {
			
		case kApplicationAdded :
		{
			aSender->mDirectory = getDirectoryFrom(aSender->mAddress);
			aSender->bindAddress();
			break;
		}
			
		case kApplicationProtocolStarted :
		{
			break;
		}
			
		case kApplicationProtocolStopped :
		{
			break;
		}
			
		case kApplicationRemoved :
		{
			aSender->unbindAddress();
			break;
		}
			
		default:
			break;
	}
	
	return kTTErrNone;
}
