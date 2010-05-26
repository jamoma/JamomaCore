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
mDirectory(NULL), mAddress(kTTSymEmpty), mAttribute(kTTSym_value)
{
	TT_ASSERT("Correct number of args to create TTSender", arguments.getSize() == 3);
		
	arguments.get(0, (TTPtr*)&mDirectory);
	TT_ASSERT("Directory passed to TTSender is not NULL", mDirectory);
	arguments.get(1, &mAddress);
	arguments.get(2, &mAttribute);

	addAttributeWithSetter(Address, kTypeSymbol);
	addAttributeWithSetter(Attribute, kTypeSymbol);
	
	addMessageWithArgument(send);
	
	if	(mDirectory)
		bind();
}

TTSender::~TTSender()
{;}

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

TTErr TTSender::send(TTValue& valueToSend)
{
	TTAttributePtr	anAttribute = NULL;
	TTObjectPtr		aNode;
	TTSymbolPtr		anAddress;
	TTValue			nodeAndAddress, addressAndValue;
	TTErr			err;
	
	if (!mNodesAddressCache->isEmpty()) {
		
		// send data to each node of the selection
		for (mNodesAddressCache->begin(); mNodesAddressCache->end(); mNodesAddressCache->next()) {
			
			nodeAndAddress = mNodesAddressCache->current();
			
			// get a node
			nodeAndAddress.get(0, (TTPtr*)&aNode);
			
			// and his address
			nodeAndAddress.get(1, &anAddress);
			
			// 1.set the attribute of the node
			aNode->setAttributeValue(mAttribute, valueToSend);
			
			// 2. notify attribute observers
			// if the attribute exist
			err = aNode->findAttribute(mAttribute, &anAttribute);
			
			if (!err) {
				addressAndValue.clear();
				addressAndValue.append(anAddress);
				addressAndValue.append((TTPtr)&valueToSend);
				
				// notify each observer of the attribute
				anAttribute->sendNotification(TT("notify"), addressAndValue);
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTSender::bind()
{
	TTNodePtr	aNode;
	TTSymbolPtr anAddress;
	TTValuePtr	newBaton, nodeAndAddress;
	TTList		aNodeList;
	TTErr		err = kTTErrNone;
	
	// 1. Look for the node(s) into the directory
	err = mDirectory->Lookup(mAddress, aNodeList, &aNode);
	
	// 2. make a cache containing each node and his address
	mNodesAddressCache  = new TTList();
	
	for (aNodeList.begin(); aNodeList.end(); aNodeList.next()) {
		
		aNodeList.current().get(0, (TTPtr*)&aNode);
		aNode->getOscAddress(&anAddress);
		
		nodeAndAddress = new TTValue((TTPtr)aNode);
		nodeAndAddress->append(anAddress);
		
		mNodesAddressCache->append(nodeAndAddress);
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
	
	delete mNodesAddressCache;
	mNodesAddressCache = NULL;
	
	// stop life cycle observation
	if(mObserver) {
		
		err = mDirectory->removeObserverForNotifications(mAddress, *mObserver);
	
		if(!err)
			TTObjectRelease(&mObserver);
	}
	
	return kTTErrNone;
}

TTErr TTSenderDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b, nodeAndAddress;
	TTSenderPtr		aSender;
	TTNodePtr		aNode, aCacheNode;
	TTSymbolPtr		anAddress;
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
			nodeAndAddress = new TTValue((TTPtr)aNode);
			nodeAndAddress->append(anAddress);
			aSender->mNodesAddressCache->appendUnique(nodeAndAddress);
			break;
		}
			
		case kAddressDestroyed :
		{
			// find the node in the cache and remove it
			for (aSender->mNodesAddressCache->begin(); aSender->mNodesAddressCache->end(); aSender->mNodesAddressCache->next()) {
				
				// get a node
				aSender->mNodesAddressCache->current().get(0,(TTPtr*)&aCacheNode);
				
				if (aCacheNode == aNode) {
					aSender->mNodesAddressCache->remove(aSender->mNodesAddressCache->current());
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

