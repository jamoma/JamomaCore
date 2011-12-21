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

mAddress(kTTAdrsEmpty),
mEnable(YES),
mDirectory(NULL),
mReturnAddressCallback(NULL),
mReturnValueCallback(NULL),
mAddressObserver(NULL),
mApplicationObserver(NULL),
mNodesObserversCache(NULL)
{
	TT_ASSERT("Correct number of args to create TTReceiver", arguments.getSize() == 2);
	
	if (arguments.getSize() >= 1)
		arguments.get(0, (TTPtr*)&mReturnAddressCallback);
	
	if (arguments.getSize() >= 2)
		arguments.get(1, (TTPtr*)&mReturnValueCallback);
	
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttributeWithSetter(Enable, kTypeBoolean);
	
	addMessage(Get);
	addMessageProperty(Get, hidden, YES);
	
	mNodesObserversCache = new TTList();
}

TTReceiver::~TTReceiver()
{
	unbindAddress();
	unbindApplication();
	
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
	unbindAddress();
	unbindApplication();
	
	newValue.get(0, &mAddress);
	
	// default attribute to bind is value
	if (mAddress->getAttribute() == NO_ATTRIBUTE)
		mAddress = mAddress->appendAttribute(kTTSym_value);
	
	if (mDirectory = getDirectoryFrom(mAddress))
		return bindAddress();
	else
		return bindApplication();
}

TTErr TTReceiver::setEnable(const TTValue& newValue)
{
	TTNodePtr	aNode;
	TTObjectPtr anObject;
	TTAttributePtr	anAttribute = NULL;
	TTSymbolPtr	ttAttributeName;
	TTValue		data, v;
	TTErr		err;
	
	mEnable = newValue;
	
	// enable/disable listening (for Mirror object only)
	if (mNodesObserversCache) {
		
		if (!mNodesObserversCache->isEmpty()) {
			
			ttAttributeName = ToTTName(mAddress->getAttribute());
			
			// for each node of the selection
			for (mNodesObserversCache->begin(); mNodesObserversCache->end(); mNodesObserversCache->next()) {
				
				// get a node from the selection
				mNodesObserversCache->current().get(0,(TTPtr*)&aNode);
				
				// get the type and the attribute of the object
				if (anObject = aNode->getObject()) {
					
					err = anObject->findAttribute(ttAttributeName, &anAttribute); 
					
					if (!err) {
						
						if (anObject->getName() == TT("Mirror"))
							TTMirrorPtr(anObject)->enableListening(*anAttribute, mEnable);
					}
				}
			}
		}
	}
	
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
	TTNodeAddressPtr anAddress;
	TTSymbolPtr	ttAttributeName;
	TTValue		data, v;
	TTErr		err;
	
	if (mNodesObserversCache) {
		
		if (!mNodesObserversCache->isEmpty()) {
			
			ttAttributeName = ToTTName(mAddress->getAttribute());
			
			// for each node of the selection
			for (mNodesObserversCache->begin(); mNodesObserversCache->end(); mNodesObserversCache->next()) {
				
				// get a node from the selection
				mNodesObserversCache->current().get(0,(TTPtr*)&aNode);
				
				// get the value of the attribute
				if (anObject = aNode->getObject()) {
					
					err = anObject->getAttributeValue(ttAttributeName, data); 
					
					if (!err) {
						
						// output the address of the node (in case we use * inside the binded address)
						aNode->getAddress(&anAddress);
						anAddress = anAddress->appendAttribute(mAddress->getAttribute());
						
						// return the address
						v.clear();
						v.append(anAddress);
						
						if (mReturnAddressCallback)
							mReturnAddressCallback->notify(v, kTTValNONE);
						
						// return the value
						if (mReturnValueCallback)
							mReturnValueCallback->notify(data, kTTValNONE);
					}
					else
						return kTTErrGeneric;
				}
			}
			
			return kTTErrNone;
		}
	}
	
	return kTTErrGeneric;
}

TTErr TTReceiver::bindAddress()
{
	TTNodeAddressPtr anAddress;
	TTSymbolPtr		ttAttributeName;
	TTAttributePtr	anAttribute = NULL;
	TTObjectPtr		newObserver, o;
	TTList			aNodeList;
	TTNodePtr		aNode;
	TTValue			v, data, newElement;
	TTValuePtr		newBaton;
	TTErr			err;
	
	if (!mDirectory)
		return kTTErrGeneric;
	
	mNodesObserversCache = new TTList();
	
	// for any Attribute observation except created, destroyed
	ttAttributeName = ToTTName(mAddress->getAttribute());
	
	if ((ttAttributeName != kTTSym_created) && (ttAttributeName != kTTSym_destroyed))
	{
		// Look for node(s) into the directory
		err = mDirectory->Lookup(mAddress, aNodeList, &aNode);
		
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
					
					err = o->findAttribute(ttAttributeName, &anAttribute);
					
					if (!err) {
						
						newObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
						TTObjectInstantiate(TT("callback"), TTObjectHandle(&newObserver), kTTValNONE);
						
						newBaton = new TTValue(TTPtr(this));
						aNode->getAddress(&anAddress);
						newBaton->append(anAddress->appendAttribute(mAddress->getAttribute()));
						
						newObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
						newObserver->setAttributeValue(kTTSym_function, TTPtr(&TTReceiverAttributeCallback));
						
						newObserver->setAttributeValue(TT("owner"), TT("TTReceiver"));					// this is usefull only to debug
						
						anAttribute->registerObserverForNotifications(*newObserver);
						
						// memorize the node and his attribute observer
						newElement = (TTPtr)aNode;
						newElement.append((TTPtr)newObserver);
						mNodesObserversCache->appendUnique(newElement);
					}
				}
			}
		}
	}
	
	// observe any creation or destruction below the attr_name address
	mAddressObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), TTObjectHandle(&mAddressObserver), kTTValNONE);
	
	newBaton = new TTValue(TTPtr(this));
	newBaton->append(TTPtr(kTTSymEmpty));
	
	mAddressObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
	mAddressObserver->setAttributeValue(kTTSym_function, TTPtr(&TTReceiverDirectoryCallback));
	
	mAddressObserver->setAttributeValue(TT("owner"), TT("TTReceiver"));							// this is usefull only to debug
	
	mDirectory->addObserverForNotifications(mAddress, *mAddressObserver);
	
	return kTTErrNone;
}

TTErr TTReceiver::unbindAddress()
{
	TTValue				oldElement, v;
	TTNodePtr			aNode;
	TTObjectPtr			oldObserver, o;
	TTSymbolPtr			ttAttributeName;
	TTAttributePtr		anAttribute;
	TTErr				err = kTTErrNone;
	
	if (mAddress != kTTSymEmpty) {
		
		// stop attribute obeservation
		// for each node of the selection
		if (mNodesObserversCache) {
			
			ttAttributeName = ToTTName(mAddress->getAttribute());
			
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
					err = o->findAttribute(ttAttributeName, &anAttribute);
					
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
		if (mAddressObserver && mDirectory) {
			
			err = mDirectory->removeObserverForNotifications(mAddress, *mAddressObserver);
			
			if(!err) {
				delete (TTValuePtr)mAddressObserver->getBaton();
				TTObjectRelease(TTObjectHandle(&mAddressObserver));
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTReceiver::bindApplication() 
{
	TTValuePtr	newBaton;
	
	if (!mApplicationObserver) {
		
		mApplicationObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TT("callback"), TTObjectHandle(&mApplicationObserver), kTTValNONE);
		
		newBaton = new TTValue(TTPtr(this));
		
		mApplicationObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
		mApplicationObserver->setAttributeValue(kTTSym_function, TTPtr(&TTReceiverApplicationManagerCallback));
		
		mApplicationObserver->setAttributeValue(TT("owner"), TT("TTReceiver"));		// this is usefull only to debug
		
		return TTApplicationManagerAddApplicationObserver(mAddress->getDirectory(), *mApplicationObserver);
	}
	
	return kTTErrGeneric;
}

TTErr TTReceiver::unbindApplication() 
{
	TTErr err = kTTErrNone;
	
	if (mApplicationObserver) {
		
		err = TTApplicationManagerRemoveApplicationObserver(mAddress->getDirectory(), *mApplicationObserver);
		
		delete (TTValuePtr)mApplicationObserver->getBaton();
		TTObjectRelease(TTObjectHandle(&mApplicationObserver));
	}
	
	mDirectory = NULL;
	
	return kTTErrNone;
}

TTErr TTReceiverDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTReceiverPtr	aReceiver;
	TTNodeAddressPtr anAddress;
	TTSymbolPtr		ttAttributeName;
	TTAttributePtr	anAttribute = NULL;
	TTObjectPtr		newObserver, oldObserver, o;
	TTNodePtr		aNode, p_node;
	TTValue			c, address, v;
	TTUInt8			flag;
	TTBoolean		found;
	TTCallbackPtr	anObserver;
	TTValuePtr		newBaton;
	TTValue			newCouple;
	TTErr			err;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aReceiver);
	
	// Unpack data (oscAddress, aNode, flag, anObserver)
	data.get(0, &anAddress);
	data.get(1, (TTPtr*)&aNode);
	data.get(2, flag);
	data.get(3, (TTPtr*)&anObserver);
	
	// if address are not equal
	if (aReceiver->mAddress->compare(anAddress) != kAddressEqual)
		return kTTErrGeneric;
	
	ttAttributeName = ToTTName(aReceiver->mAddress->getAttribute());
	
	switch (flag) {
			
		case kAddressCreated :
		{
			
			if (ttAttributeName == kTTSym_created)
			{
				// return the address
				address.append(anAddress);
				if (aReceiver->mReturnAddressCallback)
					aReceiver->mReturnAddressCallback->notify(address, kTTValNONE);
			}
			else if (ttAttributeName != kTTSym_destroyed)
			{
				// is the observer already exist ?
				found = false;
				if (aReceiver->mNodesObserversCache){
					
					// for each node of the selection
					for(aReceiver->mNodesObserversCache->begin(); aReceiver->mNodesObserversCache->end(); aReceiver->mNodesObserversCache->next()) {
						
						// get the node of the couple
						aReceiver->mNodesObserversCache->current().get(0, (TTPtr*)&p_node);
						
						// compare it to the receive node
						if(p_node == aNode)
							found = true;
					}
				}
				
				if (!found)
				{
					// prepare the callback mecanism to
					// be notified about changing value attribute
					// if the attribute exist
					if (o = aNode->getObject()) {
						
						err = o->findAttribute(ttAttributeName, &anAttribute);
						
						if (!err) {
							
							newObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
							TTObjectInstantiate(TT("callback"), &newObserver, kTTValNONE);
							
							newBaton = new TTValue(TTPtr(aReceiver));
							newBaton->append(anAddress->appendAttribute(aReceiver->mAddress->getAttribute()));
							
							newObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
							newObserver->setAttributeValue(kTTSym_function, TTPtr(&TTReceiverAttributeCallback));
							
							newObserver->setAttributeValue(TT("owner"), TT("TTReceiver"));			// this is usefull only to debug
							
							anAttribute->registerObserverForNotifications(*newObserver);
							
							// memorize the node and his attribute observer
							newCouple = (TTPtr)aNode;
							newCouple.append((TTPtr)newObserver);
							aReceiver->mNodesObserversCache->appendUnique(newCouple);
						}
					}
				}
			}
			
			break;
		}
			
		case kAddressDestroyed :
		{
			if (ttAttributeName == kTTSym_destroyed)
			{
				// return the address
				address.append(anAddress);
				if (aReceiver->mReturnAddressCallback)
					aReceiver->mReturnAddressCallback->notify(address, kTTValNONE);
			}
			else if (ttAttributeName != kTTSym_created)
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
	TTNodeAddressPtr anAddress;
	TTValue			v;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aReceiver);
	b->get(1, &anAddress);
	
	if(aReceiver->mEnable) {
		
		// return the address
		v.append(anAddress);
		
		// return address
		if (aReceiver->mReturnAddressCallback)
			aReceiver->mReturnAddressCallback->notify(v, kTTValNONE);
		
		// return the value
		if (aReceiver->mReturnValueCallback)
			aReceiver->mReturnValueCallback->notify(data, kTTValNONE);
	}
	
	return kTTErrNone;
}

TTErr TTReceiverApplicationManagerCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTReceiverPtr	aReceiver;
	TTSymbolPtr		anApplicationName;
	TTApplicationPtr anApplication;
	TTValue			v;
	TTUInt8			flag;
	
	// unpack baton (a TTReceiverPtr)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aReceiver);
	
	// Unpack data (applicationName, application, flag, observer)
	data.get(0, &anApplicationName);
	data.get(1, (TTPtr*)&anApplication);
	data.get(2, flag);
	
	switch (flag) {
			
		case kApplicationAdded :
		{
			aReceiver->mDirectory = getDirectoryFrom(aReceiver->mAddress);
			aReceiver->bindAddress();
			break;
		}
			
		case kApplicationProtocolStarted :
		{
			aReceiver->setEnable(YES);
			break;
		}
			
		case kApplicationProtocolStopped :
		{
			aReceiver->setEnable(NO);
			break;
		}
			
		case kApplicationRemoved :
		{
			aReceiver->unbindAddress();
			break;
		}
			
		default:
			break;
	}
	
	return kTTErrNone;
}
