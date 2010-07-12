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
mParametersCache(NULL),
mObserver(NULL)
{
	
	TT_ASSERT("Correct number of args to create TTContainer", arguments.getSize() == 4);
	
	arguments.get(0, (TTPtr*)&mDirectory);
	TT_ASSERT("Directory passed to TTContainer is not NULL", mDirectory);
	arguments.get(1, &mAddress);
	arguments.get(2, (TTPtr*)&mReturnAddressCallback);
	TT_ASSERT("Return Address Callback passed to TTContainer is not NULL", mReturnAddressCallback);
	arguments.get(3, (TTPtr*)&mReturnValueCallback);
	TT_ASSERT("Return Value Callback passed to TTContainer is not NULL", mReturnValueCallback);
	
	addAttribute(Priority, kTypeUInt8);
	addAttribute(Description, kTypeString);

}

TTContainer::~TTContainer()
{
	;
}

TTErr TTContainer::bind()
{
	TTNodePtr		aNode;
	TTValuePtr		newBaton, cacheParameter;
	TTList			aNodeList, allParametersNodes;
	TTValue			v;
	
	TTErr		err = kTTErrNone;
	
	// 1. Look for all Parameters under the address into the directory
	err = mDirectory->Lookup(mAddress, aNodeList, &aNode);
	err = mDirectory->LookFor(&aNodeList, testObjectType, TT("Parameter"), allParametersNodes, &aNode);
	
	// 2. make a cache containing each relativeAddress : Parameter and Observer
	mParametersCache  = new TTHash();
	for (allParametersNodes.begin(); allParametersNodes.end(); allParametersNodes.next()) {
		
		allParametersNodes.current().get(0, (TTPtr*)&aNode);
		makeCacheParameter(aNode, cacheParameter);
	}
	
	// 3. Observe any creation or destruction below the address
	mObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &mObserver, kTTValNONE);
	
	newBaton = new TTValue(TTPtr(this));
	newBaton->append(TTPtr(kTTSymEmpty));
	
	mObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
	mObserver->setAttributeValue(TT("Function"), TTPtr(&TTSenderDirectoryCallback));
	
	mObserver->setAttributeValue(TT("Owner"), TT("TTContainer"));		// this is usefull only to debug
	
	mDirectory->addObserverForNotifications(mAddress, *mObserver);
	
	return err;
}

TTErr TTContainer::makeCacheParameter(TTNodePtr aNode, TTValuePtr cacheParameter)
{
	TTSymbolPtr		anAddress, aRelativeAddress;
	TTObjectPtr		aParameter, newObserver;	
	TTAttributePtr	anAttribute = NULL;
	TTValuePtr		newBaton;
	TTValue			v;
	
	// process the relative address
	aNode->getOscAddress(&anAddress);
	aRelativeAddress = anAddress; // TODO
	
	// get the TTParameter object
	aNode->getAttributeValue(kTTSym_Object, v);
	v.get(0, (TTPtr*)&aParameter);
	cacheParameter = new TTValue((TTPtr)aParameter);
	
	// create a value Attribute observer on it
	aParameter->findAttribute(kTTSym_Value, &anAttribute);
	
	newObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &newObserver, kTTValNONE);
	
	newBaton = new TTValue(TTPtr(this));
	newBaton->append(aRelativeAddress);
	
	newObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
	newObserver->setAttributeValue(TT("Function"), TTPtr(&TTContainerAttributeCallback));
	
	newObserver->setAttributeValue(TT("Owner"), TT("TTContainer"));					// this is usefull only to debug
	
	anAttribute->registerObserverForNotifications(*newObserver);
	
	cacheParameter->append(newObserver);
	
	// append to the cache hash table
	mParametersCache->append(aRelativeAddress, cacheParameter);
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTContainerDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b, cacheParameter;
	TTContainerPtr		aContainer;
	TTCallbackPtr	anObserver;
	TTNodePtr		aNode;
	TTObjectPtr		anObject;
	TTSymbolPtr		anAddress;
	TTValue			v;
	long			flag;
	
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
			aContainer->makeCacheParameter(aNode, cacheParameter);
			
			break;
		}
			
		case kAddressDestroyed :
		{
			aNode->getAttributeValue(kTTSym_Object, v);
			v.get(0, (TTPtr*)&anObject);
			
			// TODO find the object in the cache and remove it

			break;
		}
			
		default:
			break;
	}
	
	return kTTErrNone;
	
}

TTErr TTContainerAttributeCallback(TTPtr baton, TTValue& data)
{
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

