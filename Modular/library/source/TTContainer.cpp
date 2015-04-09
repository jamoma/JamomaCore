/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A Container object
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTContainer.h"

#define thisTTClass			TTContainer
#define thisTTClassName		"Container"
#define thisTTClassTags		"node, container"

TT_MODULAR_CONSTRUCTOR,
mPriority(0), 
mDescription(kTTSym_none),
mService(kTTSym_none),
mTags(TTValue(kTTSym_none)),
mInitialized(NO),
mAddress(kTTAdrsEmpty),
mAlias(kTTAdrsEmpty),
activityAttribute(NULL),
contentAttribute(NULL)
{
	if(arguments.size() == 2) {
		mReturnAddressCallback = arguments[0];
		mReturnValueCallback = arguments[1];
	}
	
	addAttributeWithSetter(Priority, kTypeInt32);
	addAttribute(Description, kTypeSymbol);
    
    addAttribute(Service, kTypeSymbol);
    
	addAttributeWithSetter(Tags, kTypeLocalValue);
	
	addAttribute(Initialized, kTypeBoolean);
	addAttributeProperty(Initialized, readOnly, YES);
	addAttributeProperty(Initialized, hidden, YES);
	
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttributeProperty(Address, hidden, YES);
	
	addAttributeWithSetter(Alias, kTypeSymbol);

	addAttribute(Activity, kTypeLocalValue);             // TODO : have a way to add notification (instead of a readonly attribute)
	addAttributeProperty(Activity, readOnly, YES);
    
    addAttribute(Content, kTypeLocalValue);             // TODO : have a way to add notification (instead of a readonly attribute)
	addAttributeProperty(Content, readOnly, YES);
    
	addMessageWithArguments(Send);
	addMessageProperty(Send, hidden, YES);
	
	addMessage(Init);
    
    addMessageWithArguments(Rename);
    addMessageProperty(Rename, hidden, YES);
    
	addMessage(AliasRemove);
	
	// needed to be handled by a TTTextHandler
	addMessageWithArguments(WriteAsText);
	addMessageProperty(WriteAsText, hidden, YES);
	
	mIsSending = false;
    
    // cache some attribute for observer notification
    this->findAttribute(kTTSym_activity, &activityAttribute);
    this->findAttribute(kTTSym_content, &contentAttribute);
}

TTContainer::~TTContainer()
{
	setAlias(kTTAdrsEmpty);
	unbind();
}

TTErr TTContainer::Send(TTValue& AddressAndValue, TTValue& outputValue)
{
	TTValue			hk, cacheElement, v, none;
	TTValuePtr		valueToSend;
	TTObject        anObject;
	TTAddress       aRelativeAddress, topAddress, belowAddress, keyAddress;
	TTSymbol		attrOrMess, service;
    TTUInt32        i;
    TTInt8          depth = 0;
	TTErr			err = kTTErrNone;
	
	if (!mIsSending) {
		
		// lock
		mIsSending = true;
        
        // get relativeAddress and valueToSend
        aRelativeAddress = AddressAndValue[0];
        
        // get attribute or message (default is value)
        if (aRelativeAddress.getAttribute() != NO_ATTRIBUTE)
            attrOrMess = aRelativeAddress.getAttribute();
        else
            attrOrMess = kTTSym_value;
        
        // If there is a wild card into relative address part
        if (strrchr(aRelativeAddress.c_str(), C_WILDCARD)) {
            
            mIsSending = false;
            
            // split relative address
            aRelativeAddress.splitAt(0, topAddress, belowAddress);
            
            // Get each keys sorted by priority
            mObjectsObserversCache.getKeysSorted(hk, &TTContainerCompareObjectPriority);
            
            // find each keyAddress equals to the top address part
            for (i = 0; i < mObjectsObserversCache.getSize(); i++) {
                
                keyAddress = hk[i];
                
                TTAddressComparisonFlag comparison = topAddress.compare(keyAddress, depth);
                
                // is topAddress the address of cached container ?
                if (comparison == kAddressEqual)
                {
                    // replace relativeAddress by keyAddress
                    AddressAndValue[0] = keyAddress.appendAddress(belowAddress).appendAttribute(attrOrMess);
                    
                    if (this->Send(AddressAndValue, none))
                        err = kTTErrGeneric;
                }
                // or is it the top address part of a cached object ?
                else if (comparison == kAddressUpper)
                {
                    // compare the relative address
                    TTAddressComparisonFlag comparison = aRelativeAddress.compare(keyAddress, depth);
                    
                    if (comparison == kAddressEqual)
                    {
                        // replace relativeAddress by keyAddress
                        AddressAndValue[0] = keyAddress.appendAttribute(attrOrMess);
                        
                        if (this->Send(AddressAndValue, none))
                            err = kTTErrGeneric;
                    }
                }
            }
            
            return err;
        }
        
        valueToSend = TTValuePtr((TTPtr)AddressAndValue[1]);
        
        // get the object
        err = mObjectsObserversCache.lookup(aRelativeAddress.removeAttribute(), cacheElement);
        
        // if the relativeAddress is in the cache
        if (!err) {
            
            anObject = cacheElement[0];
            
            // DATA CASE for value attribute
            if (anObject.name() == kTTSym_Data && attrOrMess == kTTSym_value) {
                
                // what kind of service the data is used for ?
                anObject.get(kTTSym_service, v);
                service = v[0];
                
                // we are not supposed to address returns
                if (service == kTTSym_return)
                    return kTTErrNone;
                
                // set the value attribute using a command
                anObject.send(kTTSym_Command, *valueToSend);
                
                // unlock
                mIsSending = false;
                return kTTErrNone;
            }
            
            // VIEWER CASE for a same attribute
            if (anObject.name() == kTTSym_Viewer && attrOrMess == kTTSym_value) {
                
                // send the value
                anObject.send(kTTSym_Send, *valueToSend);
                
                // unlock
                mIsSending = false;
                return kTTErrNone;
            }
            
            // DEFAULT CASE
            // Try to set attribute
            err = anObject.set(attrOrMess, *valueToSend);
            if (err == kTTErrInvalidAttribute) {
                
                // Or try to send a message
                anObject.send(attrOrMess, *valueToSend);
            }
        }
        // maybe the relative address is for Container below ourself
        else {
            
            // split relative address
            aRelativeAddress.splitAt(0, topAddress, belowAddress);
            
            // retry using only the first (top) part of the relative address
            err = mObjectsObserversCache.lookup(topAddress, cacheElement);
            
            // if the object is in our cache : we replace the relative addres by the belowAddress and send the value
            if (!err) {
                
                anObject = cacheElement[0];
                
                // check if it is a #TTContainer object
                if (anObject.name() == kTTSym_Container) {
                    
                    AddressAndValue[0] = belowAddress;
                    anObject.send(kTTSym_Send, AddressAndValue);
                    
                    // unlock
                    mIsSending = false;
                    return kTTErrNone;
                }
            }
        }
	}
	
	// unlock
	mIsSending = false;	
	return err;
}

TTErr TTContainer::Init()
{
	TTAttributePtr	anAttribute;
	TTList          nodeList;
	TTNodePtr       aNode;
	
	// Restart initialisation
	mInitialized = NO;
	
	// Notify observers (this can't be prioritized because observers have no priority)
	findAttribute(kTTSym_initialized, &anAttribute);
	anAttribute->sendNotification(kTTSym_notify, mInitialized);
    
    // Look for all nodes under the address into the directory with the same Context
	if (!accessApplicationLocalDirectory->Lookup(mAddress, nodeList, &aNode))
        initNode(aNode);
	
	// End of initialisation
	mInitialized = YES;
	
	// Notify observers
	findAttribute(kTTSym_initialized, &anAttribute);
	anAttribute->sendNotification(kTTSym_notify, mInitialized);
	
	return kTTErrNone;
}

TTErr TTContainer::initNode(TTNodePtr aNode)
{
	TTList      nodeList;
    
    // Init nodes below
    aNode->getChildren(S_WILDCARD, S_WILDCARD, nodeList);
    
    // Sort children by priority order
	nodeList.sort(&compareNodePriorityThenNameThenInstance);
    
    for (nodeList.begin(); nodeList.end(); nodeList.next())
    {
        TTNodePtr aChild = TTNodePtr((TTPtr)nodeList.current()[0]);
        
        TTObject anObject = aChild->getObject();
        
        if (anObject.valid())
        {
            // Send an Init message to all Data service parameter which are in the same context
            if (anObject.name() == kTTSym_Data)
            {
                if (aChild->getContext() != aNode->getContext())
                    continue;
                
                TTValue     v;
                TTSymbol    service;
                
                anObject.get(kTTSym_service, v);
                service = v[0];
                
                if (service == kTTSym_parameter)
                    anObject.send(kTTSym_Init);
            }
            // Send an Init message to all Container
            else if (anObject.name() == kTTSym_Container)
                anObject.send(kTTSym_Init);
        }
    }
    
    // ask again for children node list are
    // as the namespace can have changed
    aNode->getChildren(S_WILDCARD, S_WILDCARD, nodeList);
    
    // Sort children by priority order again
    nodeList.sort(&compareNodePriorityThenNameThenInstance);
    
    for (nodeList.begin(); nodeList.end(); nodeList.next())
    {
        TTNodePtr aChild = TTNodePtr((TTPtr)nodeList.current()[0]);
        
        initNode(aChild);
    }
    
    return kTTErrNone;
}

TTErr TTContainer::Rename(const TTValue& inputValue, TTValue& outputValue)
{
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeSymbol) {
            
            TTSymbol    newNameInstance = inputValue[0];
            TTAddress   oldAddress = mAddress;
            TTValue     args(TTObject(this), newNameInstance);
            
            unbind();
            
            TTErr err = accessApplicationFrom(mAddress)->sendMessage("ObjectRename", args, outputValue);
            
            if (!err)
                newNameInstance = outputValue[0];
            
            mAddress = oldAddress.getParent().appendAddress(TTAddress(newNameInstance));
            
            bind();
            
            return err;
        }
    }
    
    return kTTErrGeneric;
}

/** */
TTErr TTContainer::AliasRemove()
{
	return setAlias(kTTAdrsEmpty);
}

TTErr TTContainer::setAddress(const TTValue& value)
{	
	unbind();
	mAddress = value[0];
	
    if (mAddress != kTTAdrsEmpty)
        return bind();
    else
        return kTTErrNone;
}

TTErr TTContainer::setAlias(const TTValue& value)
{
	TTNodeDirectoryPtr localDirectory = accessApplicationLocalDirectory;
    TTAttributePtr	anAttribute;
	TTAddress		oldAlias = mAlias;
	TTNodePtr		aNode;
	TTObject        anObject;
	TTValue			hk, cacheElement;
	TTSymbol		key;
	TTUInt32		i;
	TTString		aliasKey;
	
    TTAddress newAlias = value[0];
    
    // if the alias is relative append to our parent address
    if (newAlias.getType() == kAddressRelative)
        mAlias = mAddress.getParent().appendAddress(newAlias);
    else
        mAlias = newAlias;
	
	// check it changes
	if (oldAlias != mAlias) {
		
		if (oldAlias != kTTAdrsEmpty) {
			
			localDirectory->AliasRemove(oldAlias);
			
			// notify the deletion of all /alias/key address
            mObjectsObserversCache.getKeys(hk);
            for (i = 0; i < mObjectsObserversCache.getSize(); i++) {
                key = hk[i];
                
                // edit alias/key address
                aliasKey = oldAlias.c_str();
                aliasKey += S_SEPARATOR.c_str();
                aliasKey += key.c_str();
                
                // get the node at this address
                mObjectsObserversCache.lookup(key, cacheElement);
                aNode = TTNodePtr((TTPtr)cacheElement[2]);
                
                localDirectory->notifyObservers(TTAddress(aliasKey), aNode, kAddressDestroyed);
                
                // remove alias of Container object
                anObject = cacheElement[0];
                
                if (anObject.name() == kTTSym_Container)
                    anObject.set(kTTSym_alias, kTTAdrsEmpty);
            }
		}
			
		if (mAlias != kTTAdrsEmpty && mAddress != kTTAdrsEmpty) {
			
			localDirectory->AliasCreate(mAlias, mAddress);
			
			// notify the creation of all /alias/key address
            mObjectsObserversCache.getKeys(hk);
            for (i = 0; i < mObjectsObserversCache.getSize(); i++) {
                key = hk[i];
                
                // edit alias/key address
                aliasKey = mAlias.c_str();
                aliasKey += S_SEPARATOR.c_str();
                aliasKey += key.c_str();
                
                // get the node at this address
                mObjectsObserversCache.lookup(key, cacheElement);
                aNode = TTNodePtr((TTPtr)cacheElement[2]);
                
                localDirectory->notifyObservers(TTAddress(aliasKey), aNode, kAddressCreated);
                
                // set alias of Container object
                anObject = cacheElement[0];
                
                if (anObject.name() == kTTSym_Container)
                    anObject.set(kTTSym_alias, TTAddress(aliasKey));
                
            }
		}
        
        this->findAttribute(kTTSym_alias, &anAttribute);
        anAttribute->sendNotification(kTTSym_notify, mAlias);	// we use kTTSym_notify because we know that observers are TTCallback

		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTContainer::setTags(const TTValue& value)
{
	TTAttributePtr	anAttribute;
	TTErr			err = kTTErrNone;
	
	mTags = value;
	
	err = this->findAttribute(kTTSym_tags, &anAttribute);
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, mTags);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

TTErr TTContainer::setPriority(const TTValue& value)
{
	TTAttributePtr	anAttribute;
	TTErr			err = kTTErrNone;
	
	mPriority = value;
	
	err = this->findAttribute(kTTSym_priority, &anAttribute);
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, mPriority);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

TTErr TTContainer::bind()
{
	TTNodePtr	aNode;
	TTPtr		aContext;
	TTList		aNodeList, allObjectsNodes;
	TTValue		v, baton, none;
	TTErr		err;
	
	mObjectsObserversCache.clear();
	
	// 1. Look for all nodes under the address into the directory with the same Context
	err = accessApplicationLocalDirectory->Lookup(mAddress, aNodeList, &aNode);
	aContext = aNode->getContext();
	
	v.append(aContext);
	err = accessApplicationLocalDirectory->LookFor(&aNodeList, TTContainerTestObjectAndContext, &v, allObjectsNodes, &aNode);
	
	// 2. make a cache containing each relativeAddress : Data and Observer
	for (allObjectsNodes.begin(); allObjectsNodes.end(); allObjectsNodes.next()) {
		
		aNode = TTNodePtr((TTPtr)allObjectsNodes.current()[0]);
		makeCacheElement(aNode);
	}
	
	// 3. Observe any creation or destruction below the address
	mObserver = TTObject("callback");
	baton = TTValue(TTPtr(this), aContext); // théo -- we have to register our self as a #TTPtr to not reference this instance otherwhise the destructor will never be called
	mObserver.set(kTTSym_baton, baton);
	mObserver.set(kTTSym_function, TTPtr(&TTContainerDirectoryCallback));
	
	accessApplicationLocalDirectory->addObserverForNotifications(mAddress, mObserver); // ask for notification for addresses below
	
	return err;
}

TTErr TTContainer::makeCacheElement(TTNodePtr aNode)
{
	TTValue			cacheElement, baton, v, none;
	TTAddress       aRelativeAddress;
	TTSymbol		service;
    TTObject        anObject, empty;
	TTAttributePtr	anAttribute = NULL;
    TTErr           err;
    
	// process the relative address
	aNode->getAddress(aRelativeAddress, mAddress);
	
	// Filter none valid object
	anObject = aNode->getObject();
	if (!anObject.valid())
		return kTTErrGeneric;
    
    // DEBUG : check if the cache element do not exist already
	err = mObjectsObserversCache.lookup(aRelativeAddress, cacheElement);
    if (!err) {
        
        // DEBUG : this means there is a bad tree managment : we need to trace this
        std::cout << "TTContainer::makeCacheElement -- object at " << (const char*)aRelativeAddress.c_str() << " already exists" << std::endl;
        
        // DEBUG : remove the former element : this way is bad because we don't free the observer
        mObjectsObserversCache.remove(aRelativeAddress);
    }
	
	// 0 : cache Object
	cacheElement.append(anObject);
	
	// Special case for Data : observe the Value attribute
	if (anObject.name() == kTTSym_Data) {
        
        // what kind of service the data is used for ?
        anObject.get(kTTSym_service, v);
        service = v[0];
        
        // we are not supposed to address returns
        if (service == kTTSym_message) {
            
            // 1 : cache empty object
            cacheElement.append(empty);
        }
        else {
            
            TTObject valueObserver = TTObject("callback");
            
            // create a value Attribute observer on it
            anObject.instance()->findAttribute(kTTSym_value, &anAttribute);
            
            baton = TTValue(TTObject(this), aRelativeAddress);
            
            valueObserver.set(kTTSym_baton, baton);
            valueObserver.set(kTTSym_function, TTPtr(&TTContainerValueAttributeCallback));
            
            anAttribute->registerObserverForNotifications(valueObserver);
            
            // 1 : cache observer
            cacheElement.append(valueObserver);
        }
	}
	
	// Special case for Viewer : observe what it returns
	else if (anObject.name() == kTTSym_Viewer) {

		TTObject returnedValueObserver = TTObject("callback");
				
		// create a returnedValue Attribute observer on it
		anObject.instance()->findAttribute(kTTSym_returnedValue, &anAttribute);
		
		baton = TTValue(TTObject(this), aRelativeAddress);
		
		returnedValueObserver.set(kTTSym_baton, baton);
		returnedValueObserver.set(kTTSym_function, TTPtr(&TTContainerValueAttributeCallback));
		
		anAttribute->registerObserverForNotifications(returnedValueObserver);
		
		// 1 : cache observer
		cacheElement.append(returnedValueObserver);
	}
	
	// Special case for Container : observe his activity
	else if (anObject.name() == kTTSym_Container) {

		TTObject activityObserver = TTObject("callback");
		
		// create a activity Attribute observer on it
		anObject.instance()->findAttribute(kTTSym_activity, &anAttribute);
				
		baton = TTValue(TTObject(this), aRelativeAddress);
		
		activityObserver.set(kTTSym_baton, baton);
		activityObserver.set(kTTSym_function, TTPtr(&TTContainerValueAttributeCallback));
		
		anAttribute->registerObserverForNotifications(activityObserver);
		
		// 1 : cache observer
		cacheElement.append(activityObserver);
	}
    
    // Special case for PresetManager : do nothing ?
	else if (anObject.name() == kTTSym_PresetManager) {
		
		// 1 : cache empty object
		cacheElement.append(empty);
	}
	
	else
		// 1 : cache empty object
		cacheElement.append(empty);

	// 2 : cache the node too (used during alias creation/destruction)
	cacheElement.append((TTPtr)aNode);
	
	// append the cacheElement to the cache hash table
	mObjectsObserversCache.append(aRelativeAddress, cacheElement);
    
    updateContent();
	
	return kTTErrNone;
}

TTErr TTContainer::deleteCacheElement(TTNodePtr aNode)
{
	TTAddress       aRelativeAddress;
	TTValue			v, cacheElement;
	TTSymbol		service;
    TTObject        anObject;
	TTObject		anObserver;
	TTAttributePtr	anAttribute;
	TTErr			err;
	
	// process the relative address
	aNode->getAddress(aRelativeAddress, mAddress);
	
	// unregister attribute observers
	err = mObjectsObserversCache.lookup(aRelativeAddress, cacheElement);
	
	if (!err) {
	
		// get the object using the node instead of the stored one
		anObject = aNode->getObject();
        
		// Filter none valid object
		if (anObject.valid()) {
			
			// it is a Data
			if (anObject.name() == kTTSym_Data) {
				
				// unregister Value observer for parameter and return
                anObserver = cacheElement[1];
                anAttribute = NULL;
                err = anObject.instance()->findAttribute(kTTSym_value, &anAttribute);
                
                if (!err) {
                    err = anAttribute->unregisterObserverForNotifications(anObserver);
                }
			}
			
			// it is a Viewer
			else if (anObject.name() == kTTSym_Viewer) {
				
				// unregistrer returnedValue observer
				anObserver = cacheElement[1];
				anAttribute = NULL;
				err = anObject.instance()->findAttribute(kTTSym_returnedValue, &anAttribute);
				
				if (!err)
					err = anAttribute->unregisterObserverForNotifications(anObserver);
			}
			
			// it is a Container
			else if (anObject.name() == kTTSym_Container) {
				
				// unregister activity observer
				anObserver = cacheElement[1];
				anAttribute = NULL;
				err = anObject.instance()->findAttribute(kTTSym_activity, &anAttribute);
				
				if (!err)
					err = anAttribute->unregisterObserverForNotifications(anObserver);
			}
		}
        
        // remove cacheData
        err = mObjectsObserversCache.remove(aRelativeAddress);
        
        updateContent();
	}
	
    return err;
}

TTErr TTContainer::updateContent()
{
	TTErr err;

    // update content with all relative address sorted alphabetically
    err = mObjectsObserversCache.getKeysSorted(mContent);
    
    // notify content observers
    contentAttribute->sendNotification(kTTSym_notify, mContent);	// we use kTTSym_notify because we know that observers are TTCallback

	return err;
}

TTErr TTContainer::unbind()
{
	TTValue			hk, v;
	TTValue			cacheElement;
    TTObject        anObject;
	TTObject		aValueObserver;
	TTAttributePtr	anAttribute;
	TTSymbol		key;
	TTUInt32        i;
	TTErr			err;
	
	// unregister all attribute/message observers of mDatasObserversCache
    mObjectsObserversCache.getKeys(hk);
    
    for (i = 0; i < mObjectsObserversCache.getSize(); i++) {
        
        key = hk[i];
        mObjectsObserversCache.lookup(key, cacheElement);
        anObject = cacheElement[0];
		
        if (anObject.valid()) {
            
            // Théo -- the code below is partly the same than deleteCacheElement
            
            // is it a Data ?
            if (anObject.name() == kTTSym_Data) {
                
                // unregister value observer
                aValueObserver = cacheElement[1];
                anAttribute = NULL;
                err = anObject.instance()->findAttribute(kTTSym_value, &anAttribute);
                
                if (!err)
                    anAttribute->unregisterObserverForNotifications(aValueObserver);
            }
            else if (anObject.name() == kTTSym_Viewer) {
                
                // unregister returnedValue observer
                aValueObserver = cacheElement[1];
                anAttribute = NULL;
                err = anObject.instance()->findAttribute(kTTSym_returnedValue, &anAttribute);
                
                if (!err)
                    anAttribute->unregisterObserverForNotifications(aValueObserver);
            }
            else if (anObject.name() == kTTSym_Container) {
                
                // unregister activity observer
                aValueObserver = cacheElement[1];
                anAttribute = NULL;
                err = anObject.instance()->findAttribute(kTTSym_activity, &anAttribute);
                
                if (!err)
                    anAttribute->unregisterObserverForNotifications(aValueObserver);
            }
        }
    }
		
	mObjectsObserversCache.clear();
	
	// stop life cycle observation
	if (mObserver.valid() && accessApplicationLocalDirectory) {
		
		accessApplicationLocalDirectory->removeObserverForNotifications(mAddress, mObserver);
		mObserver = TTObject();
	}
	
	mAddress = kTTAdrsEmpty;
	
	return kTTErrNone;
}

TTErr TTContainer::WriteAsText(const TTValue& inputValue, TTValue& outputValue)
{
	TTObject o = inputValue[0];
    TTTextHandlerPtr aTextHandler = TTTextHandlerPtr(o.instance());
    if (!aTextHandler)
        return kTTErrGeneric;
    
	TTString	*buffer, toWrite;
	TTUInt16	i, numInput = 0, numOutput = 0;
	TTValue		keys, cacheElement, s, arg, tags, none;
	TTSymbol	name, service;
	TTObject	anObject;
	
	buffer = aTextHandler->mWriter;
	
	// html header
	*buffer =  "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">";	
	*buffer += "<html>";
	*buffer += "\t<head>";
	*buffer += "\t\t<meta http-equiv=\"content-type\" content=\"text/html;charset=UTF-16\">";
	*buffer += "<title>";
	*buffer += this->mAddress.c_str();
	*buffer += "</title>";	
	
	this->cssDefinition(buffer);
	
	*buffer += "\t</head>";
	*buffer += "";
	
	// html body
	*buffer += "<body>";
	*buffer += "\t<div id=\"jmod_header\">";
	
	// Top of page displaying name of module etc.
	*buffer += "\t<img src=\"../../../documentation/graphics/jmodular.icon.png\" width=\"128\" height=\"128\">";	
	*buffer += "\t<h1>";
	*buffer += this->mAddress.c_str();
	*buffer += "</h1>";
	*buffer += "\t<h2>";
	*buffer += this->mDescription.c_str();
	*buffer += "</h2>";
	
	// Menu
	*buffer += "\t<h6><a href=\"../../../documentation/html/index.html\">Table of Contents</a> | <a href=\"../../../documentation/html/modules.html\">Index of Modules</a> | <a href=\"../../../documentation/html/credits.html\">Credits</a> | <a href=\"http://pledgie.com/campaigns/5615\">Donate</a> | <a href=\"http://www.jamoma.org/\">Jamoma.org</a></h6>";
	*buffer += "\t</div>";
	*buffer += "";
	
	/* 
	 Configuration
	 */
    tags = mTags;
    tags.toString();
	*buffer += "\t<h3> Configuration </h3>";
	*buffer += "\t<p> Tags : <code>";
	*buffer += TTString(tags[0]);
	*buffer += "</code> <br>";
    
    mObjectsObserversCache.getKeysSorted(keys);
	
	/* 
	 Inlets and outlets Objects 
	 */
	
	for (i = 0; i < keys.size(); i++)
	{
		name = keys[i];
		mObjectsObserversCache.lookup(name, cacheElement);
		anObject = cacheElement[0];
		
		if (anObject.name() == kTTSym_Input || anObject.name() == kTTSym_InputAudio)
            numInput++;
        
        if (anObject.name() == kTTSym_Output || anObject.name() == kTTSym_OutputAudio)
            numOutput++;
    }
    
    // write the number of inputs
    s = numInput;
	s.toString();
	toWrite = TTString(s[0]);
	*buffer += "\t<p>Number of signal inlets : <code> ";
    *buffer += toWrite.data();
    *buffer += " </code> <br/>";
    
    // write the number of outputs
    s = numOutput;
	s.toString();
	toWrite = TTString(s[0]);
	*buffer += "\t<p>Number of signal outlets : <code> ";
    *buffer += toWrite;
    *buffer += " </code> <br/>";
	
	/* 
	 Data @service parameter
	 */
	*buffer += "\t<h3> Parameters </h3>";	
	this->dataHeading(buffer);
	
	for (i = 0; i < keys.size(); i++)
	{
		name = keys[i];
		mObjectsObserversCache.lookup(name, cacheElement);
		anObject = cacheElement[0];
		
		if (anObject.name() == kTTSym_Data) {
			anObject.get(kTTSym_service, s);
			service = s[0];
			
			if (service == kTTSym_parameter) {
				*buffer += "\t\t<tr>";
				*buffer += "\t\t\t<td class=\"instructionName\"> ";
				*buffer += name.c_str();
				*buffer += "</td>";
				
				arg = TTValue(anObject);
				aTextHandler->setAttributeValue(kTTSym_object, arg);
				
				anObject.send("WriteAsText", inputValue);
				*buffer += "\t\t<tr>";
			}
		}
	}
	
	// End of table
	*buffer += "\t</table>";
	*buffer += "";
	*buffer += "\t<p>&nbsp;</p>";
	*buffer += "";
	
	/* 
	 Data @service message
	 */
	*buffer += "\t<h3> Messages </h3>";	
	this->dataHeading(buffer);
	
	for (i = 0; i < keys.size(); i++)
	{
		name = keys[i];
		mObjectsObserversCache.lookup(name, cacheElement);
		anObject = cacheElement[0];
		
		if (anObject.name() == kTTSym_Data) {
			anObject.get(kTTSym_service, s);
			service = s[0];
			
			if (service == kTTSym_message) {
				*buffer += "\t\t<tr>";
				*buffer += "\t\t\t<td class=\"instructionName\"> ";
				*buffer += name.c_str();
				*buffer += "</td>";
				
				arg = TTValue(anObject);
				aTextHandler->setAttributeValue(kTTSym_object, arg);
				
				anObject.send("WriteAsText", inputValue);
				*buffer += "\t\t<tr>";
			}
		}
	}
	
	// End of table
	*buffer += "\t</table>";
	*buffer += "";
	*buffer += "\t<p>&nbsp;</p>";
	*buffer += "";
	
	
	/* 
	 Data @service return
	 */
	*buffer += "\t<h3> Returns </h3>";	
	this->dataHeading(buffer);
	
	for (i = 0; i < keys.size(); i++)
	{
		name = keys[i];
		mObjectsObserversCache.lookup(name, cacheElement);
		anObject = cacheElement[0];
		
		if (anObject.name() == kTTSym_Data) {
			anObject.get(kTTSym_service, s);
			service = s[0];
			
			if (service == kTTSym_return) {
				*buffer += "\t\t<tr>";
				*buffer += "\t\t\t<td class=\"instructionName\"> ";
				*buffer += name.c_str();
				*buffer += "</td>";
				
				arg = TTValue(anObject);
				aTextHandler->setAttributeValue(kTTSym_object, arg);
				
				anObject.send("WriteAsText", inputValue);
				*buffer += "\t\t<tr>";
			}
		}
	}
	
	// End of table
	*buffer += "\t</table>";
	*buffer += "";
	*buffer += "\t<p>&nbsp;</p>";
	*buffer += "";
	
	
	// Some final info on Jamoma
	*buffer += "\t<h3> About Jamoma </h3>";		
	*buffer += "\t<p> Jamoma is a system for creating and exchanging structured Max patches. ";
	*buffer += "\tIt consists of both a set of guidelines and an implementation of those guidelines. ";
	*buffer += "\tFor more information please visit <a href=\"http://jamoma.org/\">jamoma.org</a>. </p> ";
	
	// End of page
	*buffer += "</body>";
	*buffer += "</html>";
	
	return kTTErrNone;
}

void TTContainer::dataHeading(TTString *buffer)
{		
	*buffer += "\t<table>";
	*buffer += "\t\t<tr class=\"tableHeading2\">";
	*buffer += "\t\t\t<td> name </td>";
	*buffer += "\t\t\t<td> type </td>";
	*buffer += "\t\t\t<td> bounds </td>";
	*buffer += "\t\t\t<td> clipmode </td>";
	*buffer += "\t\t\t<td> ramp/drive </td>";
#ifndef TT_NO_DSP    
	*buffer += "\t\t\t<td> ramp/function </td>";
#endif
	*buffer += "\t\t\t<td> dataspace </td>";
	*buffer += "\t\t\t<td> dataspace/unit </td>";
	*buffer += "\t\t\t<td> repetitions/filter </td>";
	*buffer += "\t\t\t<td> description </td>";
	*buffer += "\t\t<tr>";
}

void TTContainer::cssDefinition(TTString *buffer)
{
	*buffer += "<style type=\"text/css\">";
	
	*buffer +=	"\
	body {\
	margin: 0px;\
	font-family: Arial, Helvetica, sans-serif;\
	}\
	\
	h1 {\
	font-size: 24px;\
	font-weight:100;\
	padding-top: 1em;\
	margin: 0;\
	}\
	\
	\
	h2 {\
	font-size: 18px;\
	font-weight:200;\
	margin: 0;\
	color: #555;\
	text-transform: lowercase;\
	}\
	\
	h3 {\
	color: #888;\
	border-bottom: 1px solid #333;\
	font-size: 18px;\
	font-weight:100;\
	margin-top: 20px;\
	margin-bottom: 10px;\
	margin-left: 2%;\
	margin-right: 2%;\
	}\
	\
	h4{\
	color: #333;\
	font-size: 14px;\
	font-weight: bold;\
	margin-bottom: 0px;\
	margin-left: 2%;\
	margin-right: 2%;\
	}\
	\
	h6 {\
	font-size: 12px;\
	font-weight:100;\
	line-height: 1.2;\
	margin-right: 2%;\
	margin-left: 2%;\
	}\
	\
	p {\
	font-size: 12px;\
	font-weight:100;\
	margin: 5px 2%;\
	padding-bottom: 1em;\
	}\
	\
	ul{\
	margin-top:0;\
	padding-top:0;\
	}\
	\
	li {\
	font-size: 12px;\
	font-weight:100;\
	margin-top: 0;\
	margin-left: 10px;\
	padding: 0em 0em 0.3em;\
	}\
	\
	img {\
	padding: 10px 10px 0px 0px;\
	}\
	\
	\
	#jmod_header{\
	display: block;\
	margin: 0 0 40px 0;\
	}\
	\
	#jmod_header img{\
	float: left;\
	}\
	\
	\
	.objectname {\
	font-size: 24px;\
	font-weight: bold;\
	}\
	\
	\
	.moduleName {\
	font-size: 2em;\
	background-color: #c5c5c5;\
	text-align: right;\
	vertical-align: top;\
	font-weight: bold;\
	}\
	.moduleDescription {\
	font-size: 1em;\
	background-color: #000000;\
	color: #c5c5c5;\
	text-align: right;\
	vertical-align: top;\
	}\
	\
	.tableHeading2 {\
	background-color: #eee;\
	text-align: left;\
	vertical-align: top;\
	font-weight:bold;\
	font-size: 12px;\
	}\
	\
	table {\
	border: 0px;\
	width: 96%;\
	margin-top: 10px;\
	margin-bottom: 10px;\
	margin-left: 2%;\
	font-size: 14px;\
	}\
	";
	
	*buffer +=	"\
	\
	.instructionName {\
	font-family: 'Courier New', Courier, mono;\
	background-color: #edd;\
	vertical-align: top;\
	}\
	\
	.instructionType {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eee;\
	vertical-align: top;\
	}\
	\
	.instructionDataspace {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eed;\
	vertical-align: top;\
	}\
	\
	.instructionDataspaceUnit {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eee;\
	vertical-align: top;\
	}\
	\
	.instructionRangeBounds {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eed;\
	vertical-align: top;\
	}\
	.instructionRangeClipmode {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eee;\
	vertical-align: top;\
	}\
	.instructionRampDrive {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eed;\
	vertical-align: top;\
	}\
	.instructionRampFunction {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eee;\
	vertical-align: top;\
	}\
	.instructionRepetitionsFilter {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eed;\
	vertical-align: top;\
	}\
	.instructionDescription {\
	font-family: 'Times New Roman', Times, serif;\
	background-color: #eee;\
	vertical-align: top;\
	}\
	td {\
	padding-right: 5px;\
	padding-left: 5px;\
	}\
	ul {\
	list-style-type: disc;\
	}\
	.patchimage {\
	clear: both;\
	}\
	.comment {\
	color: #6666FF;\
	}\
	.smallTable {\
	width: 400px;\
	border: none;\
	}\
	caption {\
	font-size: 11px;\
	font-style: italic;\
	}\
	.filepath {\
	font-family: 'Courier New', Courier, mono;\
	}\
	.instruction {\
	font-family: 'Courier New', Courier, mono;\
	}\
	";
	
	*buffer += "</style>";
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTContainerDirectoryCallback(const TTValue& baton, const TTValue& data)
{
	TTValue			arg;
	TTContainerPtr  aContainer;
	TTPtr			hisContext;
	TTObject        anObserver;
	TTNodePtr		aNode;
	TTAddress       anAddress;
	TTUInt8			flag;
	
	// unpack baton (a #TTContainerPtr, his Context)
	aContainer = TTContainerPtr((TTPtr)baton[0]); // théo -- we have to register our self as a #TTPtr to not reference this instance otherwhise the destructor will never be called
	hisContext = baton[1];
	
	// Unpack data (anAddress, aNode, flag, anObserver)
	anAddress = data[0];
	aNode = TTNodePtr((TTPtr)data[1]);
	flag = data[2];
	anObserver = data[3];
	
	// Prepare argument
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

TTErr TTContainerValueAttributeCallback(const TTValue& baton, const TTValue& data)
{
	TTValue		cacheElement, v;
	TTObject    anObject;
	TTObject    aContainer;
	TTAddress   relativeAddress, relativeDataAddress;
	TTErr		err;
	
	// check baton
    if (baton.size() == 2) {
        
        if (baton[0].type() == kTypeObject && baton[1].type() == kTypeSymbol) {
            
            // unpack baton
            aContainer = baton[0];
            relativeAddress = baton[1];
            
            if (TTContainerPtr(aContainer.instance())->mReturnAddressCallback.valid() && TTContainerPtr(aContainer.instance())->mReturnValueCallback.valid()) {
                
                // Check what type of object is notifyng the container
                err = TTContainerPtr(aContainer.instance())->mObjectsObserversCache.lookup(relativeAddress, cacheElement);
                
                if (!err) {
                    
                    anObject = cacheElement[0];
                    
                    // DEBUG : check if the cached object is still valid
                    if (!anObject.valid()) {
                        
                        // DEBUG : this means there is a bad tree managment : we need to trace this
                        std::cout << "TTContainerValueAttributeCallback -- object at " << (const char*)relativeAddress.c_str() << " is not valid" << std::endl;
                        
                        // DEBUG : we have to exit because it's going to crash
                        return kTTErrGeneric;
                    }
                    
                    // none CONTAINER CASE
                    if (anObject.name() != kTTSym_Container) {
                        
                        v = data; // protect the data
                    }
                    // CONTAINER CASE : activity out observation
                    // the data is <relativeDataAddress, value, ...>
                    else {
                        
                        relativeDataAddress = data[0];
                        relativeAddress = relativeAddress.appendAddress(relativeDataAddress);
                        
                        v.copyFrom(data, 1); // protect the data
                    }
 
					TTValue dummy;

                    // return the address to the owner of the #TTContainer
                    TTContainerPtr(aContainer.instance())->mReturnAddressCallback.send("notify", relativeAddress, dummy);
                    
                    // return the value to the owner of the #TTContainer
                    TTContainerPtr(aContainer.instance())->mReturnValueCallback.send("notify", v, dummy);
                    
                    // Notify activity observers (about value changes only)
                    v.prepend(relativeAddress);
                    TTContainerPtr(aContainer.instance())->activityAttribute->sendNotification(kTTSym_notify, v);	// we use kTTSym_notify because we know that observers are TTCallback
                    
                    return kTTErrNone;
                }
            }
        }
    }
    
    return kTTErrGeneric;
}

TTBoolean TTContainerTestObjectAndContext(TTNodePtr n, TTPtr args)
{
	TTValue		v;
	TTValuePtr	av;
	TTPtr		c, t_c, p_c = NULL;
	
	// our context
	av = (TTValuePtr)args;
	t_c = (*av)[0];
	
	// context of the tested node
	c = n->getContext();
	
	// context of the parent of the tested node
	if (n->getParent())
		if (n->getParent()->getName() != S_SEPARATOR)
			p_c = n->getParent()->getContext();
	
	/* to - this doesn't allow data under the root to subscribe to a container at the root
	 
	// Keep only nodes from our context if they aren't under the root (p_c is NULL)
	// if contexts are different, check also if the parent context is the same as our context
	return (c == t_c && p_c ) || (c != t_c && p_c == t_c );
	 */
	
	// Keep only nodes from our context if they have the same context than the container
	// if contexts are different, check also if the parent context is the same as our context
	return (c == t_c) || (c != t_c && p_c == t_c );
	
}

TTBoolean TTContainerCompareObjectPriority(TTValue& v1, TTValue& v2) 
{
    TTSymbol    k1, k2;
    TTValuePtr  s1, s2;
	TTObject    o1, o2;
	TTValue		v;
	TTInt32		p1 = 0;
	TTInt32		p2 = 0;
    
    // get key and stored value
    k1 = v1[0];
    k2 = v2[0];
    s1 = TTValuePtr(TTPtr(v1[1]));
    s2 = TTValuePtr(TTPtr(v2[1]));
	
	// get priority of the object stored in v1
    if (s1) {
        o1 = (*s1)[1];
        if (o1.valid())
            if (!o1.get(kTTSym_priority, v))
                p1 = v[0];
    }
	
	// get priority of the object stored in v2
    if (s2) {
        o2 = (*s2)[1];
        if (o2.valid())
            if (!o2.get(kTTSym_priority, v))
                p2 = v[0];
    }
	
	if (p1 == 0 && p2 == 0) return v1 < v2;
	
	if (p1 == 0) return NO;
	if (p2 == 0) return YES;
	
	return p1 < p2;
}
