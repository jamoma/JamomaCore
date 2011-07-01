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
mObserver(NULL),
mNodesObserversCache(NULL)
{
	TTNodeAddressPtr anAddress;
	
	TT_ASSERT("Correct number of args to create TTReceiver", arguments.getSize() == 3);
	
	if (arguments.getSize() >= 2)
		arguments.get(1, (TTPtr*)&mReturnAddressCallback);
	
	if (arguments.getSize() >= 3)
		arguments.get(2, (TTPtr*)&mReturnValueCallback);
	
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttributeWithSetter(Enable, kTypeBoolean);
	
	addMessage(Get);
	addMessageProperty(Get, hidden, YES);
	
	mNodesObserversCache = new TTList();
	
	if (arguments.getSize() >= 1) {
		arguments.get(0, &anAddress);
		setAddress(anAddress);
	}
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
	TTNodeAddressPtr anAddress;
	TTSymbolPtr	ttAttributeName;
	TTValue		data, v;
	TTErr		err;
	
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
					v.append(anAddress);
					
					if (mReturnAddressCallback)
						mReturnAddressCallback->notify(v);
					
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
	mObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), TTObjectHandle(&mObserver), kTTValNONE);
	
	newBaton = new TTValue(TTPtr(this));
	newBaton->append(TTPtr(kTTSymEmpty));
	
	mObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
	mObserver->setAttributeValue(kTTSym_function, TTPtr(&TTReceiverDirectoryCallback));
	
	mObserver->setAttributeValue(TT("owner"), TT("TTReceiver"));							// this is usefull only to debug
	
	mDirectory->addObserverForNotifications(mAddress, *mObserver);
	
	return kTTErrNone;
}

TTErr TTReceiver::unbind()
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
		if (mObserver && mDirectory) {
			
			err = mDirectory->removeObserverForNotifications(mAddress, *mObserver);
			
			if(!err) {
				delete (TTValuePtr)mObserver->getBaton();
				TTObjectRelease(TTObjectHandle(&mObserver));
			}
		}
	}
	
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
					aReceiver->mReturnAddressCallback->notify(address);
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
					aReceiver->mReturnAddressCallback->notify(address);
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
			aReceiver->mReturnAddressCallback->notify(v);
		
		// return the value
		if (aReceiver->mReturnValueCallback)
			aReceiver->mReturnValueCallback->notify(data);
	}
	
	return kTTErrNone;
}