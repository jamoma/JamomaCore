/* 
 * A Receiver Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTReceiver.h"

#define thisTTClass			TTReceiver
#define thisTTClassName		"Receiver"
#define thisTTClassTags		"node, receiver"

TT_MODULAR_CONSTRUCTOR,
mDirectory(NULL),
mAddress(kTTSymEmpty),
mAttribute(kTTSym_value),
mEnable(YES),
mReturnAddressCallback(NULL),
mReturnValueCallback(NULL),
mObserver(NULL),
mNodesObserversCache(NULL)
{
	TT_ASSERT("Correct number of args to create TTReceiver", arguments.getSize() == 5);
	
	arguments.get(0, (TTPtr*)&mDirectory);
	TT_ASSERT("Directory passed to TTReceiver is not NULL", mDirectory);
	arguments.get(1, &mAddress);
	arguments.get(2, &mAttribute);
	arguments.get(3, (TTPtr*)&mReturnAddressCallback);
	TT_ASSERT("Return Address Callback passed to TTReceiver is not NULL", mReturnAddressCallback);
	arguments.get(4, (TTPtr*)&mReturnValueCallback);
	TT_ASSERT("Return Value Callback passed to TTReceiver is not NULL", mReturnValueCallback);
	
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttributeWithSetter(Attribute, kTypeSymbol);
	addAttributeWithSetter(Enable, kTypeBoolean);
	
	addMessage(get);
	
	if	(mDirectory && mReturnAddressCallback && mReturnValueCallback)
		bind();
}

TTReceiver::~TTReceiver()
{
	unbind();
}

TTErr TTReceiver::setAddress(const TTValue& newValue)
{
	unbind();
	mAddress = newValue;
	bind();
	return kTTErrNone;
}

TTErr TTReceiver::setAttribute(const TTValue& newValue)
{
	mAttribute = newValue;
	
	if (mAttribute == NO_ATTRIBUTE)
		mAttribute = kTTSym_value;
	
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

TTErr TTReceiver::get()
{
	TTNodePtr	aNode;
	TTSymbolPtr	oscAddress;
	TTString	fullAddress;
	TTValue		address;
	TTValue		data;
	TTErr		err;
	
	if (!mNodesObserversCache->isEmpty()) {
		
		// for each node of the selection
		for (mNodesObserversCache->begin(); mNodesObserversCache->end(); mNodesObserversCache->next()) {
			
			// get a node from the selection
			mNodesObserversCache->current().get(0,(TTPtr*)&aNode);
			
			// get the value of the attribute
			err = aNode->getAttributeValue(mAttribute, data);
			
			if (!err) {
				
				// output the OSCAddress of the node (in case we use * inside the x->attrname)
				aNode->getOscAddress(&oscAddress);
				fullAddress = oscAddress->getCString();
				if (mAttribute != kTTSym_value) {
					fullAddress += C_PROPERTY;
					fullAddress += mAttribute->getCString();
				}
				
				// return the address
				address.append(TT(fullAddress.data()));
				this->mReturnAddressCallback->notify(address);
				
				// return the value
				this->mReturnValueCallback->notify(data);
			}
			else
				;// TODO : error "%s doesn't exist"
		}
	}
	
	return kTTErrNone;
}

TTErr TTReceiver::bind()
{
	TTSymbolPtr		oscAddress;
	TTAttributePtr	anAttribute = NULL;
	TTObjectPtr		newObserver, o;
	TTList			aNodeList;
	TTNodePtr		aNode;
	TTValue			v;
	TTValuePtr		newBaton, newCouple;
	TTErr			err = kTTErrNone;
	
	mNodesObserversCache = new TTList();
	
	// for any Attribute observation except created, destroyed and initialized
	if ((mAttribute != kTTSym_created) && (mAttribute != kTTSym_destroyed) && (mAttribute != kTTSym_initialized))
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
				aNode->getAttributeValue(kTTSym_Object, v);
				v.get(0, (TTPtr*)&o);
				err = o->findAttribute(mAttribute, &anAttribute);
				
				if (!err) {
					
					newObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
					TTObjectInstantiate(TT("Callback"), &newObserver, kTTValNONE);
					
					newBaton = new TTValue(TTPtr(this));
					aNode->getOscAddress(&oscAddress);
					newBaton->append(oscAddress);
					
					newObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
					newObserver->setAttributeValue(TT("Function"), TTPtr(&TTReceiverAttributeCallback));
					
					newObserver->setAttributeValue(TT("Owner"), TT("TTReceiver"));					// this is usefull only to debug
					
					anAttribute->registerObserverForNotifications(*newObserver);
					
					// memorize the node and his attribute observer
					newCouple = new TTValue((TTPtr)aNode);
					newCouple->append((TTPtr)newObserver);
					mNodesObserversCache->appendUnique(newCouple);
				}
			}
		}
		
		// 3. observe any creation or destruction below the attr_name address
		mObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TT("Callback"), &mObserver, kTTValNONE);
		
		newBaton = new TTValue(TTPtr(this));
		newBaton->append(TTPtr(kTTSymEmpty));
		
		mObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
		mObserver->setAttributeValue(TT("Function"), TTPtr(&TTReceiverDirectoryCallback));
		
		mObserver->setAttributeValue(TT("Owner"), TT("TTReceiver"));							// this is usefull only to debug
		
		mDirectory->addObserverForNotifications(mAddress, *mObserver);
	}

	return kTTErrNone;
}

TTErr TTReceiver::unbind()
{
	TTValue			c, v;
	TTNodePtr		p_node;
	TTObjectPtr		oldObserver, o;
	TTAttributePtr	anAttribute;
	TTErr			err = kTTErrNone;
	
	// stop attribute obeservation
	// for each node of the selection
	if (mNodesObserversCache) {
		for (mNodesObserversCache->begin(); mNodesObserversCache->end(); mNodesObserversCache->next()){
			
			// get a couple
			c = mNodesObserversCache->current();
			
			// get the node of the couple
			c.get(0, (TTPtr*)&p_node);
			
			// get the observer of the couple
			c.get(1, (TTPtr*)&oldObserver);
			
			// stop attribute observation of the node
			// if the attribute exist
			p_node->getAttributeValue(kTTSym_Object, v);
			v.get(0, (TTPtr*)&o);
			anAttribute = NULL;
			err = o->findAttribute(mAttribute, &anAttribute);
			
			if(!err){
				
				err = anAttribute->unregisterObserverForNotifications(*oldObserver);
				
				if(!err)
					TTObjectRelease(&oldObserver);
			}
			
			// forget this couple
			mNodesObserversCache->remove(c);
		}
	
		delete mNodesObserversCache;
		mNodesObserversCache = NULL;
	}
	
	// stop life cycle observation
	if (mObserver && mDirectory) {
		
		err = mDirectory->removeObserverForNotifications(mAddress, *mObserver);
		
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
	long			flag;
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
	
	switch (flag) {
			
		case kAddressCreated :
		{
			
			if (aReceiver->mAttribute == kTTSym_created)
			{
				// return the address
				address.append(oscAddress);
				aReceiver->mReturnAddressCallback->notify(address);
			}
			else if ( (aReceiver->mAttribute != kTTSym_destroyed) && (aReceiver->mAttribute != kTTSym_initialized) )
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
					aNode->getAttributeValue(kTTSym_Object, v);
					v.get(0, (TTPtr*)&o);
					err = o->findAttribute(aReceiver->mAttribute, &anAttribute);
					
					if (!err) {
						
						newObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
						TTObjectInstantiate(TT("Callback"), &newObserver, kTTValNONE);
						
						newBaton = new TTValue(TTPtr(aReceiver));
						newBaton->append(oscAddress);
						
						newObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
						newObserver->setAttributeValue(TT("Function"), TTPtr(&TTReceiverAttributeCallback));
						
						newObserver->setAttributeValue(TT("Owner"), TT("TTReceiver"));			// this is usefull only to debug
						
						anAttribute->registerObserverForNotifications(*newObserver);
						
						// memorize the node and his attribute observer
						newCouple = new TTValue((TTPtr)aNode);
						newCouple->append((TTPtr)newObserver);
						aReceiver->mNodesObserversCache->appendUnique(newCouple);
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
				aReceiver->mReturnAddressCallback->notify(address);
			}
			else if ( (aReceiver->mAttribute != kTTSym_created) && (aReceiver->mAttribute != kTTSym_initialized) )
			{
				// look at the node among memorized <node, observer>
					
					// for each node of the selection
					for(aReceiver->mNodesObserversCache->begin(); aReceiver->mNodesObserversCache->end(); aReceiver->mNodesObserversCache->next()){
						
						// get a couple
						c = aReceiver->mNodesObserversCache->current();
						
						// get the node of the couple
						c.get(0, (TTPtr*)&p_node);
						
						// compare it to the receive node
						if(p_node == aNode){
							
							// get the observer of the couple
							c.get(1, (TTPtr*)&oldObserver);
							
							// destroy the observer (don't need to unregister because the object is destroyed...)
							TTObjectRelease(&oldObserver);
							
							// forget this couple
							aReceiver->mNodesObserversCache->remove(c);
						}
					}
			}
			break;
		}
			
		case kAddressInitialized :
		{

			if(aReceiver->mAttribute == kTTSym_initialized)
			{
				// return the address
				address.append(oscAddress);
				aReceiver->mReturnAddressCallback->notify(address);
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
	TTSymbolPtr		oscAddress;
	TTValue			address;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aReceiver);
	b->get(1, &oscAddress);
	
	if(aReceiver->mEnable) {
		
		// return the address
		address.append(oscAddress);
		aReceiver->mReturnAddressCallback->notify(address);
											  
		// return the value
		aReceiver->mReturnValueCallback->notify(data);
	}
	
	return kTTErrNone;
}