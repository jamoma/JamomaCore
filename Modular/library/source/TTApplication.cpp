/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief TTObjectBase to handle application data structure like a TTNodeDirectory and a hash tables of names
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTApplication.h"
#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlreader.h>

#define thisTTClass			TTApplication
#define thisTTClassName		"Application"
#define thisTTClassTags		"modularLibrary, application"

TT_MODULAR_CONSTRUCTOR,
mDirectory(NULL),
mName(kTTSymEmpty),
mType(kTTSym_local),
mVersion(kTTSymEmpty),
mAuthor(kTTSymEmpty),
mActivity(NO),
mDebug(NO),
mLearn(NO),
mTempAddress(kTTAdrsRoot)
{
	addAttributeWithSetter(Name, kTypeSymbol);
    addAttribute(Type, kTypeSymbol);
	addAttribute(Version, kTypeSymbol);
	addAttribute(Author, kTypeSymbol);
	addAttribute(Debug, kTypeBoolean);
	addAttributeWithSetter(Activity, kTypeBoolean);
    
    addAttribute(Learn, kTypeBoolean);
	
    TTAttributePtr anAttribute;
    
    registerAttribute(TTSymbol("activityIn"), kTypeLocalValue, NULL, (TTGetterMethod)& TTApplication::getActivityIn, (TTSetterMethod)& TTApplication::setActivityIn);
    this->findAttribute(TTSymbol("activityIn"), &anAttribute);
    anAttribute->sethidden(YES);
    
    registerAttribute(TTSymbol("activityOut"), kTypeLocalValue, NULL, (TTGetterMethod)& TTApplication::getActivityOut, (TTSetterMethod)& TTApplication::setActivityOut);
    this->findAttribute(TTSymbol("activityOut"), &anAttribute);
    anAttribute->sethidden(YES);
    
    registerAttribute(TTSymbol("cachedAttributes"), kTypeLocalValue, NULL, (TTGetterMethod)& TTApplication::getCachedAttributes, (TTSetterMethod)& TTApplication::setCachedAttributes);
    this->findAttribute(TTSymbol("cachedAttributes"), &anAttribute);
    anAttribute->sethidden(YES);
	
	addAttribute(Directory, kTypePointer);
	addAttributeProperty(Directory, hidden, YES);
	addAttributeProperty(Directory, readOnly, YES);
    
    addMessage(Init);
    
    addMessage(DirectoryClear);
    addMessage(DirectoryBuild);
    addMessageWithArguments(DirectoryObserve);
	
    // directory and attribute listening
	addMessageWithArguments(AddDirectoryListener);
	addMessageProperty(AddDirectoryListener, hidden, YES);
	
	addMessageWithArguments(AddAttributeListener);
	addMessageProperty(AddAttributeListener, hidden, YES);
	
	addMessageWithArguments(RemoveDirectoryListener);
	addMessageProperty(RemoveDirectoryListener, hidden, YES);
	
	addMessageWithArguments(RemoveAttributeListener);
	addMessageProperty(RemoveAttributeListener, hidden, YES);
	
	addMessageWithArguments(UpdateDirectory);
	addMessageProperty(UpdateDirectory, hidden, YES);
	
	addMessageWithArguments(UpdateAttribute);
	addMessageProperty(UpdateAttribute, hidden, YES);
    
    addMessageWithArguments(ObjectRegister);
    addMessageProperty(RegisterObject, hidden, YES);
    
    addMessageWithArguments(ObjectUnregister);
    addMessageProperty(UnregisterObject, hidden, YES);
    
    addMessageWithArguments(ObjectRename);
    addMessageProperty(ObjectRename, hidden, YES);
    
    addMessageWithArguments(ObjectRetreive);
    addMessageProperty(RetreiveObject, hidden, YES);
    
    addMessageWithArguments(ObjectSend);
    addMessageProperty(RetreiveObject, hidden, YES);
	
	// symbol conversion
	addAttributeWithGetter(AllAppNames, kTypeLocalValue);
	addAttributeProperty(AllAppNames, hidden, YES);
	addAttributeProperty(AllAppNames, readOnly, YES);
	
	addAttributeWithGetter(AllTTNames, kTypeLocalValue);
	addAttributeProperty(AllTTNames, hidden, YES);
	addAttributeProperty(AllTTNames, readOnly, YES);
	
	addMessageWithArguments(ConvertToAppName);
	addMessageProperty(ConvertToAppName, hidden, YES);
	
	addMessageWithArguments(ConvertToTTName);
	addMessageProperty(ConvertToTTName, hidden, YES);
	
	// needed to be handled by a TTXmlHandler
	addMessageWithArguments(WriteAsXml);
	addMessageProperty(WriteAsXml, hidden, YES);
	
	addMessageWithArguments(ReadFromXml);
	addMessageProperty(ReadFromXml, hidden, YES);
    
    // note : this a temporary message to allow proxy data creation
    addMessageWithArguments(ProxyDataInstantiate);
    addMessageProperty(ProxyDataInstantiate, hidden, YES);
	
    // create a TTNodeDirectory to handle the application namespace
	mDirectory = new TTNodeDirectory(mName);
	
	TT_ASSERT("NodeDirectory created successfully", (mDirectory != NULL));
}

#if 0
#pragma mark -
#pragma mark Destructor
#endif

TTApplication::~TTApplication()
{
	// TODO : delete observers
	if (mDirectory)
        delete mDirectory;
}

#if 0
#pragma mark -
#pragma mark Attribute accesors
#endif

TTErr TTApplication::setName(const TTValue& value)
{
    TTValue none, args = mName;
    args.append(value[0]);
    
	mName = value;
	mDirectory->setName(mName);
    
    TTModularApplicationManager->sendMessage("ApplicationRename", args, none);
    
    return kTTErrNone;
}

TTErr TTApplication::setActivity(const TTValue& value)
{
	TTValue		protocols = accessApplicationProtocolNames(mName);
	TTSymbol    protocolName;
	
	mActivity = value;
	
	for (TTUInt32 i = 0; i < protocols.size(); i++) {
		
		protocolName = protocols[i];
		accessProtocol(protocolName)->setAttributeValue(kTTSym_activity, mActivity);
	}
	
	return kTTErrNone;
}

TTErr TTApplication::getActivityIn(TTValue& value)
{
    // we don't store the activity in
    // TODO : create a notification for this !
    return kTTErrNone;
}

TTErr TTApplication::setActivityIn(const TTValue& value)
{
	TTAttributePtr	anAttribute;
	TTErr			err = kTTErrNone;
	
	err = this->findAttribute(kTTSym_activityIn, &anAttribute);
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, value);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

TTErr TTApplication::getActivityOut(TTValue& value)
{
    // we don't store the activity out
    // TODO : create a notification for this !
    return kTTErrNone;
}

TTErr TTApplication::setActivityOut(const TTValue& value)
{
	TTAttributePtr	anAttribute;
	TTErr			err = kTTErrNone;
	
	err = this->findAttribute(kTTSym_activityOut, &anAttribute);
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, value);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

TTErr TTApplication::getCachedAttributes(TTValue& value)
{
    // this accessor is only available for a mirror application
    if (mType != kTTSym_mirror)
        return kTTErrGeneric;
    
    mCachedAttributes.getKeys(value);
    
    return kTTErrNone;
}

TTErr TTApplication::setCachedAttributes(const TTValue& value)
{
    // this accessor is only available for a mirror application
    if (mType != kTTSym_mirror)
        return kTTErrGeneric;
    
    // update each node of the directory
    if (mDirectory) {
        
        TTUInt32    i;
        TTValue     v, none;
        TTHash      lastCachedAttributes;
        TTSymbol    name;
        
        // keep the last cached attributes
        mCachedAttributes.getKeys(v);
        for (i = 0; i < v.size(); i++) {
            
            name = v[i];
            lastCachedAttributes.append(name, none);
        }
        
        // cache the new attributes that are not already cached
        mCachedAttributes.clear();
        for (i = 0; i < value.size(); i++) {
            
            name = value[i];
            mCachedAttributes.append(name, none);
            
            // if the attribute wasn't already cached
            if (lastCachedAttributes.lookup(name, none))
                cacheAttributeNode(mDirectory->getRoot(), name, YES);
        }
        
        // uncache the last cached attributes that are not cached anymore
        lastCachedAttributes.getKeys(v);
        for (i = 0; i < v.size(); i++) {
            
            name = v[i];
            
            // if the attribute is not cached anymore
            if (mCachedAttributes.lookup(name, none))
                cacheAttributeNode(mDirectory->getRoot(), name, NO);
        }
    }
    
    return kTTErrNone;
}

TTErr TTApplication::cacheAttributeNode(TTNodePtr aNode, TTSymbol attributeName, TTBoolean cacheOrUncache)
{
	TTObject    anObject;
	TTList      nodeList;
	TTNodePtr   aChild;
    TTValue     none;
    
    // Send AttributeCache message to the mirror's node
    anObject = aNode->getObject();
    if (anObject.valid()) {
        
        if (cacheOrUncache)
            anObject.send("AttributeCache", attributeName);
        else
            anObject.send("AttributeUncache", attributeName);
    }
    
    // Cache attribute of node's object below
    aNode->getChildren(S_WILDCARD, S_WILDCARD, nodeList);
    
    for (nodeList.begin(); nodeList.end(); nodeList.next())
    {
        aChild = TTNodePtr((TTPtr)nodeList.current()[0]);
        cacheAttributeNode(aChild, attributeName, cacheOrUncache);
    }
    
    return kTTErrNone;
}

TTErr TTApplication::Init()
{
    return initNode(mDirectory->getRoot());
}

TTErr TTApplication::initNode(TTNodePtr aNode)
{
	TTObject    anObject;
	TTList      nodeList;
	TTNodePtr   aChild;
    
    // Send Init message to node's object
    anObject = aNode->getObject();
    if (anObject.valid() && anObject.instance() != this)
        anObject.send(kTTSym_Init);

    // Init nodes below
    aNode->getChildren(S_WILDCARD, S_WILDCARD, nodeList);
    
    // Sort children by priority order
	nodeList.sort(&compareNodePriorityThenNameThenInstance);
    
    for (nodeList.begin(); nodeList.end(); nodeList.next())
    {
        aChild = TTNodePtr((TTPtr)nodeList.current()[0]);
        initNode(aChild);
    }
    
    return kTTErrNone;
}

TTErr TTApplication::DirectoryClear()
{
    // only for distant application
    if (this == accessApplicationLocal)
        return kTTErrGeneric;
    
    mDirectory->init();
	mDirectory->getRoot()->setObject(TTObject(this));
    
    return kTTErrNone;
}

TTErr TTApplication::DirectoryBuild()
{
    TTSymbol	protocolName;
    TTProtocolPtr aProtocol;
	TTValue		v, protocolNames;
    
    // only for distant application
    if (this == accessApplicationLocal)
        return kTTErrGeneric;
    
    // clear the directory before to not duplicate nodes
    DirectoryClear();
    
    // a distant application should have one protocol
    protocolNames = accessApplicationProtocolNames(mName);
	protocolName = protocolNames[0];

    aProtocol = accessProtocol(protocolName);
    if (aProtocol)
        return buildNode(aProtocol, kTTAdrsRoot);
    
    return kTTErrGeneric;
}

TTErr TTApplication::buildNode(TTProtocolPtr aProtocol, TTAddress anAddress)
{
    TTAddress   nextAddress, childAddress;
    TTSymbol    returnedType, service;
    TTValue     returnedChildren;
    TTValue     returnedAttributes;
    TTValue     returnedValue;
    TTObject    anObject;
    TTErr       err;
    
    err = aProtocol->SendDiscoverRequest(mName, anAddress, returnedType, returnedChildren, returnedAttributes);
    
    if (!err) {
        
        if (anAddress != kTTAdrsRoot) {
            
            if (mType == kTTSym_mirror) {
                
                TTSymbol    cachedAttribute;
                TTValue     attributesToCache, v, args, none;
                
                anObject = appendMirrorObject(aProtocol, anAddress, returnedType, returnedAttributes);
                
                if (anObject.valid()) {
                    
                    // cache attributes value
                    mCachedAttributes.getKeys(attributesToCache);
                    for (TTUInt32 i = 0; i < attributesToCache.size(); i++) {
                        
                        cachedAttribute = attributesToCache[i];
                        
                        // if the attribute exist
                        if (anObject.get(cachedAttribute, v) != kTTErrInvalidAttribute) {
                        
                            // cache the attribute value
                            args = cachedAttribute;
                            args.append((TTPtr)&v);
                            anObject.send("AttributeCache", args);
                        }
                    }
                }
            }
            
            else if (mType == kTTSym_proxy) {
                
                // DATA case
                if (returnedType == kTTSym_Data) {
                    
                    // get the service attribute
                    err = aProtocol->SendGetRequest(mName, anAddress.appendAttribute(kTTSym_service), returnedValue);
                    
                    if (!err) {
                        
                        service = returnedValue[0];
                        
                        anObject = appendProxyData(aProtocol, anAddress, service);
                    }
                }
                
                // other case ?
            }
        }
            
        
        for (TTUInt32 i = 0; i < returnedChildren.size(); i++) {
            
            childAddress = returnedChildren[i];
            nextAddress = anAddress.appendAddress(childAddress);
            
            // build child nodes (and report any error)
            if (buildNode(aProtocol, nextAddress))
                err = kTTErrGeneric;
        }
    }
    
    return err;
}

TTErr TTApplication::DirectoryObserve(const TTValue& inputValue, TTValue& outputValue)
{
    if (inputValue.size() == 1)
    {
        if (inputValue[0].type() == kTypeBoolean || inputValue[0].type() == kTypeInt32)
        {
            TTBoolean enable = inputValue[0];
            
            // only for distant application
            if (this == accessApplicationLocal)
                return kTTErrGeneric;
            
            // a distant application should have one protocol
            TTSymbol protocolName = accessApplicationProtocolNames(mName)[0];
            
            TTProtocolPtr aProtocol = accessProtocol(protocolName);
            if (aProtocol)
                return aProtocol->SendListenRequest(mName, kTTAdrsRoot.appendAttribute(TTSymbol("life")), enable);
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTApplication::AddDirectoryListener(const TTValue& inputValue, TTValue& outputValue)
{
	TTString	editKey;
	TTSymbol	appToNotify, key;
	TTAddress	whereToListen;
	TTObject	returnValueCallback;
	TTValue		cacheElement, none;
	TTErr		err;
	
	appToNotify = inputValue[1];
	whereToListen = inputValue[2];
	
	editKey = appToNotify.c_str();
	editKey += "<>";
	editKey	+= whereToListen.c_str();
	key = TTSymbol(editKey);
	
	// if this listener doesn't exist yet
	if (mDirectoryListenersCache.lookup(key, cacheElement)) {
		
		// prepare a callback based on ProtocolDirectoryCallback
		returnValueCallback = TTObject("callback");
		
		returnValueCallback.set(kTTSym_baton, inputValue);
		returnValueCallback.set(kTTSym_function, TTPtr(&TTProtocolDirectoryCallback));
		
		err = mDirectory->addObserverForNotifications(whereToListen, returnValueCallback); // ask to be notified for any address below
		
		if (!err) {
			
			// cache the observer in the directoryListenersCache
			cacheElement.append(returnValueCallback);
			return mDirectoryListenersCache.append(key, cacheElement);
		}
		else
			; // TODO : observe the directory in order to add the listener later
	}
    
	return kTTErrGeneric;
}

TTErr TTApplication::RemoveDirectoryListener(const TTValue& inputValue, TTValue& outputValue)
{
	TTString	editKey;
	TTSymbol	appToNotify, key;
	TTAddress	whereToListen;
	TTObject	returnValueCallback;
	TTValue		cacheElement;
	
	appToNotify = inputValue[0];
	whereToListen = inputValue[1];
	
	editKey = appToNotify.c_str();
	editKey += "<>";
	editKey	+= whereToListen.c_str();
	key = TTSymbol(editKey);
	
	// if this listener exists
	if (!mDirectoryListenersCache.lookup(key, cacheElement)) {
        
		returnValueCallback = cacheElement[0];
		mDirectory->removeObserverForNotifications(whereToListen, returnValueCallback);
		
		return mDirectoryListenersCache.remove(key);
	}
	
	return kTTErrGeneric;
}

TTErr TTApplication::AddAttributeListener(const TTValue& inputValue, TTValue& outputValue)
{
	TTString		editKey;
	TTSymbol		appToNotify, key;
	TTAddress		whereToListen;
	TTList			aNodeList;
	TTNodePtr		nodeToListen;
	TTObject		anObject;
	TTAttributePtr	anAttribute;
	TTValue			cacheElement, none;
	TTErr			err;
	
	appToNotify = inputValue[1];
	whereToListen = inputValue[2];
	
	editKey = appToNotify.c_str();
	editKey += "<>";
	editKey	+= whereToListen.c_str();
	key = TTSymbol(editKey);
    
	// if this listener doesn't exist yet
	if (mAttributeListenersCache.lookup(key, cacheElement)) {
		
		err = mDirectory->Lookup(whereToListen, aNodeList, &nodeToListen);
		
		if (!err) {
			
			for (aNodeList.begin(); aNodeList.end(); aNodeList.next())
			{
				// get a node from the selection
				nodeToListen = TTNodePtr((TTPtr)aNodeList.current()[0]);
				
				anObject = nodeToListen->getObject();
				if (anObject.valid()) {
					
					// create an Attribute observer
					anAttribute = NULL;
					err = anObject.instance()->findAttribute(whereToListen.getAttribute(), &anAttribute);
					
					if (!err) {
						// prepare a callback based on ProtocolAttributeCallback
						TTObject returnValueCallback = TTObject("callback");
						
						returnValueCallback.set(kTTSym_baton, inputValue);
						returnValueCallback.set(kTTSym_function, TTPtr(&TTProtocolAttributeCallback));
						
						anAttribute->registerObserverForNotifications(returnValueCallback);
						
						// we have now passed the returnValueCallback pointer to the callback
						// it will be fetched back out to free the object in removeAttributeListener()
						
						// cache the listener in the attributeListenersCache
						cacheElement.append(returnValueCallback);
					}
				}
			}
			
			return mAttributeListenersCache.append(key, cacheElement);
		}
		else
			; // TODO : observe the directory in order to add the listener later
	}
	
    // don't return an error if the listening is already enabled
	return kTTErrNone;
}

TTErr TTApplication::RemoveAttributeListener(const TTValue& inputValue, TTValue& outputValue)
{
	TTString		editKey;
	TTSymbol		appToNotify, key;
	TTAddress		whereToListen;
	TTList			aNodeList;
	TTNodePtr		nodeToListen;
	TTObject		anObject;
	TTAttributePtr	anAttribute;
	TTValue			cacheElement;
	TTUInt32		i;
	TTErr			err;
	
	appToNotify = inputValue[0];
	whereToListen = inputValue[1];
	
	editKey = appToNotify.c_str();
	editKey += "<>";
	editKey	+= whereToListen.c_str();
	key = TTSymbol(editKey);
    
	// if this listener exists
	if (!mAttributeListenersCache.lookup(key, cacheElement)) {
		
		err = mDirectory->Lookup(whereToListen, aNodeList, &nodeToListen);
		
		if (!err) {
			
			i = 0;
			for (aNodeList.begin(); aNodeList.end(); aNodeList.next())
			{
				// get a node from the selection
				nodeToListen = TTNodePtr((TTPtr)aNodeList.current()[0]);
				
				anObject = nodeToListen->getObject();
				if (anObject.valid()) {
					
					// delete Attribute observer
					anAttribute = NULL;
					err = anObject.instance()->findAttribute(whereToListen.getAttribute(), &anAttribute);
					
					if (!err) {
                        
                        TTObject returnValueCallback = cacheElement[i];
						
						anAttribute->unregisterObserverForNotifications(returnValueCallback);
						
						i++;
					}
				}
			}
			
			return mAttributeListenersCache.remove(key);
		}
	}
    
	return kTTErrGeneric;
}

TTErr TTApplication::UpdateDirectory(const TTValue& inputValue, TTValue& outputValue)
{
	TTAddress	whereComesFrom;
	TTValuePtr	newValue;
    TTValue     none;
	TTSymbol	type, protocolName;;
    TTList      aNodeList;
    TTNodePtr   aNode;
    TTProtocolPtr aProtocol;
    TTErr       err;
	
	whereComesFrom = inputValue[0];
	newValue = TTValuePtr((TTPtr)inputValue[1]);
	
    // in learn mode we can only create Data
    if (mLearn)
        type = kTTSym_Data;
    else
        type = newValue[0];
    
    err = mDirectory->Lookup(whereComesFrom, aNodeList, &aNode);
	
    // if the node doesn't exist already
	if (type != TTSymbol("delete") && err) {
        
        // a distant application should have one protocol
        protocolName = accessApplicationProtocolNames(mName)[0];
        
        aProtocol = accessProtocol(protocolName);
        if (aProtocol) {
            
            if (mType == kTTSym_mirror)
                // instantiate Mirror object for distant application
                appendMirrorObject(aProtocol, whereComesFrom, type, none);
            
            if (mType == kTTSym_proxy) {
                
                // instantiate proxy Data object for distant application
                TTObject aData = appendProxyData(aProtocol, whereComesFrom, kTTSym_parameter);
                
                // TODO : how to allow to choose what to create when learning ?
                
                // initialize the value with the incoming value
                aData.set("value", *newValue);
            }
            
            return kTTErrNone;
        }
	}
    
    // if the node exists : remove it
	else if (!err && type == TTSymbol("delete"))
        return mDirectory->TTNodeRemove(whereComesFrom);
	
	return kTTErrGeneric;
}

TTErr TTApplication::UpdateAttribute(const TTValue& inputValue, TTValue& outputValue)
{
	TTNodePtr	nodeToUpdate;
	TTAddress	whereComesFrom;
	TTValuePtr	newValue;
	TTObject	anObject;
	TTErr		err;

	if (mLearn)
        UpdateDirectory(inputValue, outputValue);
	
	whereComesFrom = inputValue[0];
	newValue = TTValuePtr((TTPtr)inputValue[1]);
	
	err = mDirectory->getTTNode(whereComesFrom, &nodeToUpdate);
	
	if (!err) {
		
		anObject = nodeToUpdate->getObject();
		if (anObject.valid()) {
            
			if (anObject.name() == kTTSym_Mirror)
				return TTMirrorPtr(anObject.instance())->updateAttributeValue(whereComesFrom.getAttribute(), *newValue);
            else
                return anObject.set(whereComesFrom.getAttribute(), *newValue);
        }
	}
	
	return kTTErrGeneric;
}

TTErr TTApplication::ObjectRegister(const TTValue& inputValue, TTValue& outputValue)
{
    // get address and object
    if (inputValue.size() >= 2) {
        
        if (inputValue[0].type() == kTypeSymbol && inputValue[1].type() == kTypeObject) {
            
            TTAddress   address = inputValue[0];
            TTObject    object = inputValue[1];
            
            // get optional context
            TTPtr context = NULL;
            if (inputValue.size() == 3)
                if (inputValue[2].type() == kTypePointer)
                    context = inputValue[2];
            
            // register the object
            TTNodePtr node;
            TTBoolean newInstanceCreated;
            
            if (address == kTTAdrsRoot)
                return mDirectory->getRoot()->setObject(object);
            
            else {
                TTErr err = mDirectory->TTNodeCreate(address, object, context, &node, &newInstanceCreated);
                
                // return the effective address
                if (!err) {
                    
                    if (newInstanceCreated)
                        node->getAddress(address);
                    
                    outputValue = address;
                }
                
                return err;
            }
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTApplication::ObjectUnregister(const TTValue& inputValue, TTValue& outputValue)
{
    // get address
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeSymbol) {
            
            TTAddress address = inputValue[0];
            
            // retreive the node
            TTNodePtr node;
            
            if (!mDirectory->getTTNode(address, &node)) {
                
                // return the object
                outputValue = node->getObject();
                
                // unregister it
                if (address == kTTAdrsRoot) {
                    TTObject empty;
                    return node->setObject(empty);
                }
                else
                    return mDirectory->TTNodeRemove(address);
            }
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTApplication::ObjectRename(const TTValue& inputValue, TTValue& outputValue)
{
    if (inputValue.size() == 2) {
        
        if (inputValue[0].type() == kTypeObject && inputValue[1].type() == kTypeSymbol) {
            
            TTObject    anObject = inputValue[0];
            TTAddress   newNameInstance = inputValue[1];
            
            // check it is name.instance only
            if (newNameInstance.getType() == kAddressRelative && newNameInstance.getParent() == kTTAdrsEmpty) {
                
                TTList      aNodeList;
                TTBoolean   isThere;
                TTNodePtr   aNode;
                
                // search the object from the root
                aNodeList.append(mDirectory->getRoot());
                
                TTErr err = mDirectory->IsThere(&aNodeList, &testNodeObject, anObject.instance(), &isThere, &aNode);
                
                if (!err && isThere) {
                    
                    TTBoolean   newInstanceCreated;
                    TTSymbol    newInstance, effectiveNameInstance;
                    TTAddress   effectiveAddress;
                    
                    aNode->setNameInstance(newNameInstance, newInstance, &newInstanceCreated);
                    
                    aNode->getAddress(effectiveAddress);
                    
                    outputValue = effectiveAddress.getNameInstance();
                    
                    return kTTErrNone;
                }
            }
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTApplication::ObjectRetreive(const TTValue& inputValue, TTValue& outputValue)
{
    // get address
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeSymbol) {
            
            TTAddress   address = inputValue[0];
            TTList		aNodeList;
            TTNodePtr	aNode;
            
            // allow to use wilcards
            TTErr err = mDirectory->Lookup(address, aNodeList, &aNode);
            
            if (!err) {
                
                for (aNodeList.begin(); aNodeList.end(); aNodeList.next())
                {
                    // get a node from the selection
                    aNode = TTNodePtr((TTPtr)aNodeList.current()[0]);
                    
                    TTObject anObject = aNode->getObject();
                    
                    if (anObject.valid()) {
                        
                        // return the object
                        outputValue.append(anObject);
                    }
                }
                
                return kTTErrNone;
            }
            
            return err;
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTApplication::ObjectSend(const TTValue& inputValue, TTValue& outputValue)
{
    std::cout << "ObjectSend" << std::endl;
    // get address
    if (inputValue.size() >= 1) {
        
        if (inputValue[0].type() == kTypeSymbol) {
            
            TTAddress   address = inputValue[0];
            TTList		aNodeList;
            TTNodePtr	aNode;
            
            // allow to use wilcards
            TTErr err = mDirectory->Lookup(address, aNodeList, &aNode);
            
            if (!err) {
                
                std::cout << "ok" << std::endl;
                
                TTValue valueToSend, none;
                
                // remove the address part to get the value to send
                valueToSend.copyFrom(inputValue, 1);
                
                for (aNodeList.begin(); aNodeList.end(); aNodeList.next())
                {
                    // get a node from the selection
                    aNode = TTNodePtr((TTPtr)aNodeList.current()[0]);
                    
                    TTObject anObject = aNode->getObject();
                    
                    if (anObject.valid()) {
                        
                        // TTData case : for value attribute use Command message
                        if (anObject.name() == kTTSym_Data) {
                            
                            if (address.getAttribute() == kTTSym_value)
                                err = anObject.send(kTTSym_Command, valueToSend);
                            else
                                err = anObject.set(address.getAttribute(), valueToSend);
                        }
                        else {
                            // try to set an attribute
                            err = anObject.set(address.getAttribute(), valueToSend);
                            
                            // try to use a message
                            if (err == address)
                                err = anObject.send(address.getAttribute(), valueToSend);
                        }
                    }
                    
                    if (err)
                        break;
                }
                
                return kTTErrNone;
            }
            // distant application case : try to send the message even if it is not in the directory
            else if (this != accessApplicationLocal) {
                
                TTSymbol	protocolName;
                TTProtocolPtr aProtocol;
                TTValue		valueToSend, protocolNames;
                
                // remove the address part to get the value to send
                valueToSend.copyFrom(inputValue, 1);
                
                // a distant application should have one protocol
                protocolNames = accessApplicationProtocolNames(mName);
                protocolName = protocolNames[0];
                
                aProtocol = accessProtocol(protocolName);
                if (aProtocol)
                    return aProtocol->SendSetRequest(mName, address, valueToSend);
            }
            
            return err;
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTApplication::getAllAppNames(TTValue& value)
{
	if (mAppToTT.isEmpty())
		value = kTTSymEmpty;
	else
		mAppToTT.getKeys(value);
	
	return kTTErrNone;
}

TTErr TTApplication::getAllTTNames(TTValue& value)
{
	if (mTTToApp.isEmpty())
		value = kTTSymEmpty;
	else
		mTTToApp.getKeys(value);
	
	return kTTErrNone;
}

TTErr TTApplication::ConvertToAppName(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		c;
	TTSymbol	ttName;
	TTSymbol	appName;
	
	// if there is only 1 symbol : replace value directly by the found one.
	// because it's possible to have conversion containing several appNames for 1 ttname
	if (inputValue.size() == 1) {
        
		if (inputValue[0].type() == kTypeSymbol){
			
			ttName = inputValue[0];
			return this->mTTToApp.lookup(ttName, outputValue);
		}
    }
	
	// else convert each symbol of the value.
	// !!! in this case 1 to many conversion is not handled
	for (TTUInt8 i = 0; i < inputValue.size(); i++)
		if (inputValue[i].type() == kTypeSymbol) {
			ttName = inputValue[i];
			if (!this->mTTToApp.lookup(ttName, c)) {
				appName = c[0];
				outputValue[i] = appName;
			}
		}
	
	return kTTErrNone;
}

TTErr TTApplication::ConvertToTTName(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		c;
	TTSymbol	appName;
	TTSymbol	ttName;
	
	// if there is only 1 symbol : replace value directly by the founded one.
	// because it's possible to have conversion containing several ttNames for 1 appName
	if (inputValue.size() == 1) {
        
		if (inputValue[0].type() == kTypeSymbol){
			
			appName = inputValue[0];
			return this->mAppToTT.lookup(appName, outputValue);
		}
    }
	
	// else convert each symbol of the value.
	// !!! in this case 1 to many conversion is not handled
	for (TTUInt8 i = 0; i < inputValue.size(); i++)
		if (inputValue[i].type() == kTypeSymbol) {
			appName = inputValue[i];
			if (!this->mAppToTT.lookup(appName, c)) {
				ttName = c[0];
				outputValue[i] = ttName;
			}
		}
	
	return kTTErrNone;
}

TTErr TTApplication::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
    
    // Start "Application" xml node
    xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "application");
    
    // Write attributes
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST mName.c_str());
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "author", BAD_CAST mAuthor.c_str());
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "version", BAD_CAST mVersion.c_str());
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "type", BAD_CAST mType.c_str());
    
    // write cached attributed for mirror application only
    if (mType == kTTSym_mirror) {
        
        TTValue v;
        mCachedAttributes.getKeys(v);
        v.toString();
        TTString s = TTString(v[0]);
        xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "cachedAttributes", BAD_CAST s.c_str());
    }
    
    // Write all the namespace starting from the root of the directory
	if (mDirectory)
        writeNodeAsXml(aXmlHandler, mDirectory->getRoot());
    
    // End xml node
    xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
    
	return kTTErrNone;
}

void TTApplication::writeNodeAsXml(TTXmlHandlerPtr aXmlHandler, TTNodePtr aNode)
{
	TTAddress nameInstance;
	TTSymbol  objectName, attributeName;
	TTObject  anObject;
	TTValue   attributeNameList, v, c, none;
	TTList    nodeList;
	TTNodePtr aChild;
	TTString  aString;
    
    // Write node's object attributes
    
    anObject = aNode->getObject();
    if (anObject.valid()) {
        
        objectName = anObject.name();
        
        if (objectName == kTTSym_Mirror)
            objectName = TTMirrorPtr(anObject.instance())->getName();
        
    }
    
    // don't write the application that is registered under the root
    if (objectName != kTTSym_Application) {
        
        // Write description attribute as an xml comment for local or proxy application
        if (mType != kTTSym_mirror) {
        
            if (anObject.valid()) {
            
                if (!anObject.get(kTTSym_description, v)) {
                    
                    v.toString();
                    aString = TTString(v[0]);
                    xmlTextWriterWriteFormatComment((xmlTextWriterPtr)aXmlHandler->mWriter, "%s", BAD_CAST aString.data());
                }
            }
        }
        
        // Start object type xml node
        xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "node");
        
        // Write address attribute "name.instance"
        nameInstance = TTAddress(NO_DIRECTORY, NO_PARENT, aNode->getName(), aNode->getInstance(), NO_ATTRIBUTE);
        xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter,  BAD_CAST "address", BAD_CAST nameInstance.c_str());
        
        // Write object type attribute
        if (objectName != kTTSymEmpty)
            xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "object", BAD_CAST objectName.c_str());
        
        // TODO : allow to choose which kind of object can write its attributes or not
        if (objectName != kTTSym_Data &&
            objectName != kTTSym_Mirror &&
            objectName != kTTSym_Container &&
            objectName != kTTSym_Input &&
            objectName != kTTSym_InputAudio &&
            objectName != kTTSym_Output &&
            objectName != kTTSym_OutputAudio)
            ; // do nothing
        
        // Write attributes
        else if (anObject.valid()) {
            
            anObject.attributes(attributeNameList);
            
            for(TTUInt32 i = 0; i < attributeNameList.size(); i++)
            {
                attributeName = attributeNameList[i];
                
                // Filter attribute names
                if (attributeName != kTTSym_description &&
                    attributeName != kTTSym_value &&
                    attributeName != kTTSym_address &&
                    attributeName != kTTSym_bypass &&
                    attributeName != kTTSym_activityIn &&
                    attributeName != kTTSym_activityOut &&
                    attributeName != kTTSym_rampStatus &&
                    attributeName != kTTSym_baton &&            // because #TTData inherits #TTCallback
                    attributeName != kTTSym_object &&           // because #TTData inherits #TTCallback
                    attributeName != kTTSym_notification &&     // because #TTData inherits #TTCallback
                    attributeName != kTTSym_function)           // because #TTData inherits #TTCallback
                 {
                    
                    // write only cached attributes
                    if (mType == kTTSym_mirror)
                        if (mCachedAttributes.lookup(attributeName, none))
                            continue;
                    
                    anObject.get(attributeName, v);
                    
                    if (v.empty())
                        continue;
                    
                    v.toString();
                    aString = TTString(v[0]);
                    
                    if (aString.empty())
                        continue;
                    
                    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST attributeName.c_str(), BAD_CAST aString.data());
                }
            }
            
            // TODO : Write messages ?
        }
    }
    
    // Write nodes below
    aNode->getChildren(S_WILDCARD, S_WILDCARD, nodeList);
    
    for (nodeList.begin(); nodeList.end(); nodeList.next())
    {
        aChild = TTNodePtr((TTPtr)nodeList.current()[0]);
        writeNodeAsXml(aXmlHandler, aChild);
    }
    
    // End xml node
    // don't write the application that is registered under the root
    if (objectName != kTTSym_Application)
        xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
}

TTErr TTApplication::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
    
	TTString	anAppKey, aTTKey;
	TTValue		appValue, ttValue, v, nameValue, parameterValue;
	
	// Switch on the name of the XML node
	
	// Starts reading
	if (aXmlHandler->mXmlNodeName == kTTSym_xmlHandlerReadingStarts)
        return kTTErrNone;
	
	// Ends reading
	if (aXmlHandler->mXmlNodeName == kTTSym_xmlHandlerReadingEnds)
		return kTTErrNone;
	
	// Comment Node
	if (aXmlHandler->mXmlNodeName == kTTSym_xmlHandlerReadingComment)
		return kTTErrNone;
    
    // Conversion Table node
    if (aXmlHandler->mXmlNodeName == TTSymbol("conversionTable")) {
        
        if (aXmlHandler->mXmlNodeStart)
            mAppToTT.clear();
        
		return kTTErrNone;
	}
	
	// Entry node
	if (aXmlHandler->mXmlNodeName == TTSymbol("entry")) {
        
		// get App Symbol
		if (xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, BAD_CAST "App") == 1) {
			aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), appValue);
			v = appValue;
			v.toString();
			anAppKey = TTString(v[0]);
		}
		
		// get TT Value
		if (xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, BAD_CAST "TT") == 1) {
			aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), ttValue);
			v = ttValue;
			v.toString();
			aTTKey = TTString(v[0]);
		}
		
		mAppToTT.append(TTSymbol(anAppKey), ttValue);		// here we register the entire value to handle 1 to many conversion
		mTTToApp.append(TTSymbol(aTTKey), appValue);			// here we register the entire value to handle 1 to many conversion
        
        return kTTErrNone;
	}
	
	// Application node
	if (aXmlHandler->mXmlNodeName == TTSymbol("application")) {
		
        if (aXmlHandler->mXmlNodeStart) {
            
            DirectoryClear();
            mTempAddress = kTTAdrsRoot;
            
            // get the type attribute
            if (xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, (const xmlChar*)("type")) == 1) {
                
                aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v);
                
                if (v.size() == 1) {
                    
                    if (v[0].type() == kTypeSymbol) {
                        
                        mType = v[0];
                    }
                }
            }
            
            // get the author attribute
            if (xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, (const xmlChar*)("author")) == 1) {
                
                aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v, YES);
                
                if (v.size() == 1) {
                    
                    if (v[0].type() == kTypeSymbol) {
                        
                        mAuthor = v[0];
                    }
                }
            }
            
            // get the version attribute
            if (xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, (const xmlChar*)("version")) == 1) {
                
                aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v);
                
                if (v.size() == 1) {
                    
                    if (v[0].type() == kTypeSymbol) {
                        
                        mVersion = v[0];
                    }
                }
            }
            
            // get the cached attributes
            if (xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, (const xmlChar*)("cachedAttributes")) == 1) {
                
                aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v);
                setCachedAttributes(v);
            }
        }
        
        return kTTErrNone;
	}
    
    // Any other node
    readNodeFromXml(aXmlHandler);
	
	return kTTErrNone;
}

void TTApplication::readNodeFromXml(TTXmlHandlerPtr aXmlHandler)
{
	TTSymbol		objectName, protocolName, attributeName, attributeToFilterName;
    TTAddress       address;
    TTBoolean       useInstanceAsName = NO;
    TTInt32         instance;
    TTProtocolPtr     aProtocol;
    TTObject        anObject;
	TTValue			v, protocolNames, none;
    TTHash          attributesToFilter;
    
    // when a node starts : append address to the current temp address
    if (aXmlHandler->mXmlNodeStart) {
        
        // the address attribute can store names which are problematic with xml (like number)
        if (xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, (const xmlChar*)("address")) == 1) {
            
            aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v, YES, YES);
            
            if (v.size() == 1) {
                
                if (v[0].type() == kTypeSymbol) {
                    
                    address = v[0];
                    
                    if (address == TTSymbol("instance"))
                        useInstanceAsName = YES;
                    else
                        mTempAddress = mTempAddress.appendAddress(address);
                }
            }
        }
        
        // optionnal : use the node name to build the address
        // NOTE : we keep this option for backward compatibility but now the node name is always stored into address attribute (see in : writeNodeAsXml)
        else
            mTempAddress = mTempAddress.appendAddress(TTAddress(aXmlHandler->mXmlNodeName));
        
        // optionnal : the instance attribute allow to easily duplicate a namespace part
        instance = 1;
        if (xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, (const xmlChar*)("instance")) == 1) {
            
            aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v);
            
            if (v.size() == 1) {
                
                if (v[0].type() == kTypeInt32) {
                    
                    instance = v[0];
                    
                    // if we don't use the instance as a name
                    if (!useInstanceAsName)
                    {
                        // start instance numbering from 1 (and let the nodelib duplication mechanism do the rest)
                        mTempAddress = mTempAddress.appendInstance(TTSymbol("1"));
                        
                        // if the node is not empty : we have to duplicate its content too !
                        if (!aXmlHandler->mXmlNodeIsEmpty)
                        {
                            mFoldAddress = mTempAddress;
                            mFolderSize = instance;
                            TTLogMessage("TTApplication::readNodeFromXml : %s is a fold address to duplicate %d times\n", mFoldAddress.c_str(), mFolderSize);
                        }
                    }
                }
            }
        }
        // aXmlHandler->mXmlNodeStart : NO
        else
        {
            // end of content duplication
            if (mFoldAddress != kTTAdrsEmpty && mTempAddress == mFoldAddress)
            {
                TTLogMessage("TTApplication::readNodeFromXml : %s fold address ends\n", mTempAddress.c_str());
                mFoldAddress = kTTAdrsEmpty;
                mFolderSize = 0;
            }
        }
        
        // is a parent part of the address is the fold address ?
        TTUInt32    duplicate = 1;
        TTInt8      duplicateDepth = 0;
        if (mFoldAddress != kTTAdrsEmpty && mFoldAddress != mTempAddress)
        {
            TTAddressComparisonFlag comparison = mTempAddress.compare(mFoldAddress, duplicateDepth);
            
            if (comparison == kAddressLower)
            {
                duplicate = mFolderSize;
            }
        }
        
        // read the file several times if duplicate > 1
        for (TTUInt32 d = 1; d <= duplicate; d++)
        {
            // in case of content duplication : duplicate fold address part
            TTAddress duplicateFoldAddress;
            if (mFoldAddress != kTTAdrsEmpty)
            {
                v = TTInt32(d);
                v.toString();
                TTString s = TTString(v[0]);
                duplicateFoldAddress = mFoldAddress.appendInstance(s);
            }
            
            // read the file several times if instance > 1
			for (TTInt32 i = 0; i < instance; i++)
            {
                if (useInstanceAsName)
                {
                    // start numbering from 1
                    v = TTInt32(i+1);
                    v.toString();
                    TTString s = TTString(v[0]);
                    address = mTempAddress.appendAddress(TTAddress(s.data()));
                }
                else
                    address = mTempAddress;
                
                // in case of content duplication : merge duplicate fold address part and
                if (mFoldAddress != kTTAdrsEmpty && duplicateDepth > 0)
                {
                    TTAddress foldPart;
                    TTAddress tempPart;
                    TTUInt8 splitAt = address.countSeparator() - duplicateDepth;
                    if (useInstanceAsName)
                        splitAt--;
                    address.splitAt(splitAt, foldPart, tempPart);
                    address = duplicateFoldAddress.appendAddress(tempPart);
                }
                
                // get the object name
                objectName = kTTSymEmpty;
                if (xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, (const xmlChar*)("object")) == 1) {
                    
                    aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v);
                    
                    if (v.size() == 1) {
                        
                        if (v[0].type() == kTypeSymbol)
                            objectName = v[0];
                    }
                }
                
                // a distant application should have one protocol
                protocolNames = accessApplicationProtocolNames(mName);
                protocolName = protocolNames[0];
                
                aProtocol = accessProtocol(protocolName);
                if (aProtocol) {
                    
                    // for mirror application
                    if (mType == kTTSym_mirror) {
                        
                        // instantiate a mirror object
                        anObject = appendMirrorObject(aProtocol, address, objectName, none);
                        
                    }
                    // for proxy appplication
                    else if (mType == kTTSym_proxy) {
                        
                        // instantiate the real object
                        
                        // DATA case
                        if (objectName == kTTSym_Data) {
                            
                            // get the data service
                            if (xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, (const xmlChar*)("service")) == 1) {
                                
                                aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v);
                                
                                if (v.size() == 1) {
                                    
                                    if (v[0].type() == kTypeSymbol) {
                                        
                                        // instantiate a proxy data
                                        anObject = appendProxyData(aProtocol, address, v[0]);
                                        
                                        // filter service attribute for the parsing of all attributes
                                        attributesToFilter.append(kTTSym_service, none);
                                        
                                        // get the data type
                                        if (xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, (const xmlChar*)("type")) == 1) {
                                            
                                            aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v);
                                            
                                            if (v.size() == 1) {
                                                
                                                if (v[0].type() == kTypeSymbol) {
                                                    
                                                    // set data type
                                                    anObject.set(kTTSym_type, v);
                                                    
                                                    // filter type attribute for the parsing of all attributes
                                                    attributesToFilter.append(kTTSym_type, none);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        else if (objectName == kTTSym_Container) {
                            
                            // instantiate a proxy container
                            anObject = appendProxyContainer(aProtocol, address);
                            
                        }
                        else if (objectName == kTTSymEmpty ||
                                 objectName == kTTSym_none) // for backward compatibility because we don't write anything when there is no object
                        {
                            
                            // register no object into the directory
                            TTNodePtr   aNode;
                            TTObject    empty;
                            TTBoolean   newInstanceCreated;
                            
                            this->mDirectory->TTNodeCreate(address, empty, NULL, &aNode, &newInstanceCreated);
                        }
                        
                        // OTHER case ? Input, Output, Mapper ?
                        
                    }
                    
                    if (anObject.valid()) {
                        
                        // cache attributes (for mirror application only)
                        if (mType == kTTSym_mirror) {
                            
                            TTSymbol        cachedAttribute;
                            TTValue         attributesToCache, v, args, none;
                            TTAttributePtr  attribute;
                            
                            // cache attributes value
                            mCachedAttributes.getKeys(attributesToCache);
                            for (TTUInt32 i = 0; i < attributesToCache.size(); i++) {
                                
                                cachedAttribute = attributesToCache[i];
                                
                                // if the attribute exist
                                if (!anObject.instance()->findAttribute(cachedAttribute, &attribute)) {
                                    
                                    // cache the attribute with no value (see after)
                                    args = cachedAttribute;
                                    anObject.send("AttributeCache", args);
                                }
                            }
                        }
                        
                        // return to the first attribute
                        xmlTextReaderMoveToFirstAttribute((xmlTextReaderPtr)aXmlHandler->mReader);
                        
                        // get all object attributes and their value
                        do {
                            // get attribute name
                            aXmlHandler->fromXmlChar(xmlTextReaderName((xmlTextReaderPtr)aXmlHandler->mReader), v);
                            
                            if (v.size() == 1) {
                                
                                if (v[0].type() == kTypeSymbol) {
                                    
                                    attributeName = v[0];
                                    
                                    // filter attributes
                                    if (!attributesToFilter.lookup(attributeName, none))
                                        continue;
                                    
                                    // get attribute value
                                    aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v);
                                    
                                    // if the attribute is not cached or in proxy application case
                                    anObject.set(attributeName, v);
                                }
                            }
                        } while (xmlTextReaderMoveToNextAttribute((xmlTextReaderPtr)aXmlHandler->mReader) == 1);
                    }
                }
            } // for instance
        } // for duplication
        
        // when a node is empty : keep the parent address for next nodes
        // but if we use instance as name : don't
        if (aXmlHandler->mXmlNodeIsEmpty && !useInstanceAsName)
            mTempAddress = mTempAddress.getParent();
    }
    
    // when a node ends : keep the parent address for next nodes
    else
        mTempAddress = mTempAddress.getParent();
}

TTErr TTApplication::ProxyDataInstantiate(const TTValue& inputValue, TTValue& outputValue)
{
    // for proxy application only
    if (mType == kTTSym_proxy) {
        
        // a distant application should have one protocol
        TTValue protocolNames = accessApplicationProtocolNames(mName);
        TTSymbol protocolName = protocolNames[0];
        
        TTProtocolPtr aProtocol = accessProtocol(protocolName);
        if (aProtocol) {
            
            if (inputValue.size() == 2) {
                
                if (inputValue[0].type() == kTypeSymbol && inputValue[1].type() == kTypeSymbol) {
                    
                    TTAddress address = inputValue[0];
                    TTSymbol service = inputValue[1];
                    
                    // instantiate a proxy data object
                    outputValue = appendProxyData(aProtocol, address.normalize(), service);
                    return kTTErrNone;
                }
            }
        }
    }
    
    return kTTErrGeneric;
}

TTObject TTApplication::appendMirrorObject(TTProtocolPtr aProtocol, TTAddress anAddress, TTSymbol objectName, TTValue& attributesName)
{
    TTObject    aMirror;
    TTNodePtr   aNode;
	TTBoolean   newInstanceCreated, allowGetRequest, allowSetRequest, allowListenRequest;
	TTObject    getAttributeCallback, setAttributeCallback, sendMessageCallback, listenAttributeCallback;
    TTObject    empty;
	TTValue     baton;
    
    if (objectName != kTTSymEmpty && objectName != kTTSym_none) {
        
        TTValue none, v, args = objectName;
        
        aProtocol->getAttributeValue(TTSymbol("get"), allowGetRequest);
        
        if (allowGetRequest) {
            
            getAttributeCallback = TTObject("callback");
            // TODO: How to use TTObject instead of TTObjectBasePtr here ?
            baton = TTValue(TTObject(TTObjectBasePtr(aProtocol)), mName, anAddress);
            getAttributeCallback.set(kTTSym_baton, baton);
            getAttributeCallback.set(kTTSym_function, TTPtr(&TTProtocolGetAttributeCallback));
            args.append(getAttributeCallback);
        }
        else
            args.append(empty);
        
        aProtocol->getAttributeValue(TTSymbol("set"), allowSetRequest);
        
        if (allowSetRequest) {
            
            setAttributeCallback = TTObject("callback");
            // TODO: How to use TTObject instead of TTObjectBasePtr here ?
            baton = TTValue(TTObject(TTObjectBasePtr(aProtocol)), mName, anAddress);
            setAttributeCallback.set(kTTSym_baton, baton);
            setAttributeCallback.set(kTTSym_function, TTPtr(&TTProtocolSetAttributeCallback));
            args.append(setAttributeCallback);
            
            sendMessageCallback = TTObject("callback");
            // TODO: How to use TTObject instead of TTObjectBasePtr here ?
            baton = TTValue(TTObject(TTObjectBasePtr(aProtocol)), mName, anAddress);
            sendMessageCallback.set(kTTSym_baton, baton);
            sendMessageCallback.set(kTTSym_function, TTPtr(&TTProtocolSendMessageCallback));
            args.append(sendMessageCallback);
        }
        else {
            
            args.append(empty);
            args.append(empty);
        }
        
        aProtocol->getAttributeValue(TTSymbol("listen"), allowListenRequest);
        
        if (allowListenRequest) {
            
            listenAttributeCallback = TTObject("callback");
            // TODO: How to use TTObject instead of TTObjectBasePtr here ?
            baton = TTValue(TTObject(TTObjectBasePtr(aProtocol)), mName, anAddress);
            listenAttributeCallback.set(kTTSym_baton, baton);
            listenAttributeCallback.set(kTTSym_function, TTPtr(&TTProtocolListenAttributeCallback));
            args.append(listenAttributeCallback);
        }
        else
            args.append(empty);
        
        aMirror = TTObject(kTTSym_Mirror, args);
        
        // if the Mirror cannot instantiate attributes
        aMirror.attributes(v);
        if (v.size() == 0)
            aMirror.send("AttributesInstantiate", attributesName);
        
        // register object into the directory
        this->mDirectory->TTNodeCreate(anAddress, aMirror, NULL, &aNode, &newInstanceCreated);
    }
    
    return aMirror;
}

TTObject TTApplication::appendProxyData(TTProtocolPtr aProtocol, TTAddress anAddress, TTSymbol service)
{
    TTObject    aData;
    TTValue     baton;
    TTNodePtr   aNode;
	TTBoolean	newInstanceCreated;
    
    aData = TTObject(kTTSym_Data, service);
    
    baton = TTValue(TTObject(TTObjectBasePtr(aProtocol)), mName, anAddress);
    aData.set(kTTSym_baton, baton);
    aData.set(kTTSym_function, TTPtr(&TTApplicationProxyDataValueCallback));
    
    // register object into the directory
    this->mDirectory->TTNodeCreate(anAddress, aData, NULL, &aNode, &newInstanceCreated);
    
    return aData;
}

TTObject TTApplication::appendProxyContainer(TTProtocolPtr aProtocol, TTAddress anAddress)
{
    TTObject    aContainer;
    TTNodePtr   aNode;
	TTBoolean   newInstanceCreated;
    
    aContainer = TTObject(kTTSym_Container);
    
    // register object into the directory
    this->mDirectory->TTNodeCreate(anAddress, aContainer, aContainer.instance(), &aNode, &newInstanceCreated);
    
    return aContainer;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTApplicationProxyDataValueCallback(const TTValue& baton, const TTValue& data)
{
    TTValue v = kTTSym_value;
    v.append((TTPtr)&data);
    
    return TTProtocolSetAttributeCallback(baton, v);
}