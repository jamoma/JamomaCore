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
mSignal(NULL),
mAddress(kTTAdrsEmpty),
mActive(YES),
mDirectory(NULL),
mReturnAddressCallback(NULL),
mReturnValueCallback(NULL),
mAddressObserver(NULL),
mApplicationObserver(NULL)
{
	TT_ASSERT("Correct number of args to create TTReceiver", arguments.size() == 2 || arguments.size() == 3);
	
	if (arguments.size() >= 1)
		mReturnAddressCallback = TTCallbackPtr((TTObjectBasePtr)arguments[0]);
	
	if (arguments.size() >= 2)
		mReturnValueCallback = TTCallbackPtr((TTObjectBasePtr)arguments[1]);
	
	if (arguments.size() >= 3)
		mSignal = TTObjectBasePtr((TTObjectBasePtr)arguments[2]);
	
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttributeWithSetter(Active, kTypeBoolean);
	
	addAttributeWithGetter(ObjectCache, kTypePointer);
	addAttributeProperty(ObjectCache, hidden, YES);
	addAttributeProperty(ObjectCache, readOnly, YES);
	
	addMessage(Get);
	addMessageProperty(Get, hidden, YES);
    
    addMessageWithArguments(Grab);
	addMessageProperty(Grab, hidden, YES);
	

    mNodesObserversCache.setThreadProtection(true);
    mObjectCache.setThreadProtection(true);
}

TTReceiver::~TTReceiver()
{
	unbindAddress();
	unbindApplication();
	
	if (mReturnAddressCallback) {
		delete (TTValuePtr)mReturnAddressCallback->getBaton();
		TTObjectBaseRelease(TTObjectBaseHandle(&mReturnAddressCallback));
	}
	
	if (mReturnValueCallback) {
		delete (TTValuePtr)mReturnValueCallback->getBaton();
		TTObjectBaseRelease(TTObjectBaseHandle(&mReturnValueCallback));
	}
	
	if (mSignal)
		TTObjectBaseRelease(TTObjectBaseHandle(&mSignal));
}

TTErr TTReceiver::setAddress(const TTValue& newValue)
{
	unbindAddress();
	unbindApplication();
	
	mAddress = newValue[0];
	
	// default attribute to bind is value
	if (mAddress.getAttribute() == NO_ATTRIBUTE)
		mAddress = mAddress.appendAttribute(kTTSym_value);
	
	mDirectory = getDirectoryFrom(mAddress);
	if (mDirectory)
		return bindAddress();
	else
		return bindApplication();
}

TTErr TTReceiver::setActive(const TTValue& newValue)
{
	TTNodePtr	aNode;
	TTObjectBasePtr anObject;
	TTAttributePtr	anAttribute = NULL;
	TTSymbol	ttAttributeName;
	TTValue		data, v;
	TTErr		err;
	
	mActive = newValue;
	
	// enable/disable listening (for Mirror object only)
    if (!mNodesObserversCache.isEmpty()) {
        
        ttAttributeName = ToTTName(mAddress.getAttribute());
        
        // for each node of the selection
        for (mNodesObserversCache.begin(); mNodesObserversCache.end(); mNodesObserversCache.next()) {
            
            // get a node from the selection
            aNode = TTNodePtr((TTPtr)mNodesObserversCache.current()[0]);
            
            // get the type and the attribute of the object
            anObject = aNode->getObject();
            if (anObject) {
                
                err = anObject->findAttribute(ttAttributeName, &anAttribute);
                
                if (!err) {
                    
                    if (anObject->getName() == kTTSym_Mirror)
                        TTMirrorPtr(anObject)->enableListening(*anAttribute, mActive);
                }
            }
        }
    }
	
	return kTTErrNone;
}

TTErr TTReceiver::getObjectCache(TTValue& value)
{
    value = TTPtr(&mObjectCache);
    
    return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTReceiver::Get()
{
	TTNodePtr	aNode;
	TTObjectBasePtr anObject;
	TTAddress   anAddress;
	TTSymbol	ttAttributeName;
	TTValue		data, v;
	TTErr		err;
	
    if (!mNodesObserversCache.isEmpty()) {
        
        ttAttributeName = ToTTName(mAddress.getAttribute());
        
        // for each node of the selection
        for (mNodesObserversCache.begin(); mNodesObserversCache.end(); mNodesObserversCache.next()) {
            
            // get a node from the selection
            aNode = TTNodePtr((TTPtr)mNodesObserversCache.current()[0]);
            
            // get the value of the attribute
            anObject = aNode->getObject();
            
            if (anObject) {
                
                err = anObject->getAttributeValue(ttAttributeName, data);
                
                if (!err) {
                    
                    // don't return empty value
                    if (data.size()) {
                        
                        // don't return empty value
                        if (data.size()) {
                            
                            // output the address of the node (in case we use * inside the binded address)
                            aNode->getAddress(anAddress);
                            anAddress = anAddress.appendAttribute(mAddress.getAttribute());
                            
                            // return the address
                            v.clear();
                            v.append(anAddress);
                            
                            if (mReturnAddressCallback)
                                mReturnAddressCallback->deliver(v);
                            
                            // return the value
                            if (mReturnValueCallback)
                                mReturnValueCallback->deliver(data);
                        }
                        else
                            return kTTErrGeneric;
					}
					else
						return kTTErrGeneric;
				}
			}
			
			return kTTErrNone;
		}
	}
	
	return kTTErrGeneric;
}

TTErr TTReceiver::Grab(const TTValue& inputValue, TTValue& outputValue)
{
    TTNodePtr	aNode;
	TTObjectBasePtr anObject;
	TTSymbol	ttAttributeName;
	TTValue		v;
	
    if (!mNodesObserversCache.isEmpty()) {
        
        ttAttributeName = ToTTName(mAddress.getAttribute());
        
        // grab the value for the first node only
        mNodesObserversCache.begin();
        aNode = TTNodePtr((TTPtr)mNodesObserversCache.current()[0]);
            
        // get the value of the attribute
        anObject = aNode->getObject();
            
        if (anObject)
            return anObject->getAttributeValue(ttAttributeName, outputValue);
    }
	
	return kTTErrGeneric;
}

TTErr TTReceiver::bindAddress()
{
	TTAddress       anAddress;
	TTSymbol		ttAttributeName;
	TTAttributePtr	anAttribute = NULL;
	TTObjectBasePtr	newObserver, o;
	TTList			aNodeList;
	TTNodePtr		aNode;
	TTValue			v, data, newElement, none;
	TTValuePtr		newBaton;
	TTErr			err;
	
	if (!mDirectory)
		return kTTErrGeneric;
	
	// for any Attribute observation except created, destroyed
	ttAttributeName = ToTTName(mAddress.getAttribute());
	
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
				
				// prepare the callback mecanism to
				// be notified about changing value attribute
				// if the attribute exist
				o = aNode->getObject();
				if (o) {
					
					err = o->findAttribute(ttAttributeName, &anAttribute);
					
					if (!err) {
						
						newObserver = NULL; // without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
						TTObjectBaseInstantiate(TTSymbol("callback"), TTObjectBaseHandle(&newObserver), none);
						
						newBaton = new TTValue(TTObjectBasePtr(this));
						aNode->getAddress(anAddress);
						newBaton->append(anAddress.appendAttribute(mAddress.getAttribute()));
						
						newObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
						newObserver->setAttributeValue(kTTSym_function, TTPtr(&TTReceiverAttributeCallback));
						
						newObserver->setAttributeValue(TTSymbol("owner"), TTSymbol("TTReceiver"));					// this is usefull only to debug
						
						anAttribute->registerObserverForNotifications(*newObserver);
                        
                        // for Mirror object : enable listening
                        if (o->getName() == kTTSym_Mirror)
							TTMirrorPtr(o)->enableListening(*anAttribute, YES);
						
						// memorize the node and his attribute observer
						newElement = (TTPtr)aNode;
						newElement.append(newObserver);
						mNodesObserversCache.appendUnique(newElement);
						
						// cache the object for quick access
						mObjectCache.appendUnique(o);
                        
                        // notify that the address exists
                        if (mReturnAddressCallback) {
                            
                            v = TTValue(anAddress);
                            mReturnAddressCallback->deliver(v);
                        }
					}
				}
			}
		}
	}
	
	// observe any creation or destruction below the attr_name address
	mAddressObserver = NULL; // without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectBaseInstantiate(TTSymbol("callback"), TTObjectBaseHandle(&mAddressObserver), none);
	
	newBaton = new TTValue(TTObjectBasePtr(this));
	
	mAddressObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
	mAddressObserver->setAttributeValue(kTTSym_function, TTPtr(&TTReceiverDirectoryCallback));
	
	mAddressObserver->setAttributeValue(TTSymbol("owner"), TTSymbol("TTReceiver"));							// this is usefull only to debug
	
	mDirectory->addObserverForNotifications(mAddress, mAddressObserver, 0); // ask for notification only for equal addresses
	
	return kTTErrNone;
}

TTErr TTReceiver::unbindAddress()
{
	TTValue			oldElement, v;
	TTNodePtr		aNode;
	TTObjectBasePtr	oldObserver, o;
	TTSymbol		ttAttributeName;
	TTAttributePtr	anAttribute;
	TTErr			err = kTTErrNone;
	
	if (mAddress != kTTAdrsEmpty) {
		
		// stop attribute obeservation
		// for each node of the selection
			ttAttributeName = ToTTName(mAddress.getAttribute());
			
        for (mNodesObserversCache.begin(); mNodesObserversCache.end(); mNodesObserversCache.next()){
            
            // get a cache element
            oldElement = mNodesObserversCache.current();
            
            // get the node
            aNode = TTNodePtr((TTPtr)oldElement[0]);
            
            // get the observer
            oldObserver = oldElement[1];
            
            // stop attribute observation of the node
            // if the attribute exist
            o = aNode->getObject();
            if (o) {
                
                anAttribute = NULL;
                err = o->findAttribute(ttAttributeName, &anAttribute);
                
                if(!err){
                    
                    err = anAttribute->unregisterObserverForNotifications(*oldObserver);
                    
                    if(!err) {
                        delete (TTValuePtr)TTCallbackPtr(oldObserver)->getBaton();
                        TTObjectBaseRelease(&oldObserver);
                    }
                    
                    // for Mirror object : disable listening
                    if (o->getName() == kTTSym_Mirror)
                        TTMirrorPtr(o)->enableListening(*anAttribute, NO);
                }
            }
		}
        
        // clear observer cache
        mNodesObserversCache.clear();
		
        // clear object cache
        mObjectCache.clear();
		
		// stop life cycle observation
		if (mAddressObserver && mDirectory) {
			
			err = mDirectory->removeObserverForNotifications(mAddress, mAddressObserver);
			
			if(!err) {
				delete (TTValuePtr)mAddressObserver->getBaton();
				TTObjectBaseRelease(TTObjectBaseHandle(&mAddressObserver));
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTReceiver::bindApplication() 
{
	TTValuePtr	newBaton;
    TTValue     none;
	
	if (!mApplicationObserver) {
		
		mApplicationObserver = NULL; // without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectBaseInstantiate(TTSymbol("callback"), TTObjectBaseHandle(&mApplicationObserver), none);
		
		newBaton = new TTValue(TTObjectBasePtr(this));
		
		mApplicationObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
		mApplicationObserver->setAttributeValue(kTTSym_function, TTPtr(&TTReceiverApplicationManagerCallback));
		
		mApplicationObserver->setAttributeValue(TTSymbol("owner"), TTSymbol("TTReceiver"));		// this is usefull only to debug
		
		return TTApplicationManagerAddApplicationObserver(mAddress.getDirectory(), *mApplicationObserver);
	}
	
	return kTTErrGeneric;
}

TTErr TTReceiver::unbindApplication() 
{
	if (mApplicationObserver) {
		
		TTApplicationManagerRemoveApplicationObserver(mAddress.getDirectory(), *mApplicationObserver);
		
		delete (TTValuePtr)mApplicationObserver->getBaton();
		TTObjectBaseRelease(TTObjectBaseHandle(&mApplicationObserver));
	}
	
	mDirectory = NULL;
	
	return kTTErrNone;
}

TTErr TTReceiverDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTReceiverPtr	aReceiver;
	TTAddress       anAddress;
	TTSymbol		ttAttributeName;
	TTAttributePtr	anAttribute = NULL;
	TTObjectBasePtr	newObserver, oldObserver, o = NULL;
	TTNodePtr		aNode, p_node;
	TTValue			c, v;
	TTUInt8			flag;
	TTBoolean		found;
	TTValuePtr		newBaton;
	TTValue			newCouple, none;
	TTErr			err;
	
	// unpack baton
	b = (TTValuePtr)baton;
	aReceiver = TTReceiverPtr((TTObjectBasePtr)(*b)[0]);
	
	// Unpack data (anAddress, aNode, flag, anObserver)
	anAddress = data[0];
	aNode = TTNodePtr((TTPtr)data[1]);
	flag = data[2];
	
	ttAttributeName = ToTTName(aReceiver->mAddress.getAttribute());
	
	switch (flag) {
			
		case kAddressCreated :
		{
			
			if (ttAttributeName == kTTSym_created)
			{
				// return the address
				if (aReceiver->mReturnAddressCallback) {
                    v.append(aReceiver->mAddress.removeAttribute());
					aReceiver->mReturnAddressCallback->deliver(v);
                }
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
				
				if (!found)
				{
					// prepare the callback mecanism to
					// be notified about changing value attribute
					// if the attribute exist
					o = aNode->getObject();
					if (o) {
						
						err = o->findAttribute(ttAttributeName, &anAttribute);
						
						if (!err) {
							
							newObserver = NULL; // without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
							TTObjectBaseInstantiate(TTSymbol("callback"), &newObserver, none);
							
							newBaton = new TTValue(aReceiver);
							newBaton->append(anAddress.appendAttribute(aReceiver->mAddress.getAttribute()));
							
							newObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
							newObserver->setAttributeValue(kTTSym_function, TTPtr(&TTReceiverAttributeCallback));
							
							newObserver->setAttributeValue(TTSymbol("owner"), TTSymbol("TTReceiver"));			// this is usefull only to debug
							
							anAttribute->registerObserverForNotifications(*newObserver);
                            
                            // for Mirror object : enable listening
                            if (o->getName() == kTTSym_Mirror)
                                TTMirrorPtr(o)->enableListening(*anAttribute, YES);
							
							// memorize the node and his attribute observer
							newCouple = (TTPtr)aNode;
							newCouple.append(newObserver);
							aReceiver->mNodesObserversCache.appendUnique(newCouple);
							
							// cache the object for quick access
							aReceiver->mObjectCache.appendUnique(o);
						}
					}
				}
			}
			
			break;
		}
			
		case kAddressDestroyed :
		{
			if (ttAttributeName == kTTSym_destroyed)
			{
				// return the address
				if (aReceiver->mReturnAddressCallback) {
                    
                    v.append(aReceiver->mAddress.removeAttribute());
					aReceiver->mReturnAddressCallback->deliver(v);
                }
			}
			else if (ttAttributeName != kTTSym_created)
			{
				// look at the node among memorized <node, observer>
				
				// for each node of the selection
				found = false;
				for(aReceiver->mNodesObserversCache.begin(); aReceiver->mNodesObserversCache.end(); aReceiver->mNodesObserversCache.next()){
					
					// get a couple
					c = aReceiver->mNodesObserversCache.current();
					
					// get the node of the couple
					p_node = TTNodePtr((TTPtr)c[0]);
					
					// compare it to the receive node
					if(p_node == aNode){
						found = true;
						break;
					}
				}
				
				if (found) {
					
					// get the observer of the couple
					oldObserver = c[1];
					
					// destroy the observer (don't need to unregister because the object is destroyed...)
                    delete (TTValuePtr)TTCallbackPtr(oldObserver)->getBaton();
					TTObjectBaseRelease(&oldObserver);

                    // for Mirror object : disable listening
                    o = aNode->getObject();
					if (o) {
						
                        if (o->getName() == kTTSym_Mirror) {
                            
                            err = o->findAttribute(ttAttributeName, &anAttribute);
						
                            if (!err)
                                TTMirrorPtr(o)->enableListening(*anAttribute, NO);
                        }
                    }
					
					// forget this couple
					aReceiver->mNodesObserversCache.remove(c);
					
					// forget the object
					aReceiver->mObjectCache.remove(o);
				}
			}
			break;
		}
			
		default:
			break;
	}
	
	return kTTErrNone;
}

TTErr TTReceiverAttributeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTReceiverPtr	aReceiver;
	TTAddress       anAddress;
	TTValue			v;
	
	// unpack baton
	b = (TTValuePtr)baton;
	aReceiver = TTReceiverPtr((TTObjectBasePtr)(*b)[0]);
	anAddress = (*b)[1];
	
	if(aReceiver->mActive) {
		
		// return the address
		v.append(anAddress);
		
		// return address
		if (aReceiver->mReturnAddressCallback)
			aReceiver->mReturnAddressCallback->deliver(v);
		
		// return the value
		if (aReceiver->mReturnValueCallback)
			aReceiver->mReturnValueCallback->deliver(data);
	}
	
	return kTTErrNone;
}

TTErr TTReceiverApplicationManagerCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTReceiverPtr	aReceiver;
	TTSymbol		anApplicationName;
	TTApplicationPtr anApplication;
	TTValue			v;
	TTUInt8			flag;
	
	// unpack baton (a TTReceiverPtr)
	b = (TTValuePtr)baton;
	aReceiver = TTReceiverPtr((TTObjectBasePtr)(*b)[0]);
	
	// Unpack data (applicationName, application, flag, observer)
	anApplicationName = data[0];
	anApplication = TTApplicationPtr((TTObjectBasePtr)data[1]);
	flag = data[2];
	
	switch (flag) {
			
		case kApplicationAdded :
		{
			aReceiver->mDirectory = getDirectoryFrom(aReceiver->mAddress);
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
			
		case kApplicationRemoved :
		{
			aReceiver->unbindAddress();
			break;
		}
			
		default:
			break;
	}
	
	return kTTErrNone;
}
