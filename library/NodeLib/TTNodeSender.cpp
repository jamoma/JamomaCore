/* 
 * A Sender Object
 * Copyright © 2008, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTNodeSender.h"

#define thisTTClass			TTNodeSender
#define thisTTClassName		"NodeSender"
#define thisTTClassTags		"node, sender"

TT_MODEL_CONSTRUCTOR_EXPORT,
mDirectory(NULL), mAddress(kTTSymEmpty), mAttribute(kTTSym_value)
{
	TT_ASSERT("Correct number of args to create TTNodeSender", arguments.getSize() == 1);
		
	arguments.get(0, TTObjectHandle(&mDirectory));
	TT_ASSERT("Directory passed to TTNodeSender is not NULL", mDirectory);
	arguments.get(1, &mAddress);
	arguments.get(2, &mAttribute);

	addAttributeWithSetter(Address, kTypeSymbol);
	addAttributeWithSetter(Attribute, kTypeSymbol);
	
	addMessageWithArgument(send);
}


TTNodeSender::~TTNodeSender()
{;}

TTErr TTNodeSender::setAddress(const TTValue& newValue)
{
	unbind();
	mAddress = newValue;
	bind();
	return kTTErrNone;
}

TTErr TTNodeSender::setAttribute(const TTValue& newValue)
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

TTErr TTNodeSender::send(TTValue& valueToSend)
{
	TTAttributePtr	anAttribute = NULL;
	TTObjectPtr		aNode;
	TTErr			err;
	
	if (!mNodesCache->isEmpty()) {
		
		// send data to each node of the selection
		for (mNodesCache->begin(); mNodesCache->end(); mNodesCache->next()) {
			
			// get a node
			mNodesCache->current().get(0,(TTPtr*)&aNode);
			
			// 1. set the attribute of the node
			aNode->setAttributeValue(mAttribute, valueToSend);
			
			// 2. notify attribute observers
			// if the attribute exist
			err = aNode->findAttribute(mAttribute, &anAttribute);
			
			if (!err)
				// notify each observer of the attribute
				anAttribute->sendNotification(TT("notify"), valueToSend);
		}
	}
	
	return kTTErrNone;
}

TTErr TTNodeSender::bind()
{
	TTNodePtr	aNode;
	TTValuePtr	newBaton;
	TTErr		err = kTTErrNone;
	
	mNodesCache = new TTList();
	
	// 1. Look for the node(s) into the directory
	err = mDirectory->Lookup(mAddress, *mNodesCache, &aNode);
	
	// 2. Observe any creation or destruction below the attr_name address
	mObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &mObserver, kTTValNONE);
	
	newBaton = new TTValue(TTPtr(this));
	newBaton->append(TTPtr(kTTSymEmpty));
	
	mObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
	mObserver->setAttributeValue(TT("Function"), TTPtr(&NodeSenderCallback));
	
	mObserver->setAttributeValue(TT("Owner"), TT("TTNodeSender"));		// this is usefull only to debug
	
	mDirectory->addObserverForNotifications(mAddress, *mObserver);
	
	return kTTErrNone;
}

TTErr TTNodeSender::unbind()
{
	TTErr		err = kTTErrNone;	
	
	delete mNodesCache;
	mNodesCache = NULL;
	
	// stop life cycle observation
	if(mObserver) {
		
		err = mDirectory->removeObserverForNotifications(mAddress, *mObserver);
	
		if(!err)
			TTObjectRelease(&mObserver);
	}
	
	return kTTErrNone;
}

TTErr TTNodeSender::directoryNotification(TTPtr baton, TTValue& data)
{
	//TTSymbolPtr		oscAddress;
	TTNodePtr		aNode;
	long			flag;
	//TTCallbackPtr	anObserver;
	
	// Unpack data (oscAddress, aNode, flag, anObserver)
	//data.get(0, (TTPtr*)&oscAddress);
	data.get(1, (TTPtr*)&aNode);
	data.get(2, flag);
	//data.get(3, TTObjectHandle(&anObserver));
	
	switch (flag) {
			
		case kAddressCreated :
		{
			mNodesCache->appendUnique(new TTValue((TTPtr)aNode));
			break;
		}
			
		case kAddressDestroyed :
		{
			mNodesCache->remove((TTPtr)aNode);
			break;
		}
			
		default:
			break;
	}
	
	return kTTErrNone;
}


TTErr NodeSenderCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTNodeSenderPtr	aNodeSender;
	TTSymbolPtr		aSymbol;
	
	// unpack baton (a TTObject and the name of the message to call)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aNodeSender);
	b->get(1, (TTPtr*)&aSymbol);
	
	return aNodeSender->directoryNotification(baton, data);
}

