/* 
 * A Sender Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTSender.h"

#define thisTTClass			TTSender
#define thisTTClassName		"Sender"
#define thisTTClassTags		"node, sender"

TT_MODULAR_CONSTRUCTOR,
mDirectory(NULL),
mAddress(kTTSymEmpty),
mAttribute(kTTSym_value),
mAddressObjectCache(NULL),
mObserver(NULL)
{
	TT_ASSERT("Correct number of args to create TTSender", arguments.getSize() == 3);
		
	arguments.get(0, (TTPtr*)&mDirectory);
	TT_ASSERT("Directory passed to TTSender is not NULL", mDirectory);
	arguments.get(1, &mAddress);
	arguments.get(2, &mAttribute);

	addAttributeWithSetter(Address, kTypeSymbol);
	addAttributeWithSetter(Attribute, kTypeSymbol);
	
	addMessageWithArgument(Send);
	
	mIsSending = false;
	
	if (mDirectory)
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
	bind();
	return kTTErrNone;
}

TTErr TTSender::setAttribute(const TTValue& newValue)
{
	mAttribute = newValue;
	
	if (mAttribute == NO_ATTRIBUTE)
		mAttribute = kTTSym_value;
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTSender::Send(TTValue& valueToSend)
{
	TTSymbolPtr		anAddress;
	TTObjectPtr		anObject;
	TTValue			addressObject;

	
	if (!mIsSending) {
		
		// lock
		mIsSending = true;
		
		if (!mAddressObjectCache->isEmpty()) {
			
			// send data to each node of the selection
			for (mAddressObjectCache->begin(); mAddressObjectCache->end(); mAddressObjectCache->next()) {
				
				addressObject = mAddressObjectCache->current();
				
				// and his address
				addressObject.get(0, &anAddress);
				
				// then his object
				addressObject.get(1, (TTPtr*)&anObject);
				
				if (mAttribute == kTTSym_Value)
					// set the value attribute using a command
					anObject->sendMessage(kTTSym_Command, valueToSend);
				else
					// set the attribute of the object
					anObject->setAttributeValue(mAttribute, valueToSend);
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
	TTSymbolPtr anAddress;
	TTObjectPtr	anObject;
	TTValuePtr	newBaton, addressObject;
	TTList		aNodeList;
	TTValue		v;

	TTErr		err = kTTErrNone;
	
	// 1. Look for the node(s) into the directory
	err = mDirectory->Lookup(mAddress, aNodeList, &aNode);
	
	// 2. make a cache containing each node and his address
	mAddressObjectCache  = new TTList();
	
	for (aNodeList.begin(); aNodeList.end(); aNodeList.next()) {
		
		aNodeList.current().get(0, (TTPtr*)&aNode);
		aNode->getOscAddress(&anAddress);
		
		aNode->getAttributeValue(kTTSym_Object, v);
		v.get(0, (TTPtr*)&anObject);
		
		addressObject = new TTValue(anAddress);
		addressObject->append((TTPtr)anObject);
		
		mAddressObjectCache->append(addressObject);
	}
	
	// 3. Observe any creation or destruction below the address
	mObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &mObserver, kTTValNONE);
	
	newBaton = new TTValue(TTPtr(this));
	newBaton->append(TTPtr(kTTSymEmpty));
	
	mObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
	mObserver->setAttributeValue(TT("Function"), TTPtr(&TTSenderDirectoryCallback));
	
	mObserver->setAttributeValue(TT("Owner"), TT("TTSender"));		// this is usefull only to debug
	
	mDirectory->addObserverForNotifications(mAddress, *mObserver);
	
	return kTTErrNone;
}

TTErr TTSender::unbind()
{
	TTErr		err = kTTErrNone;	
	
	if (mAddressObjectCache)
		delete mAddressObjectCache;
		mAddressObjectCache = NULL;
	
	// stop life cycle observation
	if(mObserver && mDirectory) {
		
		err = mDirectory->removeObserverForNotifications(mAddress, *mObserver);
	
		if(!err)
			TTObjectRelease(&mObserver);
	}
	
	return kTTErrNone;
}

TTErr TTSenderDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b, addressObject;
	TTSenderPtr		aSender;
	TTNodePtr		aNode, aCacheObject;
	TTObjectPtr		anObject;
	TTSymbolPtr		anAddress;
	TTValue			v;
	long			flag;

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
			aNode->getAttributeValue(kTTSym_Object, v);
			v.get(0, (TTPtr*)&anObject);
			
			addressObject = new TTValue(anAddress);
			addressObject->append((TTPtr)anObject);
			
			aSender->mAddressObjectCache->appendUnique(addressObject);
			break;
		}
			
		case kAddressDestroyed :
		{
			aNode->getAttributeValue(kTTSym_Object, v);
			v.get(0, (TTPtr*)&anObject);
			
			// find the object in the cache and remove it
			for (aSender->mAddressObjectCache->begin(); aSender->mAddressObjectCache->end(); aSender->mAddressObjectCache->next()) {
				
				// get a node
				aSender->mAddressObjectCache->current().get(1,(TTPtr*)&aCacheObject);
				
				if (aCacheObject == anObject) {
					aSender->mAddressObjectCache->remove(aSender->mAddressObjectCache->current());
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

