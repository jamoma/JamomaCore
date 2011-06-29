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
mAddress(kTTAdrsEmpty),
mDirectory(NULL),
mObjectCache(NULL),
mObserver(NULL)
{
	TTNodeAddressPtr anAddress;
	
	TT_ASSERT("Correct number of args to create TTSender", arguments.getSize() == 1);
		
	addAttributeWithSetter(Address, kTypeSymbol);
	
	addMessageWithArgument(Send);
	addMessageProperty(Send, hidden, YES);
	
	mIsSending = false;
	
	if (arguments.getSize() == 1) {
		arguments.get(0, &anAddress);
		setAddress(anAddress);
	}
}

TTSender::~TTSender()
{
	unbind();
}

TTErr TTSender::setAddress(const TTValue& newValue)
{
	unbind();
	newValue.get(0, &mAddress);
	
	if (mDirectory = getDirectoryFrom(mAddress)) {
		
		// default attribute to bind is value
		if (mAddress->getAttribute() == NO_ATTRIBUTE)
			mAddress = mAddress->appendAttribute(kTTSym_value);
		
		return bind();
	}
	else
		return kTTErrGeneric; ; // TODO : wait for directory
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTSender::Send(TTValue& valueToSend)
{
	TTObjectPtr		anObject;
	TTValue			aCacheElement, v, c;
	TTAttributePtr	anAttribute;
	TTMessagePtr	aMessage;
	TTNodeAddressPtr relativeAddress;
	
	if (!mDirectory || mAddress == kTTAdrsEmpty)
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
					if (anObject->getName() == TT("Data") && mAddress->getAttribute() == kTTSym_value) {
						// set the value attribute using a command
						anObject->sendMessage(kTTSym_Command, valueToSend);
					}
					// CONTAINER CASE for value attribute
					else if (anObject->getName() == TT("Container") && mAddress->getAttribute() == kTTSym_value) {
						
						valueToSend.get(0, &relativeAddress);
						c.copyFrom(valueToSend, 1);
						
						v = TTValue(relativeAddress);
						v.append((TTPtr*)&c);
						
						// send the value
						anObject->sendMessage(kTTSym_Send, v);
					}
					// DEFAULT CASE
					// Look for attribute and set it
					else if (!anObject->findAttribute(mAddress->getAttribute(), &anAttribute))
						anObject->setAttributeValue(mAddress->getAttribute(), valueToSend);
					
					// Or look for message and send it
					else if (!anObject->findMessage(mAddress->getAttribute(), &aMessage))
						anObject->sendMessage(mAddress->getAttribute(), valueToSend);
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
	err = mDirectory->Lookup(mAddress, aNodeList, &aNode);
	
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
	
	mDirectory->addObserverForNotifications(mAddress, *mObserver);
	
	return kTTErrNone;
}

TTErr TTSender::unbind()
{
	TTErr		err = kTTErrNone;	
	
	if (mAddress != kTTSymEmpty) {
		
		if (mObjectCache)
			delete mObjectCache;
		mObjectCache = NULL;
		
		// stop life cycle observation
		if(mObserver && mDirectory) {
			
			err = mDirectory->removeObserverForNotifications(mAddress, *mObserver);
			
			if(!err) {
				delete (TTValuePtr)mObserver->getBaton();
				TTObjectRelease(TTObjectHandle(&mObserver));
			}
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
	TTNodeAddressPtr anAddress;
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
			if (anAddress->compare(aSender->mAddress) == kAddressEqual) {
				if (anObject = aNode->getObject()) {
					aCacheElement = (TTPtr)anObject;
					aSender->mObjectCache->appendUnique(aCacheElement);
				}
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

