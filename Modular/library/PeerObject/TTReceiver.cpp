/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A Receiver Object
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTReceiver.h"

#define thisTTClass			TTReceiver
#define thisTTClassName		"Receiver"
#define thisTTClassTags		"node, receiver"

TT_MODULAR_CONSTRUCTOR,
mAddress(kTTAdrsEmpty),
mActive(YES),
mDirectory(NULL),
mObjectCache(NULL)
{
	if (arguments.size() >= 1)
		mReturnAddressCallback = arguments[0];
	
	if (arguments.size() >= 2)
		mReturnValueCallback = arguments[1];
	
	if (arguments.size() >= 3)
		mSignal = arguments[2];
	
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttributeWithSetter(Active, kTypeBoolean);
	
	addAttribute(ObjectCache, kTypePointer);
	addAttributeProperty(ObjectCache, hidden, YES);
	addAttributeProperty(ObjectCache, readOnly, YES);
	
	addMessage(Get);
	addMessageProperty(Get, hidden, YES);
    
    addMessageWithArguments(Grab);
	addMessageProperty(Grab, hidden, YES);
	
    mNodesObserversCache.setThreadProtection(true);
    
    mObjectCache = new TTList();
    mObjectCache->setThreadProtection(true);
}

TTReceiver::~TTReceiver()
{
    // disable reception to avoid crash
    mActive = NO;
    
    unbindAddress();
	unbindApplication();
    
    delete mObjectCache;
}

TTErr TTReceiver::setAddress(const TTValue& newValue)
{
    TTErr       err = kTTErrGeneric;
    TTBoolean   memoActive = mActive;
    
    // disable reception to avoid crash
    mActive = NO;
    
	unbindAddress();
	unbindApplication();
	
	mAddress = newValue[0];
    
    if (mAddress != kTTAdrsEmpty) {
        
        mDirectory = accessApplicationDirectoryFrom(mAddress);
        if (mDirectory)
            err = bindAddress();
        else
            err = bindApplication();
    }
    
    // enable reception
    mActive = memoActive;
    
    return err;
}

TTErr TTReceiver::setActive(const TTValue& newValue)
{
	TTNodePtr	aNode;
	TTObject    anObject;
	TTAttributePtr	anAttribute = NULL;
	TTSymbol	ttAttributeName;
	TTValue		data, v;
	TTErr		err;
	
	mActive = newValue;
	
	// enable/disable listening (for Mirror object only)
    if (!mNodesObserversCache.isEmpty()) {
        
        ttAttributeName = ToTTName(mAddress.getAttribute());
        
        // default attribute to bind is value
        if (ttAttributeName == NO_ATTRIBUTE)
            ttAttributeName = kTTSym_value;
        
        // for each node of the selection
        for (mNodesObserversCache.begin(); mNodesObserversCache.end(); mNodesObserversCache.next()) {
            
            // get a node from the selection
            aNode = TTNodePtr((TTPtr)mNodesObserversCache.current()[0]);
            
            // get the type and the attribute of the object
            anObject = aNode->getObject();
            if (anObject.valid()) {
                
                err = anObject.instance()->findAttribute(ttAttributeName, &anAttribute);
                
                if (!err) {
                    
                    if (anObject.name() == kTTSym_Mirror)
                        TTMirrorPtr(anObject.instance())->enableListening(*anAttribute, mActive);
                }
            }
        }
    }
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTReceiver::Get()
{
	TTNodePtr	aNode;
	TTObject    anObject;
	TTAddress   anAddress;
	TTSymbol	ttAttributeName;
	TTValue		data, v, none;
	TTErr		err;
	
    if (!mNodesObserversCache.isEmpty()) {
        
        ttAttributeName = ToTTName(mAddress.getAttribute());
        
        // default attribute to bind is value
        if (ttAttributeName == NO_ATTRIBUTE)
            ttAttributeName = kTTSym_value;
        
        // for each node of the selection
        for (mNodesObserversCache.begin(); mNodesObserversCache.end(); mNodesObserversCache.next()) {
            
            // get a node from the selection
            aNode = TTNodePtr((TTPtr)mNodesObserversCache.current()[0]);
            
            // get the value of the attribute
            anObject = aNode->getObject();
            
            if (anObject.valid()) {
                
                err = anObject.get(ttAttributeName, data);
                
                if (!err) {
                    
                    // don't return empty value
                    if (data.size()) {
                        
                        // output the address of the node (in case we use * inside the binded address)
                        aNode->getAddress(anAddress);
                        anAddress = anAddress.appendAttribute(mAddress.getAttribute());
                        
                        // return the address
                        if (mReturnAddressCallback.valid())
                            mReturnAddressCallback.send("notify", anAddress, none);
                            
                        // return the value
                        if (mReturnValueCallback.valid())
                            mReturnValueCallback.send("notify", data, none);

					}
					else
						return kTTErrGeneric;
				}
			}
		}
        
        return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTReceiver::Grab(const TTValue& inputValue, TTValue& outputValue)
{
    TTNodePtr	aNode;
	TTObject    anObject;
	TTSymbol	ttAttributeName;
	TTValue		v;
	
    if (!mNodesObserversCache.isEmpty()) {
        
        ttAttributeName = ToTTName(mAddress.getAttribute());
        
        // default attribute to bind is value
        if (ttAttributeName == NO_ATTRIBUTE)
            ttAttributeName = kTTSym_value;
        
        // grab the value for the first node only
        mNodesObserversCache.begin();
        aNode = TTNodePtr((TTPtr)mNodesObserversCache.current()[0]);
            
        // get the value of the attribute
        anObject = aNode->getObject();
        
        return anObject.get(ttAttributeName, outputValue);
    }
	
	return kTTErrGeneric;
}

TTErr TTReceiver::bindAddress()
{
	TTAddress   anAddress;
	TTSymbol    ttAttributeName;
	TTList      aNodeList;
	TTNodePtr   aNode;
	TTErr       err;
	
	if (!mDirectory)
		return kTTErrGeneric;
	
	// for any attribute observation except created, destroyed
	ttAttributeName = ToTTName(mAddress.getAttribute());
    
    // default attribute to bind is value
    if (ttAttributeName == NO_ATTRIBUTE)
        ttAttributeName = kTTSym_value;
	
	if ((ttAttributeName != kTTSym_created) && (ttAttributeName != kTTSym_destroyed))
	{
		// Look for node(s) into the directory
		err = mDirectory->Lookup(mAddress, aNodeList, &aNode);
		
		// Start attribute observation on each existing node of the selection
		if (!err) {
			
			for (aNodeList.begin(); aNodeList.end(); aNodeList.next())
			{
                // get a node from the selection
                aNode = TTNodePtr((TTPtr)aNodeList.current()[0]);
				
				// prepare the callback mechanism to be notified about changing value attribute if the attribute exist
                aNode->getAddress(anAddress);
                cacheNodeObserver(aNode, anAddress, ttAttributeName);
			}
		}
	}
	
	// observe any creation or destruction below the attr_name address
	mAddressObserver = TTObject("callback");
	
	mAddressObserver.set(kTTSym_baton, TTPtr(this)); // théo -- we have to register our self as a #TTPtr to not reference this instance otherwhise the destructor will never be called
	mAddressObserver.set(kTTSym_function, TTPtr(&TTReceiverDirectoryCallback));
	
	mDirectory->addObserverForNotifications(mAddress, mAddressObserver, 0); // ask for notification only for equal addresses
	
	return kTTErrNone;
}

void TTReceiver::cacheNodeObserver(TTNodePtr aNode, TTAddress& anAddress, TTSymbol& anAttributeName)
{
    TTObject anObject = aNode->getObject();
    
    if (anObject.valid()) {
        
        TTAttributePtr	anAttribute = NULL;
        
        TTErr err = anObject.instance()->findAttribute(anAttributeName, &anAttribute);
        
        if (!err) {
            
            TTValue     baton, newElement, none, data;
            TTObject    newObserver = TTObject("callback");
            
            baton = TTValue(TTObject(this));
            baton.append(anAddress);
            
            newObserver.set(kTTSym_baton, baton);
            newObserver.set(kTTSym_function, TTPtr(&TTReceiverAttributeCallback));
            
            anAttribute->registerObserverForNotifications(newObserver);
            
            // for Mirror object : enable listening
            if (anObject.name() == kTTSym_Mirror)
                TTMirrorPtr(anObject.instance())->enableListening(*anAttribute, YES);
            
            // memorize the node and his attribute observer
            newElement = (TTPtr)aNode;
            newElement.append(newObserver);
            mNodesObserversCache.appendUnique(newElement);
            
            // cache the object for quick access
            mObjectCache->appendUnique(anObject);
            
            // return address and value if possible (except for signal case)
            if (anAttributeName != kTTSym_signal) {
                
                err = anObject.get(anAttributeName, data);
                
                if (!err) {
                    
                    // don't return empty value
                    if (data.size()) {
                        
                        // return the address of the node (in case we use * inside the binded address)
                        if (mReturnAddressCallback.valid())
                            mReturnAddressCallback.send("notify", anAddress.appendAttribute(ToAppName(anAttributeName)), none);
                        
                        // return the value
                        if (mReturnValueCallback.valid())
                            mReturnValueCallback.send("notify", data, none);
                        
                    }
                }
            }
        }
    }
}

TTErr TTReceiver::unbindAddress()
{
	TTValue     oldElement;
	TTNodePtr   aNode;
	TTObject    oldObserver;
	TTSymbol    ttAttributeName;
	
	if (mAddress != kTTAdrsEmpty) {
		
		// stop attribute obeservation
		// for each node of the selection
        ttAttributeName = ToTTName(mAddress.getAttribute());
        
        // default attribute to bind is value
        if (ttAttributeName == NO_ATTRIBUTE)
            ttAttributeName = kTTSym_value;
			
        for (mNodesObserversCache.begin(); mNodesObserversCache.end(); mNodesObserversCache.next()){
            
            // get a cache element
            oldElement = mNodesObserversCache.current();
            
            // get the node
            aNode = TTNodePtr((TTPtr)oldElement[0]);
            
            // get the observer
            oldObserver = oldElement[1];
            
            // stop attribute observation of the node if the attribute exist
            uncacheNodeObserver(aNode, oldObserver,  ttAttributeName);
		}
        
        // clear observer cache
        mNodesObserversCache.clear();
		
        // clear object cache
        mObjectCache->clear();
		
		// stop life cycle observation
		if (mAddressObserver.valid() && mDirectory) {
			
			mDirectory->removeObserverForNotifications(mAddress, mAddressObserver);
			
			mAddressObserver = TTObject();
		}
	}
	
	return kTTErrNone;
}

void TTReceiver::uncacheNodeObserver(TTNodePtr aNode, TTObject& oldObserver, TTSymbol& anAttributeName)
{
    TTObject anObject = aNode->getObject();
    
    if (anObject.valid()) {
        
        TTAttributePtr anAttribute = NULL;
        
        TTErr err = anObject.instance()->findAttribute(anAttributeName, &anAttribute);
        
        if (!err) {
            
            anAttribute->unregisterObserverForNotifications(oldObserver);
            
            // for Mirror object : disable listening
            if (anObject.name() == kTTSym_Mirror)
                TTMirrorPtr(anObject.instance())->enableListening(*anAttribute, NO);
        }
    }
}

TTErr TTReceiver::bindApplication()
{
	if (!mApplicationObserver.valid()) {
		
		mApplicationObserver = TTObject("callback");
		
		mApplicationObserver.set(kTTSym_baton, TTObject(this));
		mApplicationObserver.set(kTTSym_function, TTPtr(&TTReceiverApplicationManagerCallback));
		
		return TTApplicationManagerAddApplicationObserver(mAddress.getDirectory(), mApplicationObserver);
	}
	
	return kTTErrGeneric;
}

TTErr TTReceiver::unbindApplication() 
{
	if (mApplicationObserver.valid()) {
		
		TTApplicationManagerRemoveApplicationObserver(mAddress.getDirectory(), mApplicationObserver);
		
		mApplicationObserver = TTObject();
	}
	
	mDirectory = NULL;
	
	return kTTErrNone;
}

TTErr TTReceiverDirectoryCallback(const TTValue& baton, const TTValue& data)
{
	TTReceiverPtr	aReceiver;
	TTAddress       anAddress;
	TTSymbol		ttAttributeName;
	TTObject        oldObserver, o;
	TTNodePtr		aNode, p_node;
	TTValue			oldElement, v, b, none;
	TTUInt8			flag;
	TTBoolean		found;
	TTErr			err;
	
	// unpack baton (a #TTReceiverPtr)
	aReceiver = TTReceiverPtr((TTPtr)baton[0]); // théo -- we have to register our self as a #TTPtr to not reference this instance otherwhise the destructor will never be called
	
	// Unpack data (anAddress, aNode, flag, anObserver)
	anAddress = data[0];
	aNode = TTNodePtr((TTPtr)data[1]);
	flag = data[2];
	
	ttAttributeName = ToTTName(aReceiver->mAddress.getAttribute());
    
    // default attribute to bind is value
    if (ttAttributeName == NO_ATTRIBUTE)
        ttAttributeName = kTTSym_value;
	
	switch (flag) {
			
		case kAddressCreated :
		{
			
			if (ttAttributeName == kTTSym_created)
			{
				// return the address
                v = aReceiver->mAddress.removeAttribute();
                
                if (aReceiver->mReturnAddressCallback.valid())
                    aReceiver->mReturnAddressCallback.send("notify", v, none);
			}
			else if (ttAttributeName != kTTSym_destroyed)
			{
				// is the observer already exist ?
				found = false;
                
                // for each node of the selection
                for(aReceiver->mNodesObserversCache.begin(); aReceiver->mNodesObserversCache.end(); aReceiver->mNodesObserversCache.next()) {
                    
                    // get the node of the couple
                    p_node = TTNodePtr((TTPtr)aReceiver->mNodesObserversCache.current()[0]);
                    
                    // compare it to the receive node
                    if(p_node == aNode)
                        found = true;
                }
				
                // prepare the callback mecanism to be notified about changing value attribute if the attribute exist
				if (!found)
                    aReceiver->cacheNodeObserver(aNode, anAddress, ttAttributeName);

			}
			
			break;
		}
        
		case kAddressDestroyed :
		{
			if (ttAttributeName == kTTSym_destroyed)
			{
				// return the address
                v = aReceiver->mAddress.removeAttribute();
                
                if (aReceiver->mReturnAddressCallback.valid())
                    aReceiver->mReturnAddressCallback.send("notify", v, none);
			}
			else if (ttAttributeName != kTTSym_created)
			{
				// look at the node among memorized <node, observer>
				
				// for each node of the selection
				found = false;
				for(aReceiver->mNodesObserversCache.begin(); aReceiver->mNodesObserversCache.end(); aReceiver->mNodesObserversCache.next()){
					
					// get a oldElement
					oldElement = aReceiver->mNodesObserversCache.current();
					
					// get the node
					p_node = TTNodePtr((TTPtr)oldElement[0]);
					
					// compare it to the receive node
					if(p_node == aNode){
						found = true;
						break;
					}
				}
				
				if (found) {
					
					// get the observer
					oldObserver = oldElement[1];
                    
                    // stop attribute observation of the node if the attribute exist
                    aReceiver->uncacheNodeObserver(aNode, oldObserver, ttAttributeName);
					
					// forget this oldElement
					aReceiver->mNodesObserversCache.remove(oldElement);
					
					// forget the object
					aReceiver->mObjectCache->remove(aNode->getObject());
				}
			}
			break;
		}
			
		default:
			break;
	}
	
	return kTTErrNone;
}

TTErr TTReceiverAttributeCallback(const TTValue& baton, const TTValue& data)
{
    TTObject        o;
	TTReceiverPtr	aReceiver;
	TTValue			v, none;
	
	// unpack baton (a #TTReceiver, address)
    o = baton[0];
	aReceiver = (TTReceiverPtr)o.instance();
	
	if (aReceiver->mActive) {
		
		// return address to the owner of #TTReceiver
        if (aReceiver->mReturnAddressCallback.valid())
            aReceiver->mReturnAddressCallback.send("notify", baton[1], none);
		
		// return the value to the owner of #TTReceiver
        if (aReceiver->mReturnValueCallback.valid())
            aReceiver->mReturnValueCallback.send("notify", data, none);
	}
	
	return kTTErrNone;
}

TTErr TTReceiverApplicationManagerCallback(const TTValue& baton, const TTValue& data)
{
    TTObject        o;
	TTReceiverPtr	aReceiver;
	TTSymbol		anApplicationName;
	TTObject        anApplication;
	TTValue			v;
	TTUInt8			flag;
	
	// unpack baton (a #TTReceiver)
	o = baton[0];
	aReceiver = (TTReceiverPtr)o.instance();
	
	// Unpack data (applicationName, application, flag, observer)
	anApplicationName = data[0];
	anApplication = data[1];
	flag = data[2];
	
	switch (flag) {
			
		case kApplicationInstantiated :
		{
			aReceiver->mDirectory = accessApplicationDirectoryFrom(aReceiver->mAddress);
			aReceiver->bindAddress();
			break;
		}
			
		case kApplicationProtocolStarted :
		{
			aReceiver->setActive(YES);
			break;
		}
			
		case kApplicationProtocolStopped :
		{
			aReceiver->setActive(NO);
			break;
		}
			
		case kApplicationReleased :
		{
			aReceiver->unbindAddress();
			break;
		}
			
		default:
			break;
	}
	
	return kTTErrNone;
}
