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
mRelativeAddress(kTTSymEmpty),
mNode(NULL),
mNodeAddress(kTTSymEmpty),
mContextNode(NULL),
mContextAddress(kTTSymEmpty),
mNewInstanceCreated(false),
mDirectory(NULL),
mShareContextNodeCallback(NULL),
mGetContextListCallback(NULL),
mExposedMessages(NULL),
mExposedAttributes(NULL)
{
	TTObjectPtr anObject;
	
	TT_ASSERT("Correct number of args to create TTSubscriber", arguments.getSize() == 5);
	
	arguments.get(0, (TTPtr*)&anObject);
	
	arguments.get(1, &mRelativeAddress);
	if (mRelativeAddress == kTTSymEmpty)
		mRelativeAddress = S_SEPARATOR;
	
	arguments.get(2, (TTPtr*)&mDirectory);
	TT_ASSERT("Directory passed to TTSubscriber is not NULL", mDirectory);
	
	arguments.get(3, (TTPtr*)&mShareContextNodeCallback);
	TT_ASSERT("Share Callback passed to TTSubscriber is not NULL", mShareContextNodeCallback);
	
	arguments.get(4, (TTPtr*)&mGetContextListCallback);
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
	
	if	(mDirectory && mShareContextNodeCallback && mGetContextListCallback)
		this->subscribe(anObject);
	
	mExposedMessages = new TTHash();
	mExposedAttributes = new TTHash();
}

TTSubscriber::~TTSubscriber()
{	
	TTList			childrenList;
	TTValue			aTempValue;
	TTValue			keys;
	TTValue			storedObject;
	TTSymbolPtr		k, objectAddress, nameToAddress;
	TTObjectPtr		anObject;
	TTUInt8			i;
	TTErr			err;
	
	// If node have no more child : destroy the node (except for root)
	this->mNode->getChildren(S_WILDCARD, S_WILDCARD, childrenList);
	if (childrenList.isEmpty() && this->mNode != this->mDirectory->getRoot())
		this->mDirectory->TTNodeRemove(this->mNodeAddress);
	
	// Set NULL object
	else {
		aTempValue.clear();
		aTempValue.append((TTPtr)NULL);
		this->mNode->setAttributeValue(kTTSym_Object, aTempValue);
	}
	
	if (mShareContextNodeCallback)
		TTObjectRelease(TTObjectHandle(&mShareContextNodeCallback));
	
	if (mGetContextListCallback)
		TTObjectRelease(TTObjectHandle(&mGetContextListCallback));
	
	// Clear exposed Messages
	err = mExposedMessages->getKeys(keys);
	if (!err) {
		for (i=0; i<keys.getSize(); i++) {
			
			keys.get(i, &k);
			mExposedMessages->lookup(k, storedObject);
			storedObject.get(0, (TTPtr*)&anObject);
			
			nameToAddress = convertPublicNameInAddress(k);
			joinOSCAddress(mNodeAddress, nameToAddress, &objectAddress);
			
			this->mDirectory->TTNodeRemove(objectAddress);
			
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
			
			nameToAddress = convertPublicNameInAddress(k);
			joinOSCAddress(mNodeAddress, nameToAddress, &objectAddress);
			
			this->mDirectory->TTNodeRemove(objectAddress);
			
			if (anObject)
				TTObjectRelease(&anObject);
			
			mExposedAttributes->remove(k);
		}
	}
}

TTErr TTSubscriber::subscribe(TTObjectPtr ourObject)
{
	TTSymbolPtr		contextAddress, absoluteAddress;
	TTValue			aTempValue, args;
	TTPtr			ourContext, hisContext;
	TTListPtr		aContextList;
	TTList			aNodeList;
	TTNodePtr		aNode;
	TTObjectPtr		hisObject;
	TTErr			err;
	
	// look for any other registered subscriber in the Context
	// to ask them the Context node using the shareCallback.
	// (this is done to optimized the registration process)
	this->mContextNode = NULL;
	this->mShareContextNodeCallback->notify(aTempValue);
	aTempValue.get(0, (TTPtr*)&(this->mContextNode));
	
	// if it is the first registered subscriber in the Context
	// or the sharing has failed
	if (!this->mContextNode) {
		
		// Get all Context above the subscriber and their name 
		// using the contextListCallback
		aTempValue.clear();
		aContextList = new TTList();
		aTempValue.append(aContextList);
		this->mGetContextListCallback->notify(aTempValue);
		
		// register each Context of the list as 
		// TTNode in the tree structure (if they don't exist yet)
		this->registerContextList(aContextList);
	}
	
	// Build the node at /contextAddress/parent/node
	if (this->mContextNode) {
		
		// Get our Context
		this->mContextNode->getAttributeValue(kTTSym_Context, aTempValue);
		aTempValue.get(0, (TTPtr*)&ourContext);
		
		// Make absolute address 
		this->mContextNode->getOscAddress(&contextAddress);
		if (this->mRelativeAddress == S_SEPARATOR)
			absoluteAddress = contextAddress;
		else
			joinOSCAddress(contextAddress, this->mRelativeAddress, &absoluteAddress);
		
		// Check if the node exists
		err = this->mDirectory->Lookup(absoluteAddress, aNodeList, &aNode);
		
		// if the node doesn't exist, create it
		if (err)
			this->mDirectory->TTNodeCreate(absoluteAddress, ourObject, ourContext,  &aNode, &this->mNewInstanceCreated);
		
		// else the node already exists
		else {
			
			// Get his refered object
			hisObject = aNode->getObject();
			
			// if there is no refered object
			if (!hisObject) {
				
				// set our object instead
				aTempValue.clear();
				aTempValue.append((TTPtr)ourObject);
				aNode->setAttributeValue(kTTSym_Object, aTempValue);
				
				// notify for the creation of the address when replacing the Object
				// !!! Maybe this could introduce confusion for namespace observer !!!
				// introduce a new flag (kAddressObjectChanged) ?
				mDirectory->notifyObservers(absoluteAddress, aNode, kAddressCreated);
			}
			
			// Get his context
			hisContext = aNode->getContext();
			
			// if there is no context
			if (!hisContext) {
				
				// set our context instead
				aTempValue.clear();
				aTempValue.append((TTPtr)ourContext);
				aNode->setAttributeValue(kTTSym_Context, aTempValue);
			}
			
			// else there is already an object
			else {
				
				// if it is the ContextNode, do nothing (our object can't be refered)
				// else create another instance to refer our object
				if (aNode != this->mContextNode)
					this->mDirectory->TTNodeCreate(absoluteAddress, ourObject, ourContext,  &aNode, &this->mNewInstanceCreated);
			}
		}

		this->mNode = aNode;
		this->mNode->getOscAddress(&this->mNodeAddress);
		this->mContextNode->getOscAddress(&this->mContextAddress);
		this->mNode->getOscAddress(&this->mRelativeAddress, this->mContextAddress);
	}
	else
		return kTTErrGeneric;
	
	return kTTErrNone;
}

TTErr TTSubscriber::registerContextList(TTListPtr aContextList)
{
	TTValue			aTempValue, args;
	TTSymbolPtr		formatedContextName, contextAddress, context_parent, context_name, context_instance, context_attribute;
	TTList			contextNodeList, attributesAccess;
	TTNodePtr		contextNode, lowerContextNode;
	TTString		lowerContextAddress;
	TTPtr			aContext, lowerContext;
	TTBoolean		found, newInstanceCreated;
	TTErr			err;
	
	// Build the /topContext/subContext/.../contextName/ structure
	// Check each context instance looking at the patcher.
	
	// start by the root
	contextNode = mDirectory->getRoot();
	
	// if there are contexts in the context list
	if(!aContextList->isEmpty()){
		
		// for each context of the context list
		for (aContextList->begin(); aContextList->end(); aContextList->next()){
			
			// get the context name
			aContextList->current().get(0, (TTSymbolPtr*)&formatedContextName);
			
			// get the context
			aContextList->current().get(1, (TTPtr*)&aContext);
			
			// Is there a specific instance inside the context name (eg. myContext.A) ?
			// if not we look for contextName.* else for myContext.A
			splitOSCAddress(formatedContextName, &context_parent, &context_name, &context_instance, &context_attribute);
			
			if (context_instance == NO_INSTANCE)
				err = contextNode->getChildren(context_name, S_WILDCARD, contextNodeList);
			else 
				err = contextNode->getChildren(context_name, context_instance, contextNodeList);
			
			// 3. For each node of the contextNodeList, check the context
			// if one matches, keep it else we have to create the node
			found = false;
			lowerContextNode = NULL;
			for (contextNodeList.begin(); contextNodeList.end(); contextNodeList.next()) {
				
				contextNodeList.current().get(0, (TTPtr*)&lowerContextNode);
				
				// Check if objects are the same
				lowerContextNode->getAttributeValue(kTTSym_Context, aTempValue);
				aTempValue.get(0, (TTPtr*)&lowerContext);
				
				if (aContext == lowerContext) {
					found = true;
					break;
				}
			}
			
			// if no node exists : create a new instance for this context
			if (!found) {
				
				contextNode->getOscAddress(&contextAddress);
				
				// don't create another root !
				if (formatedContextName != S_SEPARATOR) {
					lowerContextAddress = contextAddress->getCString();
					if (contextAddress != S_SEPARATOR)
						lowerContextAddress += C_SEPARATOR;
					lowerContextAddress += formatedContextName->getCString();
					
					// Make a TTNode with no object
					this->mDirectory->TTNodeCreate(TT(lowerContextAddress.data()), NULL, aContext, &contextNode, &newInstanceCreated);

				}
				else {
					contextNode = this->mDirectory->getRoot();
					
					// if the current context of the root is NULL : set our context
					if (!contextNode->getContext())
						contextNode->setAttributeValue(kTTSym_Context, aContext);
				}
			}
			else
				contextNode = lowerContextNode;
		} // end for
		
		this->mContextNode = contextNode;
	}
	
	return kTTErrNone;
}

TTErr TTSubscriber::exposeMessage(TTObjectPtr anObject, TTSymbolPtr messageName, TTDataPtr *returnedData)
{
	TTValue			args, v;
	TTDataPtr		aData;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	TTSymbolPtr		nameToAddress;
	TTSymbolPtr		dataAddress;
	TTNodePtr		aNode;
	TTBoolean		nodeCreated;
	TTPtr			aContext;
	
	// prepare arguments
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(this));
	returnValueBaton->append(messageName);
	returnValueCallback->setAttributeValue(TT("Baton"), TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(TT("Function"), TTPtr(&TTSubscriberMessageReturnValueCallback));
	args.append(returnValueCallback);
	
	args.append(kTTSym_message);
	
	aData = NULL;
	TTObjectInstantiate(TT("Data"), TTObjectHandle(&aData), args);
	
	// register TTData into the tree
	nameToAddress = convertPublicNameInAddress(messageName);
	joinOSCAddress(mNodeAddress, nameToAddress, &dataAddress);
	aContext = mNode->getContext();
	mDirectory->TTNodeCreate(dataAddress, aData, aContext, &aNode, &nodeCreated);
	
	// store TTData and given object
	v = TTValue((TTPtr)aData);
	v.append((TTPtr)anObject);
	mExposedMessages->append(messageName, v);
	
	*returnedData = aData;
	
	return kTTErrNone;
}

TTErr TTSubscriber::exposeAttribute(TTObjectPtr anObject, TTSymbolPtr attributeName, TTSymbolPtr service, TTDataPtr *returnedData)
{
	TTValue			args, v;
	TTDataPtr		aData;
	TTObjectPtr		returnValueCallback;			// to set the object attribute when data changed
	TTValuePtr		returnValueBaton;
	TTObjectPtr		observeValueCallback;			// to set the data when an object attribute changed
	TTValuePtr		observeValueBaton;
	TTAttributePtr	anAttribute = NULL;
	TTSymbolPtr		nameToAddress;
	TTSymbolPtr		dataAddress;
	TTNodePtr		aNode;
	TTBoolean		nodeCreated;
	TTPtr			aContext;
	TTErr			err;
	
	if (service == kTTSym_parameter || service == kTTSym_return) {
		
		// prepare arguments
		returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TT("Callback"), &returnValueCallback, kTTValNONE);
		returnValueBaton = new TTValue(TTPtr(this));
		returnValueBaton->append(attributeName);
		returnValueCallback->setAttributeValue(TT("Baton"), TTPtr(returnValueBaton));
		returnValueCallback->setAttributeValue(TT("Function"), TTPtr(&TTSubscriberAttributeReturnValueCallback));
		args.append(returnValueCallback);
		args.append(service);
		
		aData = NULL;
		TTObjectInstantiate(TT("Data"), TTObjectHandle(&aData), args);
		
		// register TTData into the tree
		nameToAddress = convertPublicNameInAddress(attributeName);
		joinOSCAddress(mNodeAddress, nameToAddress, &dataAddress);
		aContext = mNode->getContext();
		mDirectory->TTNodeCreate(dataAddress, aData, aContext, &aNode, &nodeCreated);
		
		// observe the attribute of the object
		err = anObject->findAttribute(attributeName, &anAttribute);
		if (!err) {
			
			observeValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
			TTObjectInstantiate(TT("Callback"), &observeValueCallback, kTTValNONE);
			observeValueBaton = new TTValue(TTPtr(this));
			observeValueBaton->append(attributeName);
			observeValueCallback->setAttributeValue(TT("Baton"), TTPtr(observeValueBaton));
			observeValueCallback->setAttributeValue(TT("Function"), TTPtr(&TTSubscriberAttributeObserveValueCallback));
			
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

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTSubscriberMessageReturnValueCallback(TTPtr baton, TTValue& data)
{
	TTSubscriberPtr aSubscriber;
	TTObjectPtr		anObject;
	TTSymbolPtr		messageName;
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
		anObject->sendMessage(messageName, data);
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTSubscriberAttributeReturnValueCallback(TTPtr baton, TTValue& data)
{
	TTSubscriberPtr aSubscriber;
	TTObjectPtr		anObject;
	TTSymbolPtr		attributeName;
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
	TTSymbolPtr		attributeName;
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
		aData->setAttributeValue(kTTSym_Value, data);
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

