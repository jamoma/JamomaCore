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
mApplication(NULL),
mObjectCache(NULL),
mObserver(NULL)
{
	TT_ASSERT("Correct number of args to create TTSender", arguments.getSize() == 3);
		
	arguments.get(0, (TTPtr*)&mApplication);
	TT_ASSERT("Application passed to TTSender is not NULL", mApplication);
	arguments.get(1, &mAddress);
	arguments.get(2, &mAttribute);

	addAttributeWithSetter(Address, kTypeSymbol);
	addAttributeWithSetter(Attribute, kTypeSymbol);
	
	addMessageWithArgument(Send);
	addMessageProperty(Send, hidden, YES);
	
	mIsSending = false;
	
	// Replace none TTnames (because the mAttribute can be customized in order to have a specific application's namespace)
	if (mApplication) {
		TTValue v = TTValue(mAttribute);
		ToTTName(v);
		v.get(0, &mAttribute);
	}
	
	if (getDirectoryFrom(this))
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
	TTValue			aCacheElement, v;
	
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
					
					// Device case : need address & value
					if (anObject->getName() == TT("Device")) {
						v.append(mAddress);
						v.append(&valueToSend);
						anObject->sendMessage(kTTSym_Command, v);
					}
					// DATA CASE for value attribute
					else if (anObject->getName() == TT("Data") && mAttribute == kTTSym_value) {
						// set the value attribute using a command
						anObject->sendMessage(kTTSym_Command, valueToSend);
					}
					// set the attribute of the object
					else if (anObject->setAttributeValue(mAttribute, valueToSend))
						// or send a message
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
	TTValuePtr	newBaton, aCacheElement;
	TTList		aNodeList;
	TTValue		v;
	TTErr		err;
	
	// 1. Look for the node(s) into the directory
	err = getDirectoryFrom(this)->Lookup(mAddress, aNodeList, &aNode);
	
	// 2. make a cache containing each object
	mObjectCache  = new TTList();
	
	for (aNodeList.begin(); aNodeList.end(); aNodeList.next()) {
		
		aNodeList.current().get(0, (TTPtr*)&aNode);
		anObject = aNode->getObject();
		
		aCacheElement = new TTValue((TTPtr)anObject);
		
		mObjectCache->append(aCacheElement);
	}
	
	// 3. Observe any creation or destruction below the address
	mObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &mObserver, kTTValNONE);
	
	newBaton = new TTValue(TTPtr(this));
	newBaton->append(TTPtr(kTTSymEmpty));
	
	mObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
	mObserver->setAttributeValue(kTTSym_function, TTPtr(&TTSenderDirectoryCallback));
	
	mObserver->setAttributeValue(TT("owner"), TT("TTSender"));		// this is usefull only to debug
	
	getDirectoryFrom(this)->addObserverForNotifications(mAddress, *mObserver);
	
	return kTTErrNone;
}

TTErr TTSender::unbind()
{
	TTErr		err = kTTErrNone;	
	
	if (mObjectCache)
		delete mObjectCache;
		mObjectCache = NULL;
	
	// stop life cycle observation
	if(mObserver && getDirectoryFrom(this)) {
		
		err = getDirectoryFrom(this)->removeObserverForNotifications(mAddress, *mObserver);
	
		if(!err)
			TTObjectRelease(&mObserver);
	}
	
	return kTTErrNone;
}

TTErr TTSenderDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b, aCacheElement;
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
			
			aCacheElement = new TTValue((TTPtr)anObject);
			
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

