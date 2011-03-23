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
mAddress(kTTSymEmpty),
mAttribute(kTTSym_value),	 // TODO : set kTTSymEmpty because a Sender can bind on any object (not only data)
mObjectCache(NULL),
mObserver(NULL)
{
	TT_ASSERT("Correct number of args to create TTSender", arguments.getSize() == 2);
		
	arguments.get(0, &mAddress);
	arguments.get(1, &mAttribute);

	addAttributeWithSetter(Address, kTypeSymbol);
	addAttributeWithSetter(Attribute, kTypeSymbol);
	
	addMessageWithArgument(Send);
	addMessageProperty(Send, hidden, YES);
	
	mIsSending = false;
	
	// Replace none TTnames (because the mAttribute can be customized in order to have a specific application's namespace)
	TTValue v = TTValue(mAttribute);
	ToTTName(v);
	v.get(0, &mAttribute);
	
	if (getDirectoryFrom(mAddress))
		bind();
}

TTSender::~TTSender()
{
	unbind();
}

TTErr TTSender::setAddress(const TTValue& newValue)
{
	unbind();
	mAddress = newValue;
	return bind();
}

TTErr TTSender::setAttribute(const TTValue& newValue)
{	
	mAttribute = newValue;
	
	// Replace none TTnames (because the mAttribute can be customized in order to have a specific application's namespace)
	TTValue v = TTValue(mAttribute);
	ToTTName(v);
	v.get(0, &mAttribute);
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTSender::Send(TTValue& valueToSend)
{
	TTObjectPtr		anObject;
	TTValue			aCacheElement;
	TTAttributePtr	anAttribute;
	TTMessagePtr	aMessage;
	
	if (mAddress == kTTSymEmpty)
		return kTTErrGeneric;

	if (!mIsSending) {
		
		// lock
		mIsSending = true;
		
		if (!mObjectCache->isEmpty()) {
			
			// send data to each node of the selection
			for (mObjectCache->begin(); mObjectCache->end(); mObjectCache->next()) {
				
				aCacheElement = mObjectCache->current();
								
				// then his object
				aCacheElement.get(0, (TTPtr*)&anObject);
				
				if (anObject) {
					// DATA CASE for value attribute
					if (anObject->getName() == TT("Data") && mAttribute == kTTSym_value) {
						// set the value attribute using a command
						anObject->sendMessage(kTTSym_Command, valueToSend);
					}
					// DEFAULT CASE
					// Look for attribute and set it
					else if (!anObject->findAttribute(mAttribute, &anAttribute))
						anObject->setAttributeValue(mAttribute, valueToSend);
					
					// Or look for message and send it
					else if (!anObject->findMessage(mAttribute, &aMessage))
						anObject->sendMessage(mAttribute, valueToSend);
				}
			}
		}
		
		// unlock
		mIsSending = false;	
	}
	
	return kTTErrNone;
}

TTErr TTSender::bind()
{
	TTNodePtr	aNode;
	TTObjectPtr	anObject;
	TTValuePtr	newBaton;
	TTValue		aCacheElement;
	TTList		aNodeList;
	TTValue		v;
	TTErr		err;
	
	// 1. Look for the node(s) into the directory
	err = getDirectoryFrom(mAddress)->Lookup(mAddress, aNodeList, &aNode);
	
	// 2. make a cache containing each object
	mObjectCache  = new TTList();
	
	for (aNodeList.begin(); aNodeList.end(); aNodeList.next()) {
		aNodeList.current().get(0, (TTPtr*)&aNode);
		anObject = aNode->getObject();
		aCacheElement = (TTPtr)anObject;
		mObjectCache->append(aCacheElement);
	}
	
	// 3. Observe any creation or destruction below the address
	mObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), TTObjectHandle(&mObserver), kTTValNONE);
	
	newBaton = new TTValue(TTPtr(this));
	newBaton->append(TTPtr(kTTSymEmpty));
	
	mObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
	mObserver->setAttributeValue(kTTSym_function, TTPtr(&TTSenderDirectoryCallback));
	
	mObserver->setAttributeValue(TT("owner"), TT("TTSender"));		// this is usefull only to debug
	
	getDirectoryFrom(mAddress)->addObserverForNotifications(mAddress, *mObserver);
	
	return kTTErrNone;
}

TTErr TTSender::unbind()
{
	TTErr		err = kTTErrNone;	
	
	if (mObjectCache)
		delete mObjectCache;
		mObjectCache = NULL;
	
	// stop life cycle observation
	if(mObserver && getDirectoryFrom(mAddress)) {
		
		err = getDirectoryFrom(mAddress)->removeObserverForNotifications(mAddress, *mObserver);
	
		if(!err) {
			delete (TTValuePtr)mObserver->getBaton();
			TTObjectRelease(TTObjectHandle(&mObserver));
		}
	}
	
	return kTTErrNone;
}

TTErr TTSenderDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTValue			aCacheElement;
	TTSenderPtr		aSender;
	TTNodePtr		aNode;
	TTObjectPtr		anObject, aCacheObject;
	TTSymbolPtr		anAddress;
	TTValue			v;
	TTUInt8			flag;

	// unpack baton (a TTSenderPtr)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aSender);

	// Unpack data (oscAddress, aNode, flag, anObserver)
	data.get(0, &anAddress);
	data.get(1, (TTPtr*)&aNode);
	data.get(2, flag);
	
	switch (flag) {
			
		case kAddressCreated :
		{
			anObject = aNode->getObject();
			aCacheElement = (TTPtr)anObject;
			aSender->mObjectCache->appendUnique(aCacheElement);
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

