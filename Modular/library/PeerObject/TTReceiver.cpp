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
mDirectory(NULL)
{
	if (arguments.size() >= 1)
		mReturnAddressCallback = arguments[0];
	
	if (arguments.size() >= 2)
		mReturnValueCallback = arguments[1];
	
	if (arguments.size() >= 3)
		mSignal = arguments[2];
	
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
    // disable reception to avoid crash
    mActive = NO;
    
	unbindAddress();
	unbindApplication();
}

TTErr TTReceiver::setAddress(const TTValue& newValue)
{
    TTErr       err;
    TTBoolean   memoActive = mActive;
    
    // disable reception to avoid crash
    mActive = NO;
    
	unbindAddress();
	unbindApplication();
	
	mAddress = newValue[0];
	
	// default attribute to bind is value
	if (mAddress.getAttribute() == NO_ATTRIBUTE)
		mAddress = mAddress.appendAttribute(kTTSym_value);
	
	mDirectory = accessApplicationDirectoryFrom(mAddress);
	if (mDirectory)
		err = bindAddress();
	else
		err = bindApplication();
    
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
	TTObject    anObject;
	TTAddress   anAddress;
	TTSymbol	ttAttributeName;
	TTValue		data, v, none;
	TTErr		err;
	
    if (!mNodesObserversCache.isEmpty()) {
        
        ttAttributeName = ToTTName(mAddress.getAttribute());
        
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
                        
                        // don't return empty value
                        if (data.size()) {
                            
                            // output the address of the node (in case we use * inside the binded address)
                            aNode->getAddress(anAddress);
                            anAddress = anAddress.appendAttribute(mAddress.getAttribute());
                            
                            // return the address
                            if (anAddress.getAttribute() == kTTSym_value)
                                v = anAddress.removeAttribute();
                            else
                                v = anAddress;
                            
                            mReturnAddressCallback.send("notify", v, none);
                            
                            // return the value
                            mReturnValueCallback.send("notify", data, none);
                        }
                        else
                            return kTTErrGeneric;
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
	TTAddress       anAddress;
	TTSymbol		ttAttributeName;
	TTAttributePtr	anAttribute = NULL;
	TTObject        o;
	TTList			aNodeList;
	TTNodePtr		aNode;
	TTValue			v, data, baton, newElement, none;
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
				if (o.valid()) {
					
					err = o.instance()->findAttribute(ttAttributeName, &anAttribute);
					
					if (!err) {
						TTObject newObserver = TTObject("callback");
						
						baton = TTValue(TTObject(this));
						aNode->getAddress(anAddress);
						baton.append(anAddress.appendAttribute(mAddress.getAttribute()));
						
						newObserver.set(kTTSym_baton, baton);
						newObserver.set(kTTSym_function, TTPtr(&TTReceiverAttributeCallback));
						
						anAttribute->registerObserverForNotifications(newObserver);
                        
                        // for Mirror object : enable listening
                        if (o.name() == kTTSym_Mirror)
							TTMirrorPtr(o.instance())->enableListening(*anAttribute, YES);
						
						// memorize the node and his attribute observer
						newElement = (TTPtr)aNode;
						newElement.append(newObserver);
						mNodesObserversCache.appendUnique(newElement);
						
						// cache the object for quick access
						mObjectCache.appendUnique(o);
                        
                        // notify that the address exists
                        if (anAddress.getAttribute() == kTTSym_value)
                            v = anAddress.removeAttribute();
                        else
                            v = anAddress;
                        
                        mReturnAddressCallback.send("notify", v, none);
					}
				}
			}
		}
	}
	
	// observe any creation or destruction below the attr_name address
	mAddressObserver = TTObject("callback");
	
	mAddressObserver.set(kTTSym_baton, TTObject(this));
	mAddressObserver.set(kTTSym_function, TTPtr(&TTReceiverDirectoryCallback));
	
	mDirectory->addObserverForNotifications(mAddress, mAddressObserver, 0); // ask for notification only for equal addresses
	
	return kTTErrNone;
}

TTErr TTReceiver::unbindAddress()
{
	TTValue			oldElement, v;
	TTNodePtr		aNode;
	TTObject        o, oldObserver;
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
            if (o.valid()) {
                
                anAttribute = NULL;
                err = o.instance()->findAttribute(ttAttributeName, &anAttribute);
                
                if (!err) {
                    anAttribute->unregisterObserverForNotifications(oldObserver);
                    
                    // for Mirror object : disable listening
                    if (o.name() == kTTSym_Mirror)
                        TTMirrorPtr(o.instance())->enableListening(*anAttribute, NO);
                }
            }
		}
        
        // clear observer cache
        mNodesObserversCache.clear();
		
        // clear object cache
        mObjectCache.clear();
		
		// stop life cycle observation
		if (mAddressObserver.valid() && mDirectory) {
			
			mDirectory->removeObserverForNotifications(mAddress, mAddressObserver);
			
			mAddressObserver = TTObject();
		}
	}
	
	return kTTErrNone;
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
	TTAttributePtr	anAttribute = NULL;
	TTObject        oldObserver, o;
	TTNodePtr		aNode, p_node;
	TTValue			c, v, b;
	TTUInt8			flag;
	TTBoolean		found;
	TTValue			newCouple, none;
	TTErr			err;
	
	// unpack baton (a #TTReceiver)
    o = baton[0];
	aReceiver = (TTReceiverPtr)o.instance();
	
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
                v = aReceiver->mAddress.removeAttribute();
                aReceiver->mReturnAddressCallback.send("notifiy", v, none);
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
					if (o.valid()) {
						
						err = o.instance()->findAttribute(ttAttributeName, &anAttribute);
						
						if (!err) {
                            
							TTObject newObserver = TTObject("callback");
							
							b = TTValue(aReceiver);
							b.append(anAddress.appendAttribute(aReceiver->mAddress.getAttribute()));
							
							newObserver.set(kTTSym_baton, b);
							newObserver.set(kTTSym_function, TTPtr(&TTReceiverAttributeCallback));
							
							anAttribute->registerObserverForNotifications(newObserver);
                            
                            // for Mirror object : enable listening
                            if (o.name() == kTTSym_Mirror)
                                TTMirrorPtr(o.instance())->enableListening(*anAttribute, YES);
							
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
                v = aReceiver->mAddress.removeAttribute();
                aReceiver->mReturnAddressCallback.send("notify", v, none);
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

                    // for Mirror object : disable listening
                    o = aNode->getObject();
					if (o.valid()) {
						
                        if (o.name() == kTTSym_Mirror) {
                            
                            err = o.instance()->findAttribute(ttAttributeName, &anAttribute);
						
                            if (!err)
                                TTMirrorPtr(o.instance())->enableListening(*anAttribute, NO);
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

TTErr TTReceiverAttributeCallback(const TTValue& baton, const TTValue& data)
{
    TTObject        o;
	TTReceiverPtr	aReceiver;
	TTAddress       anAddress;
	TTValue			v, none;
	
	// unpack baton (a #TTReceiver)
    o = baton[0];
	aReceiver = (TTReceiverPtr)o.instance();
	anAddress = baton[1];
	
	if(aReceiver->mActive) {
		
		// return the address
        if (anAddress.getAttribute() == kTTSym_value)
            v = anAddress.removeAttribute();
        else
            v = anAddress;
		
		// return address to the owner of #TTReceiver
        aReceiver->mReturnAddressCallback.send("notifiy", v, none);
		
		// return the value to the owner of #TTReceiver
        aReceiver->mReturnValueCallback.send("notifiy", data, none);
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
