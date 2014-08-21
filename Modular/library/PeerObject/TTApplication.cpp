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
mDebug(NO),
mDirectory(NULL),
mName(kTTSymEmpty),
mType(kTTSym_local),
mVersion(kTTSymEmpty),
mAuthor(kTTSymEmpty),
mActivity(NO),
mLearn(NO),
mDirectoryListenersCache(NULL),
mAttributeListenersCache(NULL),
mAppToTT(NULL),
mTTToApp(NULL),
mTempAddress(kTTAdrsRoot)
{
	TTAttributePtr anAttribute;
/*
	if (arguments.size() != 1)
		throw TTException("TTApplication constructor needs one symbol argument to setup its name\n");

    if (arguments[0].type() != kTypeSymbol)
		throw TTException("TTApplication constructor needs one symbol argument to setup its name\n");
*/
    if (arguments.size() == 1)
        if (arguments[0].type() == kTypeSymbol)
            mName = arguments[0];
	
	addAttributeWithSetter(Name, kTypeSymbol);
    
    addAttribute(Type, kTypeSymbol);
	
	addAttribute(Version, kTypeSymbol);
	
	addAttribute(Author, kTypeSymbol);
	
	addAttribute(Debug, kTypeBoolean);
	
	addAttributeWithSetter(Activity, kTypeBoolean);
    
    addAttribute(Learn, kTypeBoolean);
	
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
	
    // relative to directory and attribute listening
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
	
	// relative to symbol conversion
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
	
	mDirectory = new TTNodeDirectory(mName);
	mDirectory->getRoot()->setObject(TTObjectBasePtr(this));
	TT_ASSERT("NodeDirectory created successfully", mDirectory != NULL);
	
	mAppToTT = new TTHash();
	mTTToApp = new TTHash();
	
	mDirectoryListenersCache = new TTHash();
	mAttributeListenersCache = new TTHash();
	
	// add itself to the application manager
	TTValue none, args = TTValue(TTObjectBasePtr(this));
	TTModularApplications->sendMessage(TTSymbol("ApplicationAdd"), args, none);
}

TTApplication::~TTApplication()
{
	TTValue hk, v;
	
	// remove itself to the application manager
	TTValue none, args = TTValue(mName);
	TTModularApplications->sendMessage(TTSymbol("ApplicationRemove"), args, none);
	
	// TODO : delete observers
	
	delete mDirectory;
	delete mTTToApp;
	delete mAppToTT;
}

TTErr TTApplication::setName(const TTValue& value)
{
	// remove itself to the application manager
	TTValue none, args = TTValue(mName);
	TTModularApplications->sendMessage(TTSymbol("ApplicationRemove"), args, none);
	
	mName = value;
	mDirectory->setName(mName);
	
	// add itself to the application manager
	args = TTValue(TTObjectBasePtr(this));
	return TTModularApplications->sendMessage(TTSymbol("ApplicationAdd"), args, none);
}

TTErr TTApplication::setActivity(const TTValue& value)
{
	TTValue		protocols = getApplicationProtocols(mName);
	TTSymbol    protocolName;
	
	mActivity = value;
	
	for (TTUInt32 i = 0; i < protocols.size(); i++) {
		
		protocolName = protocols[i];
		getProtocol(protocolName)->setAttributeValue(kTTSym_activity, mActivity);
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
	TTObjectBasePtr anObject;
	TTList          nodeList;
	TTNodePtr       aChild;
    TTValue         none;
    
    // Send AttributeCache message to the mirror's node
    anObject = aNode->getObject();
    if (anObject) {
        
        if (cacheOrUncache)
            anObject->sendMessage(TTSymbol("AttributeCache"), attributeName, none);
        else
            anObject->sendMessage(TTSymbol("AttributeUncache"), attributeName, none);
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
	TTObjectBasePtr anObject;
	TTList          nodeList;
	TTNodePtr       aChild;
    
    // Send Init message to node's object
    anObject = aNode->getObject();
    if (anObject && anObject != this)
        anObject->sendMessage(kTTSym_Init);

    // Init nodes below
    aNode->getChildren(S_WILDCARD, S_WILDCARD, nodeList);
    
    // Sort children by priority order
    nodeList.sort(compareNodePriorityThenNameThenInstance);
    
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
    if (mName == getLocalApplicationName)
        return kTTErrGeneric;
    
    mDirectory->init();
	mDirectory->getRoot()->setObject(TTObjectBasePtr(this));
    
    return kTTErrNone;
}

TTErr TTApplication::DirectoryBuild()
{
    TTSymbol		protocolName;
    ProtocolPtr     aProtocol;
	TTValue			v, protocolNames;
    
    // only for distant application
    if (mName == getLocalApplicationName)
        return kTTErrGeneric;
    
    // clear the directory before to not duplicate nodes
    DirectoryClear();
    
    // a distant application should have one protocol
    protocolNames = getApplicationProtocols(mName);
    protocolNames.get(0, protocolName);

    aProtocol = (ProtocolPtr)getProtocol(protocolName);
    if (aProtocol) {
        
        // TODO : clear the directory without deleting observers
        
        return buildNode(aProtocol, kTTAdrsRoot);
    }
    
    return kTTErrGeneric;
}

TTErr TTApplication::buildNode(ProtocolPtr aProtocol, TTAddress anAddress)
{
    TTAddress       nextAddress, childAddress;
    TTSymbol        returnedType, service;
    TTValue         returnedChildren;
    TTValue         returnedAttributes;
    TTValue         returnedValue;
    TTObjectBasePtr anObject;
    TTErr           err;
    
    err = aProtocol->SendDiscoverRequest(mName, anAddress, returnedType, returnedChildren, returnedAttributes); // to - the returnedAttributes field is useless !
    
    if (!err) {
        
        if (anAddress != kTTAdrsRoot) {
            
            if (mType == kTTSym_mirror) {
                
                TTSymbol    cachedAttribute;
                TTValue     attributesToCache, v, args, none;
                
                anObject = appendMirrorObject(aProtocol, anAddress, returnedType);
                
                if (anObject) {
                    
                    // cache attributes value
                    mCachedAttributes.getKeys(attributesToCache);
                    for (TTUInt32 i = 0; i < attributesToCache.size(); i++) {
                        
                        cachedAttribute = attributesToCache[i];
                        
                        // if the attribute exist
                        if (anObject->getAttributeValue(cachedAttribute, v) != kTTErrInvalidAttribute) {
                        
                            // cache the attribute value
                            args = cachedAttribute;
                            args.append((TTPtr)&v);
                            anObject->sendMessage(TTSymbol("AttributeCache"), args, none);
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
    TTSymbol		protocolName;
    ProtocolPtr     aProtocol;
	TTValue			v, protocolNames;
    TTBoolean       enable;
    
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeInt32) {
            
            enable = inputValue[0];
            
            // only for distant application
            if (mName == getLocalApplicationName)
                return kTTErrGeneric;
            
            // a distant application should have one protocol
            protocolNames = getApplicationProtocols(mName);
            protocolNames.get(0, protocolName);
            
            aProtocol = (ProtocolPtr)getProtocol(protocolName);
            if (aProtocol)
                return aProtocol->SendListenRequest(mName, kTTAdrsRoot.appendAttribute(TTSymbol("life")), enable);
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTApplication::AddDirectoryListener(const TTValue& inputValue, TTValue& outputValue)
{
	TTString		editKey;
	TTSymbol		appToNotify, key;
	TTAddress		whereToListen;
	TTCallbackPtr	returnValueCallback;
	TTValuePtr		returnValueBaton;
	TTValue			cacheElement, none;
	TTErr			err;
	
	appToNotify = inputValue[1];
	whereToListen = inputValue[2];
	
	editKey = appToNotify.c_str();
	editKey += "<>";
	editKey	+= whereToListen.c_str();
	key = TTSymbol(editKey);
	
	// if this listener doesn't exist yet
	if (mAttributeListenersCache->lookup(key, cacheElement)) {
		
		// prepare a callback based on ProtocolDirectoryCallback
		returnValueCallback = NULL;			// without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectBaseInstantiate(TTSymbol("callback"), TTObjectBaseHandle(&returnValueCallback), none);
		
		returnValueBaton = new TTValue();
		*returnValueBaton = inputValue;
		
		returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
		returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&ProtocolDirectoryCallback));
		
		err = mDirectory->addObserverForNotifications(whereToListen, returnValueCallback); // ask to be notified for any address below
		
		if (!err) {
			
			// cache the observer in the directoryListenersCache
			cacheElement.append(returnValueCallback);
			return mDirectoryListenersCache->append(key, cacheElement);
		}
		else
			; // TODO : observe the directory in order to add the listener later
	}
    
	return kTTErrGeneric;
}

TTErr TTApplication::RemoveDirectoryListener(const TTValue& inputValue, TTValue& outputValue)
{
	TTString			editKey;
	TTSymbol			appToNotify, key;
	TTAddress			whereToListen;
	TTCallbackPtr		returnValueCallback;
	TTValue				cacheElement;
	
	appToNotify = inputValue[0];
	whereToListen = inputValue[1];
	
	editKey = appToNotify.c_str();
	editKey += "<>";
	editKey	+= whereToListen.c_str();
	key = TTSymbol(editKey);
	
	// if this listener exists
	if (!mDirectoryListenersCache->lookup(key, cacheElement)) {
        
		returnValueCallback = TTCallbackPtr((TTObjectBasePtr)cacheElement[0]);
		mDirectory->removeObserverForNotifications(whereToListen, returnValueCallback);
		TTObjectBaseRelease(TTObjectBaseHandle(&returnValueCallback));
		return mDirectoryListenersCache->remove(key);
	}
	
	return kTTErrGeneric;
}

TTErr TTApplication::AddAttributeListener(const TTValue& inputValue, TTValue& outputValue)
{
	TTString			editKey;
	TTSymbol			appToNotify, key;
	TTAddress			whereToListen;
	TTList				aNodeList;
	TTNodePtr			nodeToListen;
	TTObjectBasePtr		anObject, returnValueCallback;
	TTAttributePtr		anAttribute;
	TTValuePtr			returnValueBaton;
	TTValue				cacheElement, none;
	TTErr				err;
	
	appToNotify = inputValue[1];
	whereToListen = inputValue[2];
	
	editKey = appToNotify.c_str();
	editKey += "<>";
	editKey	+= whereToListen.c_str();
	key = TTSymbol(editKey);
    
	// if this listener doesn't exist yet
	if (mAttributeListenersCache->lookup(key, cacheElement)) {
		
		err = mDirectory->Lookup(whereToListen, aNodeList, &nodeToListen);
		
		if (!err) {
			
			for (aNodeList.begin(); aNodeList.end(); aNodeList.next())
			{
				// get a node from the selection
				nodeToListen = TTNodePtr((TTPtr)aNodeList.current()[0]);
				
				anObject = nodeToListen->getObject();
				if (anObject) {
					
					// create an Attribute observer
					anAttribute = NULL;
					err = anObject->findAttribute(whereToListen.getAttribute(), &anAttribute);
					
					if (!err) {
						// prepare a callback based on ProtocolAttributeCallback
						returnValueCallback = NULL;			// without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
						TTObjectBaseInstantiate(TTSymbol("callback"), &returnValueCallback, none);
						
						returnValueBaton = new TTValue();
						*returnValueBaton = inputValue;
						
						returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
						returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&ProtocolAttributeCallback));
						
						anAttribute->registerObserverForNotifications(*returnValueCallback);
						
						// cache the listener in the attributeListenersCache
						cacheElement.append(returnValueCallback);
					}
				}
			}
			
			return mAttributeListenersCache->append(key, cacheElement);
		}
		else
			; // TODO : observe the directory in order to add the listener later
	}
	
	return kTTErrGeneric;
}

TTErr TTApplication::RemoveAttributeListener(const TTValue& inputValue, TTValue& outputValue)
{
	TTString			editKey;
	TTSymbol			appToNotify, key;
	TTAddress			whereToListen;
	TTList				aNodeList;
	TTNodePtr			nodeToListen;
	TTObjectBasePtr		anObject, returnValueCallback;
	TTAttributePtr		anAttribute;
	TTValue				cacheElement;
	TTUInt32			i;
	TTErr				err;
	
	appToNotify = inputValue[0];
	whereToListen = inputValue[1];
	
	editKey = appToNotify.c_str();
	editKey += "<>";
	editKey	+= whereToListen.c_str();
	key = TTSymbol(editKey);
    
	// if this listener exists
	if (!mAttributeListenersCache->lookup(key, cacheElement)) {
		
		err = mDirectory->Lookup(whereToListen, aNodeList, &nodeToListen);
		
		if (!err) {
			
			i = 0;
			for (aNodeList.begin(); aNodeList.end(); aNodeList.next())
			{
				// get a node from the selection
				nodeToListen = TTNodePtr((TTPtr)aNodeList.current()[0]);
				
				anObject = nodeToListen->getObject();
				if (anObject) {
					
					// delete Attribute observer
					anAttribute = NULL;
					err = anObject->findAttribute(whereToListen.getAttribute(), &anAttribute);
					
					if (!err) {
						
                        returnValueCallback = TTCallbackPtr((TTObjectBasePtr)cacheElement[i]);
						anAttribute->unregisterObserverForNotifications(*returnValueCallback);
						TTObjectBaseRelease(TTObjectBaseHandle(&returnValueCallback));
						i++;
					}
				}
			}
			
			return mAttributeListenersCache->remove(key);
		}
	}
    
	return kTTErrGeneric;
}

TTErr TTApplication::UpdateDirectory(const TTValue& inputValue, TTValue& outputValue)
{
	TTAddress	whereComesFrom;
	TTValuePtr	newValue;
    TTValue     protocolNames;
	TTSymbol	type, protocolName;;
    TTList      aNodeList;
    TTNodePtr   aNode;
    TTObjectBasePtr aMirror;
    ProtocolPtr aProtocol;
    TTErr       err;
	
	whereComesFrom = inputValue[0];
	newValue = TTValuePtr((TTPtr)inputValue[1]);
	
    // in learn mode we can only create Data
    if (mLearn)
        type = kTTSym_Data;
    else
        newValue->get(0, type);
    
    err = mDirectory->Lookup(whereComesFrom, aNodeList, &aNode);
	
    // if the node doesn't exist already
	if (type != TTSymbol("delete") && err) {
        
        // a distant application should have one protocol
        protocolNames = getApplicationProtocols(mName);
        protocolNames.get(0, protocolName);
        
        aProtocol = (ProtocolPtr)getProtocol(protocolName);
        if (aProtocol) {
            
            if (mType == kTTSym_mirror)
                // instantiate Mirror object for distant application
                appendMirrorObject(aProtocol, whereComesFrom, type);
            
            if (mType == kTTSym_proxy)
                // instantiate proxy Data object for distant application
                appendProxyData(aProtocol, whereComesFrom, kTTSym_parameter);
            
            return kTTErrNone;
        }
	}
    
    // if the node exists
	else if (!err && type == TTSymbol("delete")) {
       
        aMirror = aNode->getObject();
        
        if (aMirror)
            TTObjectBaseRelease(TTObjectBaseHandle(&aMirror));
        
        mDirectory->TTNodeRemove(whereComesFrom);
    }
	
	return kTTErrGeneric;
}

TTErr TTApplication::UpdateAttribute(const TTValue& inputValue, TTValue& outputValue)
{
	TTNodePtr			nodeToUpdate;
	TTAddress			whereComesFrom;
	TTValuePtr			newValue;
	TTObjectBasePtr		anObject;
	TTErr				err;
    
    if (mLearn)
        return UpdateDirectory(inputValue, outputValue);
	
	whereComesFrom = inputValue[0];
	newValue = TTValuePtr((TTPtr)inputValue[1]);
	
	err = mDirectory->getTTNode(whereComesFrom, &nodeToUpdate);
	
	if (!err) {
		
		anObject = nodeToUpdate->getObject();
		if (anObject) {
            
			if (anObject->getName() == kTTSym_Mirror)
				return TTMirrorPtr(anObject)->updateAttributeValue(whereComesFrom.getAttribute(), *newValue);
            else
                return anObject->setAttributeValue(whereComesFrom.getAttribute(), *newValue);
        }
	}
	
	return kTTErrGeneric;
}


TTErr TTApplication::getAllAppNames(TTValue& value)
{
	if (mAppToTT->isEmpty())
		value = kTTSymEmpty;
	else
		mAppToTT->getKeys(value);
	
	return kTTErrNone;
}

TTErr TTApplication::getAllTTNames(TTValue& value)
{
	if (mTTToApp->isEmpty())
		value = kTTSymEmpty;
	else
		mTTToApp->getKeys(value);
	
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
			return this->mTTToApp->lookup(ttName, outputValue);
		}
    }
	
	// else convert each symbol of the value.
	// !!! in this case 1 to many conversion is not handled
	for (TTUInt8 i = 0; i < inputValue.size(); i++)
		if (inputValue[i].type() == kTypeSymbol) {
			ttName = inputValue[i];
			if (!this->mTTToApp->lookup(ttName, c)) {
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
			return this->mAppToTT->lookup(appName, outputValue);
		}
    }
	
	// else convert each symbol of the value.
	// !!! in this case 1 to many conversion is not handled
	for (TTUInt8 i = 0; i < inputValue.size(); i++)
		if (inputValue[i].type() == kTypeSymbol) {
			appName = inputValue[i];
			if (!this->mAppToTT->lookup(appName, c)) {
				ttName = c[0];
				outputValue[i] = ttName;
			}
		}
	
	return kTTErrNone;
}

TTErr TTApplication::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr aXmlHandler;
	
	aXmlHandler = TTXmlHandlerPtr((TTObjectBasePtr)inputValue[0]);
    
    // Start "Application" xml node
    xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "application");
    
    // Write attributes
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST mName.c_str());
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "author", BAD_CAST mAuthor.c_str());
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "version", BAD_CAST mVersion.c_str());
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "type", BAD_CAST mType.c_str());
    
    TTValue v;
    mCachedAttributes.getKeys(v);
    v.toString();
    TTString s = TTString(v[0]);
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "cachedAttributes", BAD_CAST s.c_str());
    
    // Write all the namespace starting from the root of the directory
	if (mDirectory)
        writeNodeAsXml(aXmlHandler, mDirectory->getRoot());
    
    // End xml node
    xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
    
	return kTTErrNone;
}

void TTApplication::writeNodeAsXml(TTXmlHandlerPtr aXmlHandler, TTNodePtr aNode)
{
	TTAddress    nameInstance;
	TTSymbol     objectName, attributeName;
	TTObjectBasePtr  anObject;
	TTValue      attributeNameList, v, c, none;
	TTList       nodeList;
	TTNodePtr    aChild;
	TTString     aString;
    
    // Write node's object attributes
    
    objectName = kTTSym_none;
    anObject = aNode->getObject();
    if (anObject) {
        
        objectName = anObject->getName();
        
        if (objectName == kTTSym_Mirror)
            objectName = TTMirrorPtr(anObject)->getName();
        
    }
    
    // don't write the application that is registered under the root
    if (objectName != kTTSym_Application) {
        
        // Write description attribute as an xml comment for local or proxy application
        if (mType != kTTSym_mirror) {
        
            if (anObject) {
            
                anObject->getAttributeValue(kTTSym_description, v);
                v.toString();
                aString = TTString(v[0]);
                xmlTextWriterWriteFormatComment((xmlTextWriterPtr)aXmlHandler->mWriter, "%s", BAD_CAST aString.data());
            }
        }
        
        // Start object type xml node
        nameInstance = TTAddress(NO_DIRECTORY, NO_PARENT, aNode->getName(), aNode->getInstance(), NO_ATTRIBUTE);
        
        // Check bad characters for XML element (like ~, (, ) or numbers)
        v = TTString(nameInstance.c_str());
        v.fromString();
        if (strchr(nameInstance.c_str(), '~') != 0 ||
            strchr(nameInstance.c_str(), '(') != 0 ||
            strchr(nameInstance.c_str(), ')') != 0 ||
            strchr(nameInstance.c_str(), '%') != 0 ||
            v[0].type() != kTypeSymbol) {
            
            // don't use the name for the XML element
            xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "node");
            
            // store the address as an attribute
            xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "address", BAD_CAST nameInstance.c_str());
            
        }
        // Write the name instance as XML element name
        else
            xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST nameInstance.c_str());
        
        // Write object name attribute
        if (objectName != kTTSymEmpty)
            xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "object", BAD_CAST objectName.c_str());
        else
            xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "object", BAD_CAST kTTSym_none.c_str());
        
        // Write attributes for local or proxy application
        if (anObject) {
            
            anObject->getAttributeNames(attributeNameList);
            
            for(TTUInt8 i = 0; i < attributeNameList.size(); i++)
            {
                attributeName = attributeNameList[i];
                
                // Filter attribute names
                if (attributeName != kTTSym_description &&
                    attributeName != kTTSym_value &&
                    attributeName != kTTSym_address &&
                    attributeName != kTTSym_bypass &&
                    attributeName != kTTSym_activityIn &&
                    attributeName != kTTSym_activityOut &&
                    attributeName != kTTSym_rampStatus) {
                    
                    // write only cached attributes
                    if (mType == kTTSym_mirror)
                        if (mCachedAttributes.lookup(attributeName, none))
                            continue;
                    
                    anObject->getAttributeValue(attributeName, v);
                    
                    if (v.empty())
                        continue;
                    
                    v.toString();
                    aString = TTString(v[0]);
                    
                    if (aString.empty())
                        continue;
                    
                    // replace TTName by AppName
                    attributeName = ToAppName(attributeName);
                    
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
	TTXmlHandlerPtr	aXmlHandler = NULL;
	TTString		anAppKey, aTTKey;
	TTValue			appValue, ttValue, v, nameValue, parameterValue;
	
	aXmlHandler = TTXmlHandlerPtr((TTObjectBasePtr)inputValue[0]);
	if (!aXmlHandler)
		return kTTErrGeneric;
	
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
            mAppToTT = new TTHash();
        
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
		
		mAppToTT->append(TTSymbol(anAppKey), ttValue);		// here we register the entire value to handle 1 to many conversion
		mTTToApp->append(TTSymbol(aTTKey), appValue);			// here we register the entire value to handle 1 to many conversion
        
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
    ProtocolPtr     aProtocol;
    TTObjectBasePtr anObject = NULL;
	TTValue			v, protocolNames, none;
    TTHash          attributesToFilter;
    
    // when a node starts : append address to the current temp address
    if (aXmlHandler->mXmlNodeStart) {
        
        // optionnal : the address attribute can store names which are problematic with xml (like number)
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
        
        // use the node name to build the address
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
                        
                        // start instance numbering from 1
                        mTempAddress = mTempAddress.appendInstance(TTSymbol("1"));
                }
            }
        }
        
        // read the file several times if instance > 1
        for (TTUInt32 i = 0; i < instance; i++) {
            
            if (useInstanceAsName) {
                
                // start numbering from 1
                v = TTInt32(i+1);
                v.toString();
                TTString s = TTString(v[0]);
                address = mTempAddress.appendAddress(TTAddress(s.data()));
            }
            else
                address = mTempAddress;
            
            // get the object name
            if (xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, (const xmlChar*)("object")) == 1) {
                
                aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v);
                
                if (v.size() == 1) {
                    
                    if (v[0].type() == kTypeSymbol) {
                        objectName = v[0];
                        
                        // a distant application should have one protocol
                        protocolNames = getApplicationProtocols(mName);
                        protocolName = protocolNames[0];
                        
                        aProtocol = (ProtocolPtr)getProtocol(protocolName);
                        if (aProtocol) {
                            
                            // for mirror application
                            if (mType == kTTSym_mirror) {
                                
                                // instantiate a mirror object
                                anObject = appendMirrorObject(aProtocol, address, objectName);
                                
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
                                                            anObject->setAttributeValue(kTTSym_type, v);
                                                            
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
                                else if (objectName == kTTSym_none) {
                                    
                                    // register no object into the directory
                                    TTNodePtr   aNode;
                                    TTBoolean   newInstanceCreated;
                                    
                                    this->mDirectory->TTNodeCreate(address, NULL, NULL, &aNode, &newInstanceCreated);
                                }
                                
                                // OTHER case ? Input, Output ?
                                
                            }
                            
                            if (anObject) {
                                
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
                                        if (!anObject->findAttribute(cachedAttribute, &attribute)) {
                                            
                                            // cache the attribute with no value (see after)
                                            args = cachedAttribute;
                                            anObject->sendMessage(TTSymbol("AttributeCache"), args, none);
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
                                            
                                            attributeName = ToTTName(v[0]);
                                            
                                            // filter attributes
                                            if (!attributesToFilter.lookup(attributeName, none))
                                                    continue;
                                            
                                            // get attribute value
                                            aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v);
                                            
                                            // if the attribute is not cached or in proxy application case
                                            anObject->setAttributeValue(attributeName, v);
                                        }
                                    }
                               } while (xmlTextReaderMoveToNextAttribute((xmlTextReaderPtr)aXmlHandler->mReader) == 1);
                            }
                        }
                    }
                }
            }
        }
        
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
        TTValue protocolNames = getApplicationProtocols(mName);
        TTSymbol protocolName = protocolNames[0];
        
        ProtocolPtr aProtocol = (ProtocolPtr)getProtocol(protocolName);
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

TTObjectBasePtr TTApplication::appendMirrorObject(ProtocolPtr aProtocol, TTAddress anAddress, TTSymbol objectName)
{
    TTMirrorPtr     aMirror = NULL;
    TTNodePtr		aNode;
	TTBoolean		newInstanceCreated, allowGetRequest, allowSetRequest, allowListenRequest;
	TTObjectBasePtr	getAttributeCallback, setAttributeCallback, sendMessageCallback, listenAttributeCallback;
	TTValuePtr		getAttributeBaton, setAttributeBaton, sendMessageBaton, listenAttributeBaton;
    
    if (objectName != kTTSymEmpty && objectName != kTTSym_none) {
        
        TTValue none, args = objectName;
        
        aProtocol->getAttributeValue(TTSymbol("get"), allowGetRequest);
        
        if (allowGetRequest) {
            
            getAttributeCallback = NULL;
            TTObjectBaseInstantiate(TTSymbol("callback"), &getAttributeCallback, none);
            getAttributeBaton = new TTValue(aProtocol);
            getAttributeBaton->append(mName);
            getAttributeBaton->append(anAddress);
            getAttributeCallback->setAttributeValue(kTTSym_baton, TTPtr(getAttributeBaton));
            getAttributeCallback->setAttributeValue(kTTSym_function, TTPtr(&ProtocolGetAttributeCallback));
            args.append(getAttributeCallback);
        }
        else
            args.append(0);
        
        aProtocol->getAttributeValue(TTSymbol("set"), allowSetRequest);
        
        if (allowSetRequest) {
            
            setAttributeCallback = NULL;
            TTObjectBaseInstantiate(TTSymbol("callback"), &setAttributeCallback, none);
            setAttributeBaton = new TTValue(aProtocol);
            setAttributeBaton->append(mName);
            setAttributeBaton->append(anAddress);
            setAttributeCallback->setAttributeValue(kTTSym_baton, TTPtr(setAttributeBaton));
            setAttributeCallback->setAttributeValue(kTTSym_function, TTPtr(&ProtocolSetAttributeCallback));
            args.append(setAttributeCallback);
            
            sendMessageCallback = NULL;
            TTObjectBaseInstantiate(TTSymbol("callback"), &sendMessageCallback, none);
            sendMessageBaton = new TTValue(aProtocol);
            sendMessageBaton->append(mName);
            sendMessageBaton->append(anAddress);
            sendMessageCallback->setAttributeValue(kTTSym_baton, TTPtr(sendMessageBaton));
            sendMessageCallback->setAttributeValue(kTTSym_function, TTPtr(&ProtocolSendMessageCallback));
            args.append(sendMessageCallback);
        }
        else {
            
            args.append(0);
            args.append(0);
        }
        
        aProtocol->getAttributeValue(TTSymbol("listen"), allowListenRequest);
        
        if (allowListenRequest) {
            
            listenAttributeCallback = NULL;
            TTObjectBaseInstantiate(TTSymbol("callback"), &listenAttributeCallback, none);
            listenAttributeBaton = new TTValue(aProtocol);
            listenAttributeBaton->append(mName);
            listenAttributeBaton->append(anAddress);
            listenAttributeCallback->setAttributeValue(kTTSym_baton, TTPtr(listenAttributeBaton));
            listenAttributeCallback->setAttributeValue(kTTSym_function, TTPtr(&ProtocolListenAttributeCallback));
            args.append(listenAttributeCallback);
        }
        else
            args.append(0);
        
        TTObjectBaseInstantiate(kTTSym_Mirror, TTObjectBaseHandle(&aMirror), args);
        
        // register object into the directory
        this->mDirectory->TTNodeCreate(anAddress, (TTObjectBasePtr)aMirror, NULL, &aNode, &newInstanceCreated);
    }
    
    return (TTObjectBasePtr)aMirror;
}

TTObjectBasePtr TTApplication::appendProxyData(ProtocolPtr aProtocol, TTAddress anAddress, TTSymbol service)
{
    TTDataPtr       aData = NULL;
    TTNodePtr		aNode;
	TTBoolean		newInstanceCreated;
	TTObjectBasePtr	valueAttributeCallback;
	TTValuePtr		valueAttributeBaton;
    TTValue         args, none;
    
    valueAttributeCallback = NULL;
    TTObjectBaseInstantiate(TTSymbol("callback"), &valueAttributeCallback, none);
    valueAttributeBaton = new TTValue(aProtocol);
    valueAttributeBaton->append(mName);
    valueAttributeBaton->append(anAddress);
    valueAttributeCallback->setAttributeValue(kTTSym_baton, TTPtr(valueAttributeBaton));
    valueAttributeCallback->setAttributeValue(kTTSym_function, TTPtr(&TTApplicationProxyDataValueCallback));
    args.append(valueAttributeCallback);
    
    args.append(service);
    
    TTObjectBaseInstantiate(kTTSym_Data, TTObjectBaseHandle(&aData), args);
    
    // register object into the directory
    this->mDirectory->TTNodeCreate(anAddress, (TTObjectBasePtr)aData, NULL, &aNode, &newInstanceCreated);
    
    return (TTObjectBasePtr)aData;
}

TTObjectBasePtr TTApplication::appendProxyContainer(ProtocolPtr aProtocol, TTAddress anAddress)
{
    TTContainerPtr  aContainer = NULL;
    TTNodePtr		aNode;
	TTBoolean		newInstanceCreated;
    TTValue         args;
    
    // TODO : pass callbacks ? 
    
    TTObjectBaseInstantiate(kTTSym_Container, TTObjectBaseHandle(&aContainer), args);
    
    // register object into the directory
    this->mDirectory->TTNodeCreate(anAddress, (TTObjectBasePtr)aContainer, NULL, &aNode, &newInstanceCreated);
    
    return (TTObjectBasePtr)aContainer;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTNodeDirectoryPtr TTApplicationGetDirectory(TTAddress anAddress)
{
	TTSymbol			applicationName;
	TTApplicationPtr	anApplication;
	
	if (TTModularApplications && anAddress != kTTAdrsEmpty) {
		
		applicationName = anAddress.getDirectory();
		
		if (applicationName != NO_DIRECTORY)
			anApplication = TTApplicationManagerGetApplication(applicationName);
		else
			anApplication = getLocalApplication;
		
		if (anApplication)
			return anApplication->mDirectory;
	}
	
	return NULL;
}

TTSymbol TTApplicationConvertAppNameToTTName(TTSymbol anAppName)
{
	TTErr		err;
	TTValue		c;
	TTSymbol	converted = anAppName;
	
	if (TTModularApplications) {
		
		err = getLocalApplication->mAppToTT->lookup(anAppName, c);
		
		if (!err)
			converted = c[0];
		
	}
	
	return converted;
}

TTSymbol TTApplicationConvertTTNameToAppName(TTSymbol aTTName)
{
	TTErr		err;
	TTValue		c;
	TTSymbol	converted = aTTName;
	
	if (TTModularApplications) {
		
		err = getLocalApplication->mTTToApp->lookup(aTTName, c);
		
		if (!err)
			converted = c[0];
		
	}
	
	return converted;
}

TTErr TTApplicationProxyDataValueCallback(TTPtr baton, TTValue& data)
{
    TTValue v = kTTSym_value;
    v.append((TTPtr)&data);
    
    return ProtocolSetAttributeCallback(baton, v);
}