/* 
 * A Receiver Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTReceiver.h"

#define thisTTClass			TTReceiver
#define thisTTClassName		"Receiver"
#define thisTTClassTags		"node, receiver"

TT_MODULAR_CONSTRUCTOR,

mAddress(kTTSymEmpty),
mAttribute(kTTSym_value),		 // TODO : set kTTSymEmpty because a Receiver can bind on any object (not only data)
mEnable(YES),
mApplication(NULL),
mReturnAddressCallback(NULL),
mReturnValueCallback(NULL),
mObserver(NULL),
mNodesObserversCache(NULL)
{
	TT_ASSERT("Correct number of args to create TTReceiver", arguments.getSize() == 5);
	
	arguments.get(0, (TTPtr*)&mApplication);
	TT_ASSERT("Application passed to TTReceiver is not NULL", mApplication);
	arguments.get(1, &mAddress);
	arguments.get(2, &mAttribute);
	
	if (arguments.getSize() >= 4)
		arguments.get(3, (TTPtr*)&mReturnAddressCallback);
	
	if (arguments.getSize() >= 5)
		arguments.get(4, (TTPtr*)&mReturnValueCallback);
	
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttributeWithSetter(Attribute, kTypeSymbol);
	addAttributeWithSetter(Enable, kTypeBoolean);
	
	addMessage(Get);
	addMessageProperty(Get, hidden, YES);
	
	mNodesObserversCache = new TTList();
	
	// Replace none TTnames (because the mAttribute can be customized in order to have a specific application's namespace)
	if (mApplication) {
		TTValue v = TTValue(mAttribute);
		ToTTName(v);
		v.get(0, &mAttribute);
	}
	
	if	(getDirectoryFrom(this) && mAddress != kTTSymEmpty)
		bind();
}

TTReceiver::~TTReceiver()
{
	unbind();
	
	if (mReturnAddressCallback) {
		delete (TTValuePtr)mReturnAddressCallback->getBaton();
		TTObjectRelease(TTObjectHandle(&mReturnAddressCallback));
	}
	
	if (mReturnValueCallback) {
		delete (TTValuePtr)mReturnValueCallback->getBaton();
		TTObjectRelease(TTObjectHandle(&mReturnValueCallback));
	}
}

TTErr TTReceiver::setAddress(const TTValue& newValue)
{
	unbind();
	mAddress = newValue;
	return bind();
}

TTErr TTReceiver::setAttribute(const TTValue& newValue)
{	
	TTSymbolPtr			oldAttribute, oscAddress;
	TTValue				oldElement;
	TTObjectPtr			oldObserver, newObserver, o;
	TTValuePtr			newBaton, newElement;
	TTNodePtr			aNode;
	TTAttributePtr		anAttribute;
	TTListPtr			newNodesObserversCache;
	TTErr				err;
	
	oldAttribute = mAttribute;
	mAttribute = newValue;
	
	// Replace none TTnames (because the mAttribute can be customized in order to have a specific application's namespace)
	TTValue v = TTValue(mAttribute);
	ToTTName(v);
	v.get(0, &mAttribute);
	
	// Replace each attribute obeserver
	newNodesObserversCache = new TTList();
	if (mNodesObserversCache) {
		for (mNodesObserversCache->begin(); mNodesObserversCache->end(); mNodesObserversCache->next()){
			
			// get a cache element
			oldElement = mNodesObserversCache->current();
			
			// get the node
			oldElement.get(0, (TTPtr*)&aNode);
			
			// get the observer
			oldElement.get(1, (TTPtr*)&oldObserver);
			
			// delete attribute observer
			if (o = aNode->getObject()) {
				
				anAttribute = NULL;
				err = o->findAttribute(oldAttribute, &anAttribute);
				
				if(!err){
					
					err = anAttribute->unregisterObserverForNotifications(*oldObserver);
					
					if(!err)
						TTObjectRelease(&oldObserver);
				}
				
				// create a new attribute observer
				err = o->findAttribute(mAttribute, &anAttribute);
				
				if (!err) {
					
					newObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
					TTObjectInstantiate(TT("callback"), &newObserver, kTTValNONE);
					
					newBaton = new TTValue(TTPtr(this));
					aNode->getOscAddress(&oscAddress);
					newBaton->append(oscAddress);
					
					newObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
					newObserver->setAttributeValue(kTTSym_function, TTPtr(&TTReceiverAttributeCallback));
					
					newObserver->setAttributeValue(TT("owner"), TT("TTReceiver"));					// this is usefull only to debug
					
					anAttribute->registerObserverForNotifications(*newObserver);
					
					// memorize the node and his attribute observer
					newElement = new TTValue((TTPtr)aNode);
					newElement->append((TTPtr)newObserver);
					newNodesObserversCache->appendUnique(newElement);
				}
				
			}
		}
		
		delete mNodesObserversCache;
		mNodesObserversCache = newNodesObserversCache;
	}
	
	return kTTErrNone;
}

TTErr TTReceiver::setEnable(const TTValue& newValue)
{
	mEnable = newValue;
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTReceiver::Get()
{
	TTNodePtr	aNode;
	TTObjectPtr anObject;
	TTSymbolPtr	oscAddress, attributeName;
	TTString	fullAddress;
	TTValue		address, data, v, appValue;
	TTErr		err;
	
	if (!mNodesObserversCache->isEmpty()) {
		
		// for each node of the selection
		for (mNodesObserversCache->begin(); mNodesObserversCache->end(); mNodesObserversCache->next()) {
			
			// get a node from the selection
			mNodesObserversCache->current().get(0,(TTPtr*)&aNode);
			
			// get the value of the attribute
			if (anObject = aNode->getObject()) {
				
				err = anObject->getAttributeValue(mAttribute, data);
				
				if (!err) {
					
					// output the OSCAddress of the node (in case we use * inside the binded address)
					aNode->getOscAddress(&oscAddress);
					fullAddress = oscAddress->getCString();
					if (mAttribute != kTTSym_value) {
						fullAddress += C_PROPERTY;
						
						// Replace none AppNames (because the mAttribute can be customized in order to have a specific application's namespace)
						appValue = TTValue(mAttribute);
						ToAppName(appValue);
						appValue.get(0, &attributeName);
						
						fullAddress += attributeName->getCString();
					}
					
					// return the address
					address.append(TT(fullAddress.data()));
					
					if (mReturnAddressCallback)
						mReturnAddressCallback->notify(address);
					
					// return the value
					if (mReturnValueCallback)
						mReturnValueCallback->notify(data);
				}
				else
					;// TODO : error "%s doesn't exist"
			}
		}
	}
	else
		return kTTErrGeneric;
	
	return kTTErrNone;
}

TTErr TTReceiver::bind()
{
	TTSymbolPtr		oscAddress;
	TTAttributePtr	anAttribute = NULL;
	TTObjectPtr		newObserver, o;
	TTList			aNodeList;
	TTNodePtr		aNode;
	TTValue			v, data;
	TTValuePtr		newBaton, newElement;
	TTErr			err;
	
	mNodesObserversCache = new TTList();
	
	// for any Attribute observation except created, destroyed
	if ((mAttribute != kTTSym_created) && (mAttribute != kTTSym_destroyed))
	{
		// Look for node(s) into the directory
		err = getDirectoryFrom(this)->Lookup(mAddress, aNodeList, &aNode);
		
		// Start attribute observation on each existing node of the selection
		if (!err) {
			
			for (aNodeList.begin(); aNodeList.end(); aNodeList.next())
			{
				// get a node from the selection
				aNodeList.current().get(0,(TTPtr*)&aNode);
				
				// prepare the callback mecanism to
				// be notified about changing value attribute
				// if the attribute exist
				if (o = aNode->getObject()) {
					
					err = o->findAttribute(mAttribute, &anAttribute);
					
					if (!err) {
						
						newObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
						TTObjectInstantiate(TT("callback"), &newObserver, kTTValNONE);
						
						newBaton = new TTValue(TTPtr(this));
						aNode->getOscAddress(&oscAddress);
						newBaton->append(oscAddress);
						
						newObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
						newObserver->setAttributeValue(kTTSym_function, TTPtr(&TTReceiverAttributeCallback));
						
						newObserver->setAttributeValue(TT("owner"), TT("TTReceiver"));					// this is usefull only to debug
						
						anAttribute->registerObserverForNotifications(*newObserver);
						
						// memorize the node and his attribute observer
						newElement = new TTValue((TTPtr)aNode);
						newElement->append((TTPtr)newObserver);
						mNodesObserversCache->appendUnique(newElement);
					}
				}
			}
		}
	}

	// observe any creation or destruction below the attr_name address
	mObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &mObserver, kTTValNONE);
		
	newBaton = new TTValue(TTPtr(this));
	newBaton->append(TTPtr(kTTSymEmpty));
		
	mObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
	mObserver->setAttributeValue(kTTSym_function, TTPtr(&TTReceiverDirectoryCallback));
		
	mObserver->setAttributeValue(TT("owner"), TT("TTReceiver"));							// this is usefull only to debug
		
	getDirectoryFrom(this)->addObserverForNotifications(mAddress, *mObserver);

	return kTTErrNone;
}

TTErr TTReceiver::unbind()
{
	TTValue				oldElement, v;
	TTNodePtr			aNode;
	TTObjectPtr			oldObserver, o;
	TTAttributePtr		anAttribute;
	TTNodeDirectoryPtr	aDirectory;
	TTErr				err = kTTErrNone;
	
	// stop attribute obeservation
	// for each node of the selection
	if (mNodesObserversCache) {
		for (mNodesObserversCache->begin(); mNodesObserversCache->end(); mNodesObserversCache->next()){
			
			// get a cache element
			oldElement = mNodesObserversCache->current();
			
			// get the node
			oldElement.get(0, (TTPtr*)&aNode);
			
			// get the observer
			oldElement.get(1, (TTPtr*)&oldObserver);
			
			// stop attribute observation of the node
			// if the attribute exist
			if (o = aNode->getObject()) {
				
				anAttribute = NULL;
				err = o->findAttribute(mAttribute, &anAttribute);
				
				if(!err){
					
					err = anAttribute->unregisterObserverForNotifications(*oldObserver);
					
					if(!err)
						TTObjectRelease(&oldObserver);
				}
			}
			
			// forget this element
			mNodesObserversCache->remove(oldElement);
		}
	
		delete mNodesObserversCache;
		mNodesObserversCache = NULL;
	}
	
	// stop life cycle observation
	aDirectory = getDirectoryFrom(this);
	if (mObserver && aDirectory) {
		
		err = aDirectory->removeObserverForNotifications(mAddress, *mObserver);
		
		if(!err)
			TTObjectRelease(&mObserver);
	}
	
	return kTTErrNone;
}

TTErr TTReceiverDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTReceiverPtr	aReceiver;
	TTSymbolPtr		oscAddress;
	TTAttributePtr	anAttribute = NULL;
	TTObjectPtr		newObserver, oldObserver, o;
	TTNodePtr		aNode, p_node;
	TTValue			c, address, v;
	TTUInt8			flag;
	TTBoolean		found;
	TTCallbackPtr	anObserver;
	TTValuePtr		newBaton, newCouple;
	TTErr			err;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aReceiver);
	
	// Unpack data (oscAddress, aNode, flag, anObserver)
	data.get(0, &oscAddress);
	data.get(1, (TTPtr*)&aNode);
	data.get(2, flag);
	data.get(3, (TTPtr*)&anObserver);
	
	// if address are not equal
	if (compareOSCAddress(aReceiver->mAddress, oscAddress) != kAddressEqual)
		return kTTErrGeneric;
	
	switch (flag) {
			
		case kAddressCreated :
		{
			
			if (aReceiver->mAttribute == kTTSym_created)
			{
				// return the address
				address.append(oscAddress);
				if (aReceiver->mReturnAddressCallback)
					aReceiver->mReturnAddressCallback->notify(address);
			}
			else if (aReceiver->mAttribute != kTTSym_destroyed)
			{
				// is the observer already exist ?
				found = false;
				if(aReceiver->mNodesObserversCache){
					
					// for each node of the selection
					for(aReceiver->mNodesObserversCache->begin(); aReceiver->mNodesObserversCache->end(); aReceiver->mNodesObserversCache->next()) {
						
						// get the node of the couple
						aReceiver->mNodesObserversCache->current().get(0, (TTPtr*)&p_node);
						
						// compare it to the receive node
						if(p_node == aNode)
							found = true;
					}
				}
				
				if(!found)
				{
					// prepare the callback mecanism to
					// be notified about changing value attribute
					// if the attribute exist
					if (o = aNode->getObject()) {
						
						err = o->findAttribute(aReceiver->mAttribute, &anAttribute);
						
						if (!err) {
							
							newObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
							TTObjectInstantiate(TT("callback"), &newObserver, kTTValNONE);
							
							newBaton = new TTValue(TTPtr(aReceiver));
							newBaton->append(oscAddress);
							
							newObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
							newObserver->setAttributeValue(kTTSym_function, TTPtr(&TTReceiverAttributeCallback));
							
							newObserver->setAttributeValue(TT("owner"), TT("TTReceiver"));			// this is usefull only to debug
							
							anAttribute->registerObserverForNotifications(*newObserver);
							
							// memorize the node and his attribute observer
							newCouple = new TTValue((TTPtr)aNode);
							newCouple->append((TTPtr)newObserver);
							aReceiver->mNodesObserversCache->appendUnique(newCouple);
						}
					}
				}
			}
			
			break;
		}
			
		case kAddressDestroyed :
		{
			if (aReceiver->mAttribute == kTTSym_destroyed)
			{
				// return the address
				address.append(oscAddress);
				if (aReceiver->mReturnAddressCallback)
					aReceiver->mReturnAddressCallback->notify(address);
			}
			else if (aReceiver->mAttribute != kTTSym_created)
			{
				// look at the node among memorized <node, observer>
					
				// for each node of the selection
				found = false;
				for(aReceiver->mNodesObserversCache->begin(); aReceiver->mNodesObserversCache->end(); aReceiver->mNodesObserversCache->next()){
						
					// get a couple
					c = aReceiver->mNodesObserversCache->current();
						
					// get the node of the couple
					c.get(0, (TTPtr*)&p_node);
						
					// compare it to the receive node
					if(p_node == aNode){
						found = true;
						break;
					}
				}

				if (found) {

					// get the observer of the couple
					c.get(1, (TTPtr*)&oldObserver);
							
					// destroy the observer (don't need to unregister because the object is destroyed...)
					TTObjectRelease(&oldObserver);
							
					// forget this couple
					aReceiver->mNodesObserversCache->remove(c);
				}
			}
			break;
		}
			
		default:
			break;
	}
	
	return kTTErrNone;
}

TTErr TTReceiverAttributeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTReceiverPtr	aReceiver;
	TTSymbolPtr		oscAddress, attributeName;
	TTString		fullAddress;
	TTValue			address, appValue;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aReceiver);
	b->get(1, &oscAddress);
	
	if(aReceiver->mEnable) {
		
		// return the address
		fullAddress = oscAddress->getCString();
		if (aReceiver->mAttribute != kTTSym_value) {
			fullAddress += C_PROPERTY;
			
			// Replace none AppNames (because the mAttribute can be customized in order to have a specific application's namespace)
			appValue = TTValue(aReceiver->mAttribute);
			aReceiver->ToAppName(appValue);
			appValue.get(0, &attributeName);
			
			fullAddress += attributeName->getCString();
		}
		address.append(TT(fullAddress.data()));
		
		// return address
		if (aReceiver->mReturnAddressCallback)
			aReceiver->mReturnAddressCallback->notify(address);
											  
		// return the value
		if (aReceiver->mReturnValueCallback)
			aReceiver->mReturnValueCallback->notify(data);
	}
	
	return kTTErrNone;
}