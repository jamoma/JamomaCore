/* 
 * A Container object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTContainer.h"

#define thisTTClass			TTContainer
#define thisTTClassName		"Container"
#define thisTTClassTags		"node, container"

TT_MODULAR_CONSTRUCTOR,
mAddress(kTTSymEmpty),
mPriority(0), 
mDescription(kTTSymEmpty),
mInitialized(NO),
mDirectory(NULL),
mReturnAddressCallback(NULL),
mReturnValueCallback(NULL),
mObjectsObserversCache(NULL),
mObserver(NULL)
{
	arguments.get(0, (TTPtr*)&mDirectory);
	TT_ASSERT("Directory passed to TTContainer is not NULL", mDirectory);
	
	if(arguments.getSize() == 3) {
		arguments.get(1, (TTPtr*)&mReturnAddressCallback);
		arguments.get(2, (TTPtr*)&mReturnValueCallback);
	}
	
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttribute(Priority, kTypeUInt8);
	addAttribute(Description, kTypeSymbol);
	
	addAttribute(Initialized, kTypeBoolean);
	addAttributeProperty(Initialised, readOnly, YES);

	addMessageWithArgument(send);
	
	mIsSending = false;	
}

TTContainer::~TTContainer()
{
	unbind();
	
	if (mReturnAddressCallback)
		TTObjectRelease(TTObjectHandle(&mReturnAddressCallback));
	
	if (mReturnValueCallback)
		TTObjectRelease(TTObjectHandle(&mReturnValueCallback));
}

TTErr TTContainer::send(TTValue& AddressAndValue)
{
	TTValue			cacheElement;
	TTValuePtr		valueToSend;
	TTObjectPtr		anObject;
	TTSymbolPtr		aRelativeAddress;
	TTErr			err;
	
	if (!mIsSending) {
		
		// lock
		mIsSending = true;
		
		if (mObjectsObserversCache) {
			
			// get relativeAddress and valueToSend
			AddressAndValue.get(0, &aRelativeAddress);
			AddressAndValue.get(1, (TTPtr*)&valueToSend);
				
			// get the Parameter object
			err = mObjectsObserversCache->lookup(aRelativeAddress, cacheElement);
			
			// if the relativeAddress is in the cache
			if (!err) {
				
				cacheElement.get(0, (TTPtr*)&anObject);
				
				// it is a Parameter
				if (anObject->getName() == TT("Parameter")) {
					// set the value attribute using a command
					anObject->sendMessage(kTTSym_command, *valueToSend);
				}
			}
			// if not use TTModularDirectory instead
			else {
				return kTTErrGeneric; // TODO : this would allow us to use * also
			}
				
			//TODO : send to other attribute ?
			
		}

		// unlock
		mIsSending = false;	
	}
	
	return kTTErrNone;
}

TTErr TTContainer::setAddress(const TTValue& value)
{	
	unbind();
	mAddress = value;
	return bind();
}

TTErr TTContainer::bind()
{
	TTNodePtr		aNode;
	TTValuePtr		newBaton;
	TTList			aNodeList, allObjectsNodes;
	TTValue			v;
	TTErr			err = kTTErrNone;
	
	mObjectsObserversCache  = new TTHash();
	
	// 1. Look for all Parameters under the address into the directory with the same Context
	err = mDirectory->Lookup(mAddress, aNodeList, &aNode);
	
	v.append(TT("Parameter"));
	v.append(TT("Container"));
	v.append(aNode->getContext());
	err = mDirectory->LookFor(&aNodeList, TTContainerTestObjectAndContext, &v, allObjectsNodes, &aNode);
	
	// 2. make a cache containing each relativeAddress : Parameter and Observer
	for (allObjectsNodes.begin(); allObjectsNodes.end(); allObjectsNodes.next()) {
		
		allObjectsNodes.current().get(0, (TTPtr*)&aNode);
		makeCacheElement(aNode);
	}
	
	// 3. Observe any creation or destruction below the address
	mObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &mObserver, kTTValNONE);
	
	newBaton = new TTValue(TTPtr(this));
	newBaton->append(TTPtr(aNode->getContext()));
	
	mObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
	mObserver->setAttributeValue(TT("Function"), TTPtr(&TTContainerDirectoryCallback));
	
	mObserver->setAttributeValue(TT("Owner"), TT("TTContainer"));		// this is usefull only to debug
	
	mDirectory->addObserverForNotifications(mAddress, *mObserver);
	
	// 4. Check if all cache elements are initialized
	isInitialized();
	
	return kTTErrNone;
}

TTErr TTContainer::makeCacheElement(TTNodePtr aNode)
{
	TTValue			cacheElement, v;
	TTSymbolPtr		aRelativeAddress;
	TTObjectPtr		anObject, newObserver;
	TTAttributePtr	anAttribute = NULL;
	TTValuePtr		newBaton;
	
	// process the relative address
	aNode->getOscAddress(&aRelativeAddress, mAddress);
	
	// add Parameter or Container to the cacheElement
	anObject = aNode->getObject();
	cacheElement.append((TTPtr)anObject);
	
	// it is a Parameter
	if (anObject->getName() == TT("Parameter")) {
		
		// create a Value Attribute observer on it
		anObject->findAttribute(kTTSym_Value, &anAttribute);
		
		newObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TT("Callback"), &newObserver, kTTValNONE);
		
		newBaton = new TTValue(TTPtr(this));
		newBaton->append(aRelativeAddress);
		
		newObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
		newObserver->setAttributeValue(TT("Function"), TTPtr(&TTContainerValueAttributeCallback));
		newObserver->setAttributeValue(TT("Owner"), TT("TTContainer"));					// this is usefull only to debug
		
		anAttribute->registerObserverForNotifications(*newObserver);
		
		// add observer to the cacheElement
		cacheElement.append((TTPtr)newObserver);
	}
	// add NULL to the cacheElement
	else
		cacheElement.append(NULL);

	// create an Initialized Attribute Observer on it
	anObject->findAttribute(kTTSym_Initialized, &anAttribute);
	
	newObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &newObserver, kTTValNONE);
	
	newBaton = new TTValue(TTPtr(this));
	newBaton->append(aRelativeAddress);
	
	newObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
	newObserver->setAttributeValue(TT("Function"), TTPtr(&TTContainerInitializedAttributeCallback));
	newObserver->setAttributeValue(TT("Owner"), TT("TTContainer"));					// this is usefull only to debug
	
	anAttribute->registerObserverForNotifications(*newObserver);
	
	// add observer to the cacheElement
	cacheElement.append((TTPtr)newObserver);
	
	// append the cacheElement to the cache hash table
	mObjectsObserversCache->append(aRelativeAddress, cacheElement);
	
	return kTTErrNone;
}

TTErr TTContainer::deleteCacheElement(TTNodePtr aNode)
{
	TTSymbolPtr		aRelativeAddress;
	TTValue			cacheElement;
	TTObjectPtr		anObject, aValueObserver, anInitObserver;
	TTAttributePtr	anAttribute;
	TTErr			err;
	
	// process the relative address
	aNode->getOscAddress(&aRelativeAddress, mAddress);
	
	// delete attribute observers
	err = mObjectsObserversCache->lookup(aRelativeAddress, cacheElement);
	
	if (!err) {
		cacheElement.get(0, (TTPtr*)&anObject);
		
		// it is a Parameter
		if (anObject->getName() == TT("Parameter")) {
			
			// delete Value observer
			cacheElement.get(1, (TTPtr*)&aValueObserver);
			anAttribute = NULL;
			err = anObject->findAttribute(kTTSym_Value, &anAttribute);
			
			if(!err){
				
				err = anAttribute->unregisterObserverForNotifications(*aValueObserver);
				
				if(!err)
					TTObjectRelease(&aValueObserver);
			}
		}
		
		// delete Initialized observer
		cacheElement.get(2, (TTPtr*)&anInitObserver);
		anAttribute = NULL;
		err = anObject->findAttribute(kTTSym_Initialized, &anAttribute);
		
		if(!err){
			
			err = anAttribute->unregisterObserverForNotifications(*anInitObserver);
			
			if(!err)
				TTObjectRelease(&anInitObserver);
		}
	}

	// remove cacheParameter
	return mObjectsObserversCache->remove(aRelativeAddress);
}

TTErr TTContainer::unbind()
{
	TTValue			hk, v;
	TTValue			cacheElement;
	TTObjectPtr		anObject, aValueObserver, anInitObserver;
	TTAttributePtr	anAttribute;
	TTSymbolPtr		key;
	TTUInt8			i;
	TTErr			err;
	
	// delete all attribute observers of mParametersObserversCache
	if (mObjectsObserversCache) {
		
		mObjectsObserversCache->getKeys(hk);
		
		for (i=0; i<mObjectsObserversCache->getSize(); i++) {
			
			hk.get(i,(TTSymbolPtr*)&key);
			mObjectsObserversCache->lookup(key, cacheElement);
			cacheElement.get(0, (TTPtr*)&anObject);
			
			// it is a Parameter
			if (anObject->getName() == TT("Parameter")) {
				
				// delete Value observer
				cacheElement.get(1, (TTPtr*)&aValueObserver);
				anAttribute = NULL;
				err = anObject->findAttribute(kTTSym_Value, &anAttribute);
				
				if(!err){
					
					err = anAttribute->unregisterObserverForNotifications(*aValueObserver);
					
					if(!err)
						TTObjectRelease(&aValueObserver);
				}
			}
			
			// delete Initialized observer
			cacheElement.get(2, (TTPtr*)&anInitObserver);
			anAttribute = NULL;
			err = anObject->findAttribute(kTTSym_Initialized, &anAttribute);
			
			if(!err){
				
				err = anAttribute->unregisterObserverForNotifications(*aValueObserver);
				
				if(!err)
					TTObjectRelease(&anInitObserver);
			}
		}
		
		delete mObjectsObserversCache;
	}
	
	// stop life cycle observation
	if (mObserver && mDirectory) {
		
		err = mDirectory->removeObserverForNotifications(mAddress, *mObserver);
		
		if(!err)
			TTObjectRelease(&mObserver);
	}
	
	mAddress = kTTSymEmpty;
	
	return kTTErrNone;
}

TTErr TTContainer::isInitialized()
{
	TTAttributePtr	anAttribute = NULL;
	TTValue			hk, v;
	TTValue			cacheElement;
	TTObjectPtr		anObject;
	TTBoolean		init, result;
	TTSymbolPtr		key;
	TTUInt8			i;
	TTErr			err;
	
	// check all initialization states
	result = YES;
	if (mObjectsObserversCache) {
		
		mObjectsObserversCache->getKeys(hk);
		
		for (i=0; i<mObjectsObserversCache->getSize(); i++) {
			
			hk.get(i,(TTSymbolPtr*)&key);
			mObjectsObserversCache->lookup(key, cacheElement);
			cacheElement.get(0, (TTPtr*)&anObject);
			anObject->getAttributeValue(kTTSym_Initialized, v);
			v.get(0, init);
			
			result &= init;
			
			if (!result)
				break;
		}
	}
	
	// set mInitilized if it changes and notify observers
	if (result != mInitialized) {
		mInitialized = result;
		err = this->findAttribute(kTTSym_Initialized, &anAttribute);
		
		if (!err)
			anAttribute->sendNotification(kTTSym_notify, mInitialized);	// we use kTTSym_notify because we know that observers are TTCallback
	}
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTContainerDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTValue			arg;
	TTContainerPtr	aContainer;
	TTPtr			hisContext;
	TTCallbackPtr	anObserver;
	TTNodePtr		aNode;
	TTSymbolPtr		anAddress;
	TTUInt8			flag;
	
	// unpack baton (a TTContainerPtr, his Context)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aContainer);
	b->get(1, (TTPtr*)&hisContext);
	
	// Unpack data (oscAddress, aNode, flag, anObserver)
	data.get(0, &anAddress);
	data.get(1, (TTPtr*)&aNode);
	data.get(2, flag);
	data.get(3, (TTPtr*)&anObserver);
	
	// Prepare argument
	arg.append(TT("Parameter"));
	arg.append(TT("Container"));
	arg.append(hisContext);
	
	switch (flag) {

		case kAddressCreated :
		{
			if (TTContainerTestObjectAndContext(aNode, &arg))
			   aContainer->makeCacheElement(aNode);
			
			break;
		}
			
		case kAddressDestroyed :
		{
			if (TTContainerTestObjectAndContext(aNode, &arg)) 
				 aContainer->deleteCacheElement(aNode);
			
			break;
		}
			
		default:
			break;
	}
	
	return kTTErrNone;
}

TTErr TTContainerValueAttributeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTContainerPtr	aContainer;
	TTSymbolPtr		relativeAddress;
	TTValue			address;
		
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aContainer);
	b->get(1, &relativeAddress);
	
	if (aContainer->mReturnAddressCallback && aContainer->mReturnValueCallback) {
		// return the address
		address.append(relativeAddress);
		aContainer->mReturnAddressCallback->notify(address);
		
		// return the value
		aContainer->mReturnValueCallback->notify(data);
	}
	else
		return kTTErrGeneric;
	
	return kTTErrNone;
}

TTErr TTContainerInitializedAttributeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTContainerPtr	aContainer;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aContainer);
	
	// Check if all cache elements are initialized
	aContainer->isInitialized();
	
	return kTTErrNone;
}

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTBoolean TTContainerTestObjectAndContext(TTNodePtr n, TTPtr args)
{
	TTValue		v;
	TTValuePtr	av;
	TTPtr		c, t_c, p_c;
	TTObjectPtr o;
	TTSymbolPtr parameter, container;
	
	av = (TTValuePtr)args;
	av->get(0, &parameter);
	av->get(1, &container);
	av->get(2, (TTPtr*)&t_c);
	
	o = n->getObject();
	c = n->getContext();
	p_c = n->getParent()->getContext();
	
	if (o && c)
		// Keep only Parameter from our context or Container of the context below 
		// TO TEST : filtering Containers which are not just below this Container ?
		// get the Context of his parent and compare it to our context : it should be equal...
		return (o->getName() == parameter && c == t_c) || (o->getName() == container && c != t_c && p_c == t_c);
	else
		return NO;
}
