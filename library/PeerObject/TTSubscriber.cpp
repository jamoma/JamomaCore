/* 
 * A contextual subscriber to register TTObject as TTNode in a TTNodeDirectory
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSubscriber.h"

#define thisTTClass			TTSubscriber
#define thisTTClassName		"Subscriber"
#define thisTTClassTags		"node, subscriber"

TT_MODULAR_CONSTRUCTOR,
mRelativeAddress(kTTAdrsEmpty),
mObject(NULL),
mNode(NULL),
mNodeAddress(kTTAdrsEmpty),
mContextNode(NULL),
mContextAddress(kTTAdrsEmpty),
mNewInstanceCreated(false),
mGetContextListCallback(NULL),
mExposedMessages(NULL),
mExposedAttributes(NULL)
{
	TTErr		err;
	
	TT_ASSERT("Correct number of args to create TTSubscriber", arguments.getSize() == 3);
	
	arguments.get(0, (TTPtr*)&mObject);
	
	arguments.get(1, &mRelativeAddress);
	
	arguments.get(2, (TTPtr*)&mGetContextListCallback);
	TT_ASSERT("ContextList Callback passed to TTSubscriber is not NULL", mGetContextListCallback);
	
	addAttribute(RelativeAddress, kTypeSymbol);
	addAttribute(Node, kTypePointer);
	addAttribute(NodeAddress, kTypeSymbol);
	addAttribute(ContextNode, kTypePointer);
	addAttribute(ContextAddress, kTypeSymbol);
	addAttribute(NewInstanceCreated, kTypeBoolean);
	
	addAttributeProperty(RelativeAddress, readOnly, YES);
	addAttributeProperty(Node, readOnly, YES);
	addAttributeProperty(NodeAddress, readOnly, YES);
	addAttributeProperty(ContextNode, readOnly, YES);
	addAttributeProperty(ContextAddress, readOnly, YES);
	addAttributeProperty(NewInstanceCreated, readOnly, YES);
	
	mExposedMessages = new TTHash();
	mExposedAttributes = new TTHash();
	
	// if local directory exists, 
	// the address is relative and 
	// the contextListCallback is not NULL
	if	(getLocalDirectory && mRelativeAddress->getType() == kAddressRelative && mGetContextListCallback) {
		err = this->subscribe();
		TT_ASSERT("Subscription done", !err);
	}
}

TTSubscriber::~TTSubscriber()
{	
	TTNodeDirectoryPtr	aDirectory = getLocalDirectory;		// only subscribes into local directory
	TTList				childrenList;
	TTValue				aTempValue;
	TTValue				keys;
	TTValue				storedObject;
	TTAddress	objectAddress, nameToAddress;
	TTSymbol			k;
	TTObjectPtr			anObject;
	TTUInt8				i;
	TTErr				err;
	
	if (mObject && mNode) {
		
		// If node have no more child : destroy the node (except for root)
		mNode->getChildren(S_WILDCARD, S_WILDCARD, childrenList);
		if (childrenList.isEmpty() && mNode != aDirectory->getRoot())
			aDirectory->TTNodeRemove(mNodeAddress);
		
		// else notify for the unregistration of the object
		// !!! Maybe this could introduce confusion for namespace observer !!!
		// introduce a new flag (kAddressObjectUnregistered) ?
		else {
			
			// remove alias for TTContainer object before
			if (mObject->getName() == kTTSym_Container)
				mObject->sendMessage(TT("AliasRemove"));
			
			// notify
			aDirectory->notifyObservers(mNodeAddress, mNode, kAddressDestroyed);
			
			// set NULL object
			this->mNode->setObject(NULL);
		}
	}
	
	if (mGetContextListCallback) {
		delete (TTValuePtr)mGetContextListCallback->getBaton();
		TTObjectRelease(TTObjectHandle(&mGetContextListCallback));
	}
	
	// Clear exposed Messages
	err = mExposedMessages->getKeys(keys);
	if (!err) {
		for (i=0; i<keys.getSize(); i++) {
			
			keys.get(i, &k);
			mExposedMessages->lookup(k, storedObject);
			storedObject.get(0, (TTPtr*)&anObject);
			
			nameToAddress = convertTTNameInTTAddress(k);
			objectAddress = mNodeAddress->appendAddress(nameToAddress);
			
			aDirectory->TTNodeRemove(objectAddress);
			
			if (anObject)
				TTObjectRelease(&anObject);
			
			mExposedMessages->remove(k);
		}
	}
	
	// Clear exposed Attributes
	err = mExposedAttributes->getKeys(keys);
	if (!err) {
		for (i=0; i<keys.getSize(); i++) {
			
			keys.get(i, &k);
			mExposedAttributes->lookup(k, storedObject);
			storedObject.get(0, (TTPtr*)&anObject);
			
			nameToAddress = convertTTNameInTTAddress(k);
			objectAddress = mNodeAddress->appendAddress(nameToAddress);
			
			aDirectory->TTNodeRemove(objectAddress);
			
			if (anObject)
				TTObjectRelease(&anObject);
			
			mExposedAttributes->remove(k);
		}
	}
}

TTErr TTSubscriber::subscribe( )
{
	TTNodeDirectoryPtr	aDirectory = getLocalDirectory;		// only subscribe into local directory
	TTAddress	contextAddress, absoluteAddress;
	TTValue				aTempValue, args;
	TTPtr				ourContext, hisContext;
	TTListPtr			aContextList;
	TTList				aNodeList;
	TTNodePtr			aNode;
	TTObjectPtr			hisObject;
	TTErr				err;
	
	// Get all Context above the subscriber and their name 
	// using the contextListCallback
	aTempValue.clear();
	aContextList = new TTList();
	aTempValue.append(aContextList);
	this->mGetContextListCallback->notify(aTempValue, kTTValNONE);
	
	// register each Context of the list as 
	// TTNode in the tree structure (if they don't exist yet)
	if (this->registerContextList(aContextList))
		return kTTErrGeneric;
	
	// Build the node at /contextAddress/parent/node
	if (this->mContextNode) {
		
		// Get our Context
		ourContext = this->mContextNode->getContext();
		
		// Make absolute address 
		this->mContextNode->getAddress(&contextAddress);
		absoluteAddress = contextAddress->appendAddress(this->mRelativeAddress);
		
		// Check if the node exists
		err = aDirectory->Lookup(absoluteAddress, aNodeList, &aNode);
		
		// if the node doesn't exist, create it
		if (err)
			if (mObject)
				aDirectory->TTNodeCreate(absoluteAddress, mObject, ourContext,  &aNode, &this->mNewInstanceCreated);
			else
				return kTTErrGeneric;
		
		// else the node already exists
		else if (mObject) {
			
			// Get his refered object
			hisObject = aNode->getObject();
			
			// if there is no refered object
			if (!hisObject) {
				
				// set our object instead
				aNode->setObject(mObject);
				
				// get his context
				hisContext = aNode->getContext();
				
				// if there is no context
				if (!hisContext) {
					
					// set our context instead
					aTempValue.clear();
					aTempValue.append((TTPtr)ourContext);
					aNode->setContext(ourContext);
				}
				
				// notify for the creation of the address when replacing the Object and Context
				// !!! Maybe this could introduce confusion for namespace observer !!!
				// introduce a new flag (kAddressObjectChanged) ?
				aDirectory->notifyObservers(absoluteAddress, aNode, kAddressCreated);
			}
			// else there is already an object
			else {
				
				// if it is the ContextNode, do nothing (our object can't be refered)
				// else create another instance to refer our object
				if (aNode != this->mContextNode)
					aDirectory->TTNodeCreate(absoluteAddress, mObject, ourContext,  &aNode, &this->mNewInstanceCreated);
			}
		}

		this->mNode = aNode;
		this->mNode->getAddress(&this->mNodeAddress);
		this->mContextNode->getAddress(&this->mContextAddress);
		this->mNode->getAddress(&this->mRelativeAddress, this->mContextAddress);
	}
	else
		return kTTErrGeneric;
	
	return kTTErrNone;
}

TTErr TTSubscriber::registerContextList(TTListPtr aContextList)
{
	TTNodeDirectoryPtr	aDirectory = getLocalDirectory;		// only subscribes into local directory
	TTValue				args;
	TTSymbol			formatedContextSymbol;
	TTAddress	relativeContextAddress, contextAddress, lowerContextAddress;
	TTList				contextNodeList, attributesAccess;
	TTNodePtr			contextNode, lowerContextNode;
	TTPtr				aContext, lowerContext;
	TTBoolean			found, newInstanceCreated;
	
	// Build the /topContext/subContext/.../contextName/ structure
	// Check each context instance looking at the patcher.
	
	// start by the root
	contextNode = aDirectory->getRoot();
	
	// if there are contexts in the context list
	if(!aContextList->isEmpty()){
		
		// for each context of the context list
		for (aContextList->begin(); aContextList->end(); aContextList->next()){
			
			// get the context symbol as a relative context address
			aContextList->current().get(0, &formatedContextSymbol);
			relativeContextAddress = TTADRS(formatedContextSymbol->getCString());
			
			// get the context
			aContextList->current().get(1, (TTPtr*)&aContext);
			
			// if one is missing stop the registration
			if (relativeContextAddress == kTTAdrsEmpty || !aContext)
				return kTTErrGeneric;
			
			// 1. Look for relativeContextName.* in order to find a child with the same context
			contextNode->getChildren(relativeContextAddress->getName(), S_WILDCARD, contextNodeList);
			
			/*	Former step 1.
				This introduced a bug when a user edits /anAddress.I several times.
				However this is faster than the new implementation because now we
				always look for all children to find the context-like child...
			 
			 if (relativeContextAddress->getInstance() == NO_INSTANCE)
				err = contextNode->getChildren(relativeContextAddress->getName(), S_WILDCARD, contextNodeList);
			 else 
				err = contextNode->getChildren(relativeContextAddress->getName(), relativeContextAddress->getInstance(), contextNodeList);
			 */
			
			// 3. For each node of the contextNodeList, check the context
			// if one matches, keep it else we have to create the node
			found = false;
			lowerContextNode = NULL;
			for (contextNodeList.begin(); contextNodeList.end(); contextNodeList.next()) {
				
				contextNodeList.current().get(0, (TTPtr*)&lowerContextNode);
				
				// Check if objects are the same
				lowerContext = lowerContextNode->getContext();
				
				if (aContext == lowerContext) {
					found = true;
					break;
				}
			}
			
			// if no node exists : create a new instance for this context
			if (!found) {
				
				contextNode->getAddress(&contextAddress);
				
				// don't create another root !
				if (relativeContextAddress != kTTAdrsRoot) {
					
					lowerContextAddress = contextAddress->appendAddress(relativeContextAddress);
					
					// Make a TTNode with no object
					aDirectory->TTNodeCreate(lowerContextAddress, NULL, aContext, &contextNode, &newInstanceCreated);

				}
				else {
					contextNode = aDirectory->getRoot();
					
					// if the current context of the root is NULL : set our context
					if (!contextNode->getContext())
						contextNode->setContext(aContext);
				}
			}
			else
				contextNode = lowerContextNode;
		} // end for
		
		this->mContextNode = contextNode;
	}
	
	return kTTErrNone;
}

TTErr TTSubscriber::exposeMessage(TTObjectPtr anObject, TTSymbol messageName, TTDataPtr *returnedData)
{
	TTValue			args, v;
	TTDataPtr		aData;
	TTCallbackPtr	returnValueCallback;
	TTValuePtr		returnValueBaton;
	TTAddress nameToAddress, dataAddress;
	TTNodePtr		aNode;
	TTBoolean		nodeCreated;
	TTPtr			aContext;
	
	// prepare arguments
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), TTObjectHandle(&returnValueCallback), kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(this));
	returnValueBaton->append(messageName);
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&TTSubscriberMessageReturnValueCallback));
	args.append(returnValueCallback);
	
	args.append(kTTSym_message);
	
	aData = NULL;
	TTObjectInstantiate(kTTSym_Data, TTObjectHandle(&aData), args);
	
	// register TTData into the local tree
	nameToAddress = convertTTNameInTTAddress(messageName);
	dataAddress = mNodeAddress->appendAddress(nameToAddress);
	aContext = mNode->getContext();
	getLocalDirectory->TTNodeCreate(dataAddress, aData, aContext, &aNode, &nodeCreated);
	
	// store TTData and given object
	v = TTValue((TTPtr)aData);
	v.append((TTPtr)anObject);
	mExposedMessages->append(messageName, v);
	
	*returnedData = aData;
	
	return kTTErrNone;
}

TTErr TTSubscriber::exposeAttribute(TTObjectPtr anObject, TTSymbol attributeName, TTSymbol service, TTDataPtr *returnedData)
{
	TTValue			args, v;
	TTDataPtr		aData;
	TTCallbackPtr	returnValueCallback;			// to set the object attribute when data changed
	TTValuePtr		returnValueBaton;
	TTCallbackPtr	observeValueCallback;			// to set the data when an object attribute changed
	TTValuePtr		observeValueBaton;
	TTAttributePtr	anAttribute = NULL;
	TTAddress nameToAddress, dataAddress;
	TTNodePtr		aNode;
	TTBoolean		nodeCreated;
	TTPtr			aContext;
	TTErr			err;
	
	if (service == kTTSym_parameter || service == kTTSym_return) {
		
		// prepare arguments
		returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TT("callback"), TTObjectHandle(&returnValueCallback), kTTValNONE);
		returnValueBaton = new TTValue(TTPtr(this));
		returnValueBaton->append(attributeName);
		returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
		returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&TTSubscriberAttributeReturnValueCallback));
		args.append(returnValueCallback);
		args.append(service);
		
		aData = NULL;
		TTObjectInstantiate(kTTSym_Data, TTObjectHandle(&aData), args);
		
		// register TTData into the local tree
		nameToAddress = convertTTNameInTTAddress(attributeName);
		dataAddress = mNodeAddress->appendAddress(nameToAddress);
		aContext = mNode->getContext();
		getLocalDirectory->TTNodeCreate(dataAddress, aData, aContext, &aNode, &nodeCreated);
		
		// observe the attribute of the object
		err = anObject->findAttribute(attributeName, &anAttribute);
		if (!err) {
			
			observeValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
			TTObjectInstantiate(TT("callback"), TTObjectHandle(&observeValueCallback), kTTValNONE);
			observeValueBaton = new TTValue(TTPtr(this));
			observeValueBaton->append(attributeName);
			observeValueCallback->setAttributeValue(kTTSym_baton, TTPtr(observeValueBaton));
			observeValueCallback->setAttributeValue(kTTSym_function, TTPtr(&TTSubscriberAttributeObserveValueCallback));
			
			anAttribute->registerObserverForNotifications(*observeValueCallback);
		}
		
		// store TTData and given object
		v = TTValue((TTPtr)aData);
		v.append((TTPtr)anObject);
		mExposedAttributes->append(attributeName, v);
		
		*returnedData = aData;
		
	}
	else
		return kTTErrGeneric;
	
	return kTTErrNone;
}

TTErr TTSubscriber::unexposeMessage(TTSymbol messageName)
{
	TTNodeDirectoryPtr	aDirectory = getLocalDirectory;		// only subscribes into local directory
	TTValue				storedObject;
	TTAddress	objectAddress, nameToAddress;
	TTObjectPtr			anObject;
	
	if (!mExposedMessages->lookup(messageName, storedObject)) {
		storedObject.get(0, (TTPtr*)&anObject);
		
		nameToAddress = convertTTNameInTTAddress(messageName);
		objectAddress = mNodeAddress->appendAddress(nameToAddress);
		
		aDirectory->TTNodeRemove(objectAddress);
		
		if (anObject)
			TTObjectRelease(&anObject);
		
		mExposedMessages->remove(messageName);
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTSubscriber::unexposeAttribute(TTSymbol attributeName)
{
	TTNodeDirectoryPtr	aDirectory = getLocalDirectory;		// only subscribes into local directory
	TTValue				storedObject;
	TTAddress	objectAddress, nameToAddress;
	TTObjectPtr			anObject;
	
	if (!mExposedAttributes->lookup(attributeName, storedObject)) {
		storedObject.get(0, (TTPtr*)&anObject);
		
		nameToAddress = convertTTNameInTTAddress(attributeName);
		objectAddress = mNodeAddress->appendAddress(nameToAddress);
		
		aDirectory->TTNodeRemove(objectAddress);
		
		if (anObject)
			TTObjectRelease(&anObject);
		
		mExposedAttributes->remove(attributeName);
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTSubscriberMessageReturnValueCallback(TTPtr baton, TTValue& data)
{
	TTSubscriberPtr aSubscriber;
	TTObjectPtr		anObject;
	TTSymbol		messageName;
	TTValuePtr		b;
	TTValue			v;
	TTErr			err;
	
	// unpack baton (a TTSubscriber)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aSubscriber);
	b->get(1, &messageName);
	
	// get the exposed TTObject
	err = aSubscriber->mExposedMessages->lookup(messageName, v);
	
	if (!err) {
		v.get(1, (TTPtr*)&anObject);
		
		// protect data
		v = data;
		
		// send data
		anObject->sendMessage(messageName, data, kTTValNONE);
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTSubscriberAttributeReturnValueCallback(TTPtr baton, TTValue& data)
{
	TTSubscriberPtr aSubscriber;
	TTObjectPtr		anObject;
	TTSymbol		attributeName;
	TTValuePtr		b;
	TTValue			v;
	TTErr			err;
	
	// unpack baton (a TTSubscriber)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aSubscriber);
	b->get(1, &attributeName);
	
	// get the exposed TTObject
	err = aSubscriber->mExposedAttributes->lookup(attributeName, v);
	
	if (!err) {
		v.get(1, (TTPtr*)&anObject);
		
		// protect data
		v = data;
		
		// send data
		anObject->setAttributeValue(attributeName, data);
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTSubscriberAttributeObserveValueCallback(TTPtr baton, TTValue& data)
{
	TTSubscriberPtr aSubscriber;
	TTObjectPtr		aData;
	TTSymbol		attributeName;
	TTValuePtr		b;
	TTValue			v;
	TTErr			err;
	
	// unpack baton (a TTSubscriber)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aSubscriber);
	b->get(1, &attributeName);
	
	// get the TTData which expose the attribute
	err = aSubscriber->mExposedAttributes->lookup(attributeName, v);
	
	if (!err) {
		v.get(0, (TTPtr*)&aData);
		
		// protect data
		v = data;
		
		// set data
		aData->setAttributeValue(kTTSym_value, data);
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

