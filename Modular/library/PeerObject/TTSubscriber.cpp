/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A contextual subscriber to register TTObjectBase as TTNode in a TTNodeDirectory
 *
 * @details TODO: Add more info
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTSubscriber.h"

#define thisTTClass			TTSubscriber
#define thisTTClassName		"Subscriber"
#define thisTTClassTags		"node, subscriber"

TT_MODULAR_CONSTRUCTOR,
mObject(NULL),
mRelativeAddress(kTTAdrsEmpty),
mNodeAddress(kTTAdrsEmpty),
mContextAddress(kTTAdrsEmpty),
mNewInstanceCreated(NO),
mSubscribed(NO),
mExposedMessages(NULL),
mExposedAttributes(NULL)
{	
	TT_ASSERT("Correct number of args to create TTSubscriber", arguments.getSize() == 2);
	
	mObject = arguments[0];
	mRelativeAddress = arguments[1];
	
	addAttribute(RelativeAddress, kTypeSymbol);
	addAttribute(NodeAddress, kTypeSymbol);
	addAttribute(ContextAddress, kTypeSymbol);
	addAttribute(NewInstanceCreated, kTypeBoolean);
    addAttribute(Subscribed, kTypeBoolean);
	
	addAttributeProperty(RelativeAddress, readOnly, YES);
	addAttributeProperty(NodeAddress, readOnly, YES);
	addAttributeProperty(ContextAddress, readOnly, YES);
	addAttributeProperty(NewInstanceCreated, readOnly, YES);
    addAttributeProperty(Subscribed, readOnly, YES);
    
    addMessageWithArguments(Subscribe);
    addMessage(Unsubscribe);
	
	mExposedMessages = new TTHash();
	mExposedAttributes = new TTHash();
}

TTSubscriber::~TTSubscriber()
{
    if (mSubscribed)
        Unsubscribe();
    
    delete mExposedMessages;
    delete mExposedAttributes;
}

TTErr TTSubscriber::Subscribe(const TTValue& inputValue, TTValue& outputValue)
{
    TTListPtr           aContextList = NULL;
	TTNodeDirectoryPtr	aDirectory = getLocalDirectory;		// only subscribe into local directory
	TTAddress			contextAddress, absoluteAddress;
	TTValue				aTempValue, args;
	TTPtr				ourContext, hisContext;
	TTList				aNodeList;
	TTNodePtr			aNode, aContextNode;
	TTObjectBasePtr		hisObject;
	TTErr				err;
    
    aContextList = TTListPtr((TTPtr)inputValue[0]);
	TT_ASSERT("ContextList passed to TTSubscriber::Subscribe is not NULL", aContextList);
    
    if (aContextList) {
        
        // if there is no subcription, the local directory exists and the address is relative
        if (!mSubscribed && aDirectory && mRelativeAddress.getType() == kAddressRelative) {
            
            // register each Context of the list as TTNode in the tree structure (if they don't exist yet)
            aContextNode = this->registerContextList(aContextList);
            
            // Build the node at /contextAddress/parent/node
            if (aContextNode) {
                
                // Get our Context
                ourContext = aContextNode->getContext();
                
                // Make absolute address
                aContextNode->getAddress(contextAddress);
                absoluteAddress = contextAddress.appendAddress(this->mRelativeAddress);
                
                // Check if the node exists
                err = aDirectory->Lookup(absoluteAddress, aNodeList, &aNode);
                
                // if the node doesn't exist, create it
                if (err) {
                    if (mObject)
                        aDirectory->TTNodeCreate(absoluteAddress, mObject, ourContext,  &aNode, &this->mNewInstanceCreated);
                    else
                        return kTTErrGeneric;
                }
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
                        if (aNode != aContextNode)
                            aDirectory->TTNodeCreate(absoluteAddress, mObject, ourContext,  &aNode, &this->mNewInstanceCreated);
                    }
                }
                
                aNode->getAddress(this->mNodeAddress);
                aContextNode->getAddress(this->mContextAddress);
                aNode->getAddress(this->mRelativeAddress, this->mContextAddress);
                
                mSubscribed = YES;
                
                // return the node and the context node to work on them
                outputValue = TTValue((TTPtr)aNode);
                outputValue.append((TTPtr)aContextNode);
                
                return kTTErrNone;
            }
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTSubscriber::Unsubscribe()
{
    TTNodeDirectoryPtr	aDirectory = getLocalDirectory;		// only subscribes into local directory
    TTNodePtr           aNode = NULL;
	TTList				childrenList;
	TTValue				aTempValue;
	TTValue				keys;
	TTValue				storedObject;
	TTAddress			objectAddress, nameToAddress;
	TTSymbol			k;
	TTObjectBasePtr		anObject = NULL;
	TTUInt8				i;
	TTErr				err;
    
    if (mObject) {
        
        err = aDirectory->getTTNode(mNodeAddress, &aNode);
        if (!err && aNode) {
            
            anObject = aNode->getObject();
            
            if (anObject == mObject) {
                
                // If node have no more child : destroy the node (except for root)
                aNode->getChildren(S_WILDCARD, S_WILDCARD, childrenList);
                if (childrenList.isEmpty() && aNode != aDirectory->getRoot())
                    aDirectory->TTNodeRemove(mNodeAddress);
                
                // else notify for the unregistration of the object
                // !!! Maybe this could introduce confusion for namespace observer !!!
                // introduce a new flag (kAddressObjectUnregistered) ?
                else {
                    
                    // remove alias for TTContainer object before
                    if (anObject->getName() == kTTSym_Container)
                        anObject->sendMessage(TTSymbol("AliasRemove"));
                    
                    // notify
                    aDirectory->notifyObservers(mNodeAddress, aNode, kAddressDestroyed);
                    
                    // set NULL object
                    aNode->setObject(NULL);
                }
            }
        }
    }
	
	// Clear exposed Messages
	err = mExposedMessages->getKeys(keys);
	if (!err) {
		for (i = 0; i < keys.size(); i++) {
			
			k = keys[i];
			mExposedMessages->lookup(k, storedObject);
			anObject = storedObject[0];
			
			convertUpperCasedNameInAddress(k, nameToAddress);
			objectAddress = mNodeAddress.appendAddress(nameToAddress);
			
			aDirectory->TTNodeRemove(objectAddress);
			
			if (anObject)
				TTObjectBaseRelease(&anObject);
			
			mExposedMessages->remove(k);
		}
	}
	
	// Clear exposed Attributes
	err = mExposedAttributes->getKeys(keys);
	if (!err) {
		for (i = 0; i < keys.size(); i++) {
			
			k = keys[i];
			mExposedAttributes->lookup(k, storedObject);
			anObject = storedObject[0];
			
			convertUpperCasedNameInAddress(k, nameToAddress);
			objectAddress = mNodeAddress.appendAddress(nameToAddress);
			
			aDirectory->TTNodeRemove(objectAddress);
			
			if (anObject)
				TTObjectBaseRelease(&anObject);
			
			mExposedAttributes->remove(k);
		}
	}
    
    return kTTErrNone;
}

TTNodePtr TTSubscriber::registerContextList(TTListPtr aContextList)
{
	TTNodeDirectoryPtr	aDirectory = getLocalDirectory;		// only subscribes into local directory
	TTValue				args;
	TTSymbol			formatedContextSymbol;
	TTAddress           relativeContextAddress, contextAddress, lowerContextAddress;
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
			formatedContextSymbol = aContextList->current()[0];
			relativeContextAddress = TTAddress(formatedContextSymbol);
			
			// get the context
			aContext = aContextList->current()[1];
			
			// if one is missing stop the registration
			if (relativeContextAddress == kTTAdrsEmpty || !aContext)
				return NULL;
			
			// 1. Look for relativeContextName.* in order to find a child with the same context
			contextNode->getChildren(relativeContextAddress.getName(), S_WILDCARD, contextNodeList);
			
			/*	Former step 1.
				This introduced a bug when a user edits /anAddress.I several times.
				However this is faster than the new implementation because now we
				always look for all children to find the context-like child...
			 
			 if (relativeContextAddress.getInstance() == NO_INSTANCE)
				err = contextNode->getChildren(relativeContextAddress.getName(), S_WILDCARD, contextNodeList);
			 else 
				err = contextNode->getChildren(relativeContextAddress.getName(), relativeContextAddress.getInstance(), contextNodeList);
			 */
			
			// 3. For each node of the contextNodeList, check the context
			// if one matches, keep it else we have to create the node
			found = false;
			lowerContextNode = NULL;
			for (contextNodeList.begin(); contextNodeList.end(); contextNodeList.next()) {
				
				lowerContextNode = TTNodePtr((TTPtr)contextNodeList.current()[0]);
				
				// Check if objects are the same
				lowerContext = lowerContextNode->getContext();
				
				if (aContext == lowerContext) {
					found = true;
					break;
				}
                
                // else if the instance are the same
                else if (relativeContextAddress.getInstance() == lowerContextNode->getInstance()) {
                    
                    // if there is no registered object
                    if (!lowerContextNode->getObject()) {
                        found = true;
                        break;
                    }
                }
			}
			
			// if no node exists : create a new instance for this context
			if (!found) {
				
				contextNode->getAddress(contextAddress);
				
				// don't create another root !
				if (relativeContextAddress != kTTAdrsRoot) {
					
					lowerContextAddress = contextAddress.appendAddress(relativeContextAddress);
					
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
	} // end if
	
	return contextNode;
}

TTErr TTSubscriber::exposeMessage(TTObjectBasePtr anObject, TTSymbol messageName, TTDataPtr *returnedData)
{
    TTNodeDirectoryPtr	aDirectory = getLocalDirectory;		// only subscribes into local directory
	TTValue             args, v, none;
	TTDataPtr           aData;
	TTCallbackPtr       returnValueCallback;
	TTValuePtr          returnValueBaton;
	TTAddress           nameToAddress, dataAddress;
	TTNodePtr           aNode;
	TTBoolean           nodeCreated;
	TTPtr               aContext;
    
    aDirectory->getTTNode(mNodeAddress, &aNode);
    if (aNode) {
        
        // prepare arguments
        returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
        TTObjectBaseInstantiate(TTSymbol("callback"), TTObjectBaseHandle(&returnValueCallback), none);
        returnValueBaton = new TTValue(TTObjectBasePtr(this));
        returnValueBaton->append(messageName);
        returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
        returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&TTSubscriberMessageReturnValueCallback));
        args.append(returnValueCallback);
        
        args.append(kTTSym_message);
        
        aData = NULL;
        TTObjectBaseInstantiate(kTTSym_Data, TTObjectBaseHandle(&aData), args);
        
        // register TTData into the local tree
        convertUpperCasedNameInAddress(messageName, nameToAddress);
        dataAddress = mNodeAddress.appendAddress(nameToAddress);
        aContext = aNode->getContext();
        getLocalDirectory->TTNodeCreate(dataAddress, aData, aContext, &aNode, &nodeCreated);
        
        // store TTData and given object
        v = TTValue((TTObjectBasePtr)aData);
        v.append(anObject);
        mExposedMessages->append(messageName, v);
        
        *returnedData = aData;
        
        return kTTErrNone;
    }
    
    return kTTErrGeneric;
}

TTErr TTSubscriber::exposeAttribute(TTObjectBasePtr anObject, TTSymbol attributeName, TTSymbol service, TTDataPtr *returnedData)
{
    TTNodeDirectoryPtr	aDirectory = getLocalDirectory;		// only subscribes into local directory
	TTValue             args, v, none;
	TTDataPtr           aData;
	TTCallbackPtr       returnValueCallback;                // to set the object attribute when data changed
	TTValuePtr          returnValueBaton;
	TTCallbackPtr       observeValueCallback;               // to set the data when an object attribute changed
	TTValuePtr          observeValueBaton;
	TTAttributePtr      anAttribute = NULL;
	TTAddress           nameToAddress, dataAddress;
	TTNodePtr           aNode;
	TTBoolean           nodeCreated;
	TTPtr               aContext;
	TTErr               err;
	
    aDirectory->getTTNode(mNodeAddress, &aNode);
    if (aNode) {
        
        if (service == kTTSym_parameter || service == kTTSym_return) {
            
            // prepare arguments
            returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
            TTObjectBaseInstantiate(TTSymbol("callback"), TTObjectBaseHandle(&returnValueCallback), none);
            returnValueBaton = new TTValue(TTObjectBasePtr(this));
            returnValueBaton->append(attributeName);
            returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
            returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&TTSubscriberAttributeReturnValueCallback));
            args.append(returnValueCallback);
            args.append(service);
            
            aData = NULL;
            TTObjectBaseInstantiate(kTTSym_Data, TTObjectBaseHandle(&aData), args);
            
            // register TTData into the local tree
            convertUpperCasedNameInAddress(attributeName, nameToAddress);
            dataAddress = mNodeAddress.appendAddress(nameToAddress);
            aContext = aNode->getContext();
            getLocalDirectory->TTNodeCreate(dataAddress, aData, aContext, &aNode, &nodeCreated);
            
            // observe the attribute of the object
            err = anObject->findAttribute(attributeName, &anAttribute);
            if (!err) {
                
                observeValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
                TTObjectBaseInstantiate(TTSymbol("callback"), TTObjectBaseHandle(&observeValueCallback), none);
                observeValueBaton = new TTValue(TTObjectBasePtr(this));
                observeValueBaton->append(attributeName);
                observeValueCallback->setAttributeValue(kTTSym_baton, TTPtr(observeValueBaton));
                observeValueCallback->setAttributeValue(kTTSym_function, TTPtr(&TTSubscriberAttributeObserveValueCallback));
                
                anAttribute->registerObserverForNotifications(*observeValueCallback);
            }
            
            // store TTData and given object
            v = TTValue((TTObjectBasePtr)aData);
            v.append(anObject);
            mExposedAttributes->append(attributeName, v);
            
            *returnedData = aData;
            
            return kTTErrNone;
        }
    }
    return kTTErrGeneric;
}

TTErr TTSubscriber::unexposeMessage(TTSymbol messageName)
{
	TTNodeDirectoryPtr	aDirectory = getLocalDirectory;		// only subscribes into local directory
	TTValue				storedObject;
	TTAddress           objectAddress, nameToAddress;
	TTObjectBasePtr		anObject;
	
	if (!mExposedMessages->lookup(messageName, storedObject)) {
		anObject = storedObject[0];
		
		convertUpperCasedNameInAddress(messageName, nameToAddress);
		objectAddress = mNodeAddress.appendAddress(nameToAddress);
		
		aDirectory->TTNodeRemove(objectAddress);
		
		if (anObject)
			TTObjectBaseRelease(&anObject);
		
		mExposedMessages->remove(messageName);
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTSubscriber::unexposeAttribute(TTSymbol attributeName)
{
	TTNodeDirectoryPtr	aDirectory = getLocalDirectory;		// only subscribes into local directory
	TTValue				storedObject;
	TTAddress           objectAddress, nameToAddress;
	TTObjectBasePtr		anObject;
	
	if (!mExposedAttributes->lookup(attributeName, storedObject)) {
		anObject = storedObject[0];
		
		convertUpperCasedNameInAddress(attributeName, nameToAddress);
		objectAddress = mNodeAddress.appendAddress(nameToAddress);
		
		aDirectory->TTNodeRemove(objectAddress);
		
		if (anObject)
			TTObjectBaseRelease(&anObject);
		
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
	TTObjectBasePtr	anObject;
	TTSymbol		messageName;
	TTValuePtr		b;
	TTValue			v, none;
	TTErr			err;
	
	// unpack baton (a TTSubscriber)
	b = (TTValuePtr)baton;
	aSubscriber = TTSubscriberPtr((TTObjectBasePtr)(*b)[0]);
	messageName = (*b)[1];
	
	// get the exposed TTObjectBase
	err = aSubscriber->mExposedMessages->lookup(messageName, v);
	
	if (!err) {
		anObject = v[1];
		
		// protect data
		v = data;
		
		// send data
		anObject->sendMessage(messageName, data, none);
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTSubscriberAttributeReturnValueCallback(TTPtr baton, TTValue& data)
{
	TTSubscriberPtr aSubscriber;
	TTObjectBasePtr	anObject;
	TTSymbol		attributeName;
	TTValuePtr		b;
	TTValue			v;
	TTErr			err;
	
	// unpack baton (a TTSubscriber)
	b = (TTValuePtr)baton;
	aSubscriber = TTSubscriberPtr((TTObjectBasePtr)(*b)[0]);
	attributeName = (*b)[1];
	
	// get the exposed TTObjectBase
	err = aSubscriber->mExposedAttributes->lookup(attributeName, v);
	
	if (!err) {
		anObject = v[1];
		
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
	TTObjectBasePtr		aData;
	TTSymbol		attributeName;
	TTValuePtr		b;
	TTValue			v;
	TTErr			err;
	
	// unpack baton (a TTSubscriber)
	b = (TTValuePtr)baton;
	aSubscriber = TTSubscriberPtr((TTObjectBasePtr)(*b)[0]);
	attributeName = (*b)[1];
	
	// get the TTData which expose the attribute
	err = aSubscriber->mExposedAttributes->lookup(attributeName, v);
	
	if (!err) {
		aData = TTDataPtr((TTObjectBasePtr)v[0]);
		
		// protect data
		v = data;
		
		// set data
		aData->setAttributeValue(kTTSym_value, data);
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

