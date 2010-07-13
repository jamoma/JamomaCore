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
mDescription(""),
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
	addAttribute(Description, kTypeString);

	addMessageWithArgument(send);
	
	mIsSending = false;	
}

TTContainer::~TTContainer()
{
	unbind();
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
				aParameter->sendMessage(kTTSym_Command, *valueToSend);
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
	
	// 1. Look for all Parameters under the address into the directory
	err = mDirectory->Lookup(mAddress, aNodeList, &aNode);
	err = mDirectory->LookFor(&aNodeList, testObjectType, TT("Parameter"), allParametersNodes, &aNode);
	
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
	TTSymbolPtr		anAddress, returnedPart1, aRelativeAddress;
	TTObjectPtr		aParameter, newObserver;
	TTString		addSlash;
	TTAttributePtr	anAttribute = NULL;
	TTValuePtr		newBaton;
	TTValue			v;
	TTUInt8			nbSeparator;
	
	// process the relative address
	if (mAddress == S_SEPARATOR)
		nbSeparator = 0;
	else
		nbSeparator = countSeparator(mAddress);
	aNode->getOscAddress(&anAddress);
	splitAtOSCAddress(anAddress, nbSeparator, &returnedPart1, &aRelativeAddress);
	addSlash = C_SEPARATOR;
	addSlash += aRelativeAddress->getCString();
	aRelativeAddress = TT(addSlash.data());
	
	// add parameter to the cacheElement
	aNode->getAttributeValue(kTTSym_Object, v);
	v.get(0, (TTPtr*)&aParameter);
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

TTErr TTContainer::deleteCacheElement(TTSymbolPtr anAddress)
{
	TTSymbolPtr		returnedPart1, aRelativeAddress;
	TTValue			v;
	TTString		addSlash;
	TTValue			cacheElement;
	TTObjectPtr		aParameter, anObserver;
	TTAttributePtr	anAttribute;
	TTUInt8			nbSeparator;
	TTErr			err;
	
	// process the relative address
	if (mAddress == S_SEPARATOR)
		nbSeparator = 0;
	else
		nbSeparator = countSeparator(mAddress);
	splitAtOSCAddress(anAddress, nbSeparator, &returnedPart1, &aRelativeAddress);
	addSlash = C_SEPARATOR;
	addSlash += aRelativeAddress->getCString();
	aRelativeAddress = TT(addSlash.data());
	
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
			if (testObjectType(aNode, TT("Parameter")))
			   aContainer->makeCacheElement(aNode);
			
			break;
		}
			
		case kAddressDestroyed :
		{
			if (testObjectType(aNode, TT("Parameter"))) 
				 aContainer->deleteCacheElement(anAddress);
			
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


TTBoolean testObjectType(TTNodePtr n, void*args)
{
	TTValue		v;
	TTObjectPtr o;
	n->getAttributeValue(kTTSym_Object, v);
	v.get(0, (TTPtr*)&o);
	
	return o->getName() == (TTSymbolPtr)args;
}

