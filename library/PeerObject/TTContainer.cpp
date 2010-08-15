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
mDirectory(NULL),
mReturnAddressCallback(NULL),
mReturnValueCallback(NULL),
mParametersObserversCache(NULL),
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
	TTObjectPtr		aParameter;
	TTSymbolPtr		aRelativeAddress;
	TTErr			err;
	
	if (!mIsSending) {
		
		// lock
		mIsSending = true;
		
		if (mParametersObserversCache) {
			
			// get relativeAddress and valueToSend
			AddressAndValue.get(0, &aRelativeAddress);
			AddressAndValue.get(1, (TTPtr*)&valueToSend);
				
			// get the Parameter object
			err = mParametersObserversCache->lookup(aRelativeAddress, cacheElement);
			
			// if the relativeAddress is in the cache
			if (!err) {
				
				cacheElement.get(0, (TTPtr*)&aParameter);
				
				// set the value attribute using a command
				aParameter->sendMessage(kTTSym_command, *valueToSend);
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
	TTList			aNodeList, allParametersNodes;
	TTValue			v;
	TTErr			err = kTTErrNone;
	
	mParametersObserversCache  = new TTHash();
	
	// 1. Look for all Parameters under the address into the directory with the same Context
	err = mDirectory->Lookup(mAddress, aNodeList, &aNode);
	
	v.append(TT("Parameter"));
	v.append(aNode->getContext());
	err = mDirectory->LookFor(&aNodeList, TTContainerTestObjectAndContext, &v, allParametersNodes, &aNode);
	
	// 2. make a cache containing each relativeAddress : Parameter and Observer
	for (allParametersNodes.begin(); allParametersNodes.end(); allParametersNodes.next()) {
		
		allParametersNodes.current().get(0, (TTPtr*)&aNode);
		makeCacheElement(aNode);
	}
	
	// 3. Observe any creation or destruction below the address
	mObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &mObserver, kTTValNONE);
	
	newBaton = new TTValue(TTPtr(this));
	newBaton->append(TTPtr(kTTSymEmpty));
	
	mObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
	mObserver->setAttributeValue(TT("Function"), TTPtr(&TTContainerDirectoryCallback));
	
	mObserver->setAttributeValue(TT("Owner"), TT("TTContainer"));		// this is usefull only to debug
	
	mDirectory->addObserverForNotifications(mAddress, *mObserver);
	
	return kTTErrNone;
}

TTErr TTContainer::makeCacheElement(TTNodePtr aNode)
{
	TTValue			cacheElement;
	TTSymbolPtr		aRelativeAddress;
	TTObjectPtr		aParameter, newObserver;
	TTAttributePtr	anAttribute = NULL;
	TTValuePtr		newBaton;
	
	// process the relative address
	aNode->getOscAddress(&aRelativeAddress, mAddress);
	
	// add parameter to the cacheElement
	aParameter= aNode->getObject();
	cacheElement.append((TTPtr)aParameter);
	
	// create a Value Attribute observer on it
	aParameter->findAttribute(kTTSym_Value, &anAttribute);
	
	newObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &newObserver, kTTValNONE);
	
	newBaton = new TTValue(TTPtr(this));
	newBaton->append(aRelativeAddress);
	
	newObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
	newObserver->setAttributeValue(TT("Function"), TTPtr(&TTContainerAttributeCallback));
	newObserver->setAttributeValue(TT("Owner"), TT("TTContainer"));					// this is usefull only to debug
	
	anAttribute->registerObserverForNotifications(*newObserver);
	
	// add observer to the cacheElement
	cacheElement.append((TTPtr)newObserver);
	
	// append the cacheElement to the cache hash table
	mParametersObserversCache->append(aRelativeAddress, cacheElement);
	
	return kTTErrNone;
}

TTErr TTContainer::deleteCacheElement(TTNodePtr aNode)
{
	TTSymbolPtr		aRelativeAddress;
	TTValue			cacheElement;
	TTObjectPtr		aParameter, anObserver;
	TTAttributePtr	anAttribute;
	TTErr			err;
	
	// process the relative address
	aNode->getOscAddress(&aRelativeAddress, mAddress);
	
	// delete attribute observer
	err = mParametersObserversCache->lookup(aRelativeAddress, cacheElement);
	
	if (!err) {
		cacheElement.get(0, (TTPtr*)&aParameter);
		cacheElement.get(1, (TTPtr*)&anObserver);
		
		anAttribute = NULL;
		err = aParameter->findAttribute(kTTSym_Value, &anAttribute);
		
		if(!err){
			
			err = anAttribute->unregisterObserverForNotifications(*anObserver);
			
			if(!err)
				TTObjectRelease(&anObserver);
		}
	}

	// remove cacheParameter
	return mParametersObserversCache->remove(aRelativeAddress);
}

TTErr TTContainer::unbind()
{
	TTValue			hk, v;
	TTValue			cacheElement;
	TTObjectPtr		aParameter, anObserver;
	TTAttributePtr	anAttribute;
	TTSymbolPtr		key;
	TTUInt8			i;
	TTErr			err;
	
	// delete all attribute observers of mParametersObserversCache
	if (mParametersObserversCache) {
		
		mParametersObserversCache->getKeys(hk);
		
		for (i=0; i<mParametersObserversCache->getSize(); i++) {
			
			hk.get(i,(TTSymbolPtr*)&key);
			mParametersObserversCache->lookup(key, cacheElement);
			cacheElement.get(0, (TTPtr*)&aParameter);
			cacheElement.get(1, (TTPtr*)&anObserver);
			
			anAttribute = NULL;
			err = aParameter->findAttribute(kTTSym_Value, &anAttribute);
			
			if(!err){
				
				err = anAttribute->unregisterObserverForNotifications(*anObserver);
				
				if(!err)
					TTObjectRelease(&anObserver);
			}
		}
		
		delete mParametersObserversCache;
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

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTContainerDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTContainerPtr	aContainer;
	TTCallbackPtr	anObserver;
	TTNodePtr		aNode;
	TTSymbolPtr		anAddress;
	TTUInt8			flag;
	
	// unpack baton (a TTContainerPtr)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aContainer);
	
	// Unpack data (oscAddress, aNode, flag, anObserver)
	data.get(0, &anAddress);
	data.get(1, (TTPtr*)&aNode);
	data.get(2, flag);
	data.get(3, (TTPtr*)&anObserver);
	
	switch (flag) {
			
		case kAddressCreated :
		{
			if (testNodeObjectType(aNode, TT("Parameter")))
			   aContainer->makeCacheElement(aNode);
			
			break;
		}
			
		case kAddressDestroyed :
		{
			if (testNodeObjectType(aNode, TT("Parameter"))) 
				 aContainer->deleteCacheElement(aNode);
			
			break;
		}
			
		default:
			break;
	}
	
	return kTTErrNone;
}

TTErr TTContainerAttributeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTContainerPtr	aContainer;
	TTSymbolPtr		oscAddress;
	TTValue			address;
		
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aContainer);
	b->get(1, &oscAddress);
	
	if (aContainer->mReturnAddressCallback && aContainer->mReturnValueCallback) {
		// return the address
		address.append(oscAddress);
		aContainer->mReturnAddressCallback->notify(address);
		
		// return the value
		aContainer->mReturnValueCallback->notify(data);
	}
	else
		return kTTErrGeneric;
	
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
	TTPtr		c, t_c;
	TTObjectPtr o;
	TTSymbolPtr t;
	
	av = (TTValuePtr)args;
	av->get(0, &t);
	av->get(1, (TTPtr*)&t_c);
	
	o = n->getObject();
	c = n->getContext();
	
	if (o && c)
		return o->getName() == t && c == t_c;
	else
		return NO;
}
