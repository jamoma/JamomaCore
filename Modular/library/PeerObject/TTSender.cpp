/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A Sender Object
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTSender.h"

#define thisTTClass			TTSender
#define thisTTClassName		"Sender"
#define thisTTClassTags		"node, sender"

TT_MODULAR_CONSTRUCTOR,
mSignal(NULL),
mAddress(kTTAdrsEmpty),
mDirectory(NULL),
mAddressObserver(NULL),
mApplicationObserver(NULL)
{
	TT_ASSERT("Correct number of args to create TTSender", arguments.size() <= 1);
	
	// a Sender can handle a signal
	if (arguments.size() >= 1)
		mSignal = arguments[0];
		
	addAttributeWithSetter(Address, kTypeSymbol);
	
	addAttributeWithGetter(ObjectCache, kTypePointer);
	addAttributeProperty(ObjectCache, hidden, YES);
	addAttributeProperty(ObjectCache, readOnly, YES);
	
	addMessageWithArguments(Send);
	addMessageProperty(Send, hidden, YES);
	
	mIsSending = false;
    
    mObjectCache.setThreadProtection(true);
}

TTSender::~TTSender()
{
	if (mSignal)
		TTObjectBaseRelease(TTObjectBaseHandle(&mSignal));
	
	unbindAddress();
	unbindApplication();
}

TTErr TTSender::setAddress(const TTValue& newValue)
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

TTErr TTSender::getObjectCache(TTValue& value)
{
    value = TTPtr(&mObjectCache);
    
    return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTSender::Send(TTValue& valueToSend, TTValue& outputValue)
{
	TTObjectBasePtr	anObject;
	TTValue			aCacheElement, v, c, none;
	TTAttributePtr	anAttribute;
	TTSymbol		ttAttributeName;
	TTMessagePtr	aMessage;
	TTAddress		relativeAddress;
	TTErr			err = kTTErrNone;
	
	if (!mDirectory || mAddress == kTTAdrsEmpty)
		return kTTErrGeneric;

	if (!mIsSending) {
		
		// lock
		mIsSending = true;
		
		if (!mObjectCache.isEmpty()) {
			
			ttAttributeName = ToTTName(mAddress.getAttribute());
			
			// send data to each node of the selection
			for (mObjectCache.begin(); mObjectCache.end(); mObjectCache.next()) {
				
				aCacheElement = mObjectCache.current();
								
				// then his object
				anObject = aCacheElement[0];
				
				if (anObject) {
					// DATA CASE for value attribute
					if (anObject->getName() == kTTSym_Data && ttAttributeName == kTTSym_value) {
						
						// set the value attribute using a command
						anObject->sendMessage(kTTSym_Command, valueToSend, none);
					}
					// CONTAINER CASE for value attribute
					else if (anObject->getName() == kTTSym_Container && ttAttributeName == kTTSym_value) {
						
                        if (valueToSend.size() >= 1 ) {
                            if (valueToSend[0].type() == kTypeSymbol) {
                                relativeAddress = valueToSend[0];
                                c.copyFrom(valueToSend, 1);
                                
                                v = TTValue(relativeAddress);
                                v.append((TTPtr*)&c);
                                
                                // send the value
                                anObject->sendMessage(kTTSym_Send, v, none);
                            }
                            else
                                err = kTTErrGeneric;
                        }
                        else
                            err = kTTErrGeneric;
						
					}
					else if ((anObject->getName() == kTTSym_Input || anObject->getName() == kTTSym_InputAudio) && ttAttributeName == kTTSym_signal) {
						
						// send the value
						anObject->sendMessage(kTTSym_Send, valueToSend, none);
					}
					// DEFAULT CASE
					// Look for attribute and set it
					else if (!anObject->findAttribute(ttAttributeName, &anAttribute))
						anObject->setAttributeValue(ttAttributeName, valueToSend);
					
					// Or look for message and send it
					else if (!anObject->findMessage(ttAttributeName, &aMessage))
						anObject->sendMessage(ttAttributeName, valueToSend, none);
				}
			}
		}
		
		// unlock
		mIsSending = false;	
	}
	
	return err;
}

TTErr TTSender::bindAddress()
{
	TTNodePtr	aNode;
	TTObjectBasePtr	anObject;
	TTValuePtr	newBaton;
	TTValue		aCacheElement;
	TTList		aNodeList;
	TTValue		v, none;
	
	// 1. Look for the node(s) into the directory
	mDirectory->Lookup(mAddress, aNodeList, &aNode);
	
	// 2. make a cache containing each object
	for (aNodeList.begin(); aNodeList.end(); aNodeList.next()) {
		aNode = TTNodePtr((TTPtr)aNodeList.current()[0]);
		anObject = aNode->getObject();
		aCacheElement = TTValue(anObject);
		mObjectCache.append(aCacheElement);
	}
	
	// 3. Observe any creation or destruction below the address
	mAddressObserver = NULL; // without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectBaseInstantiate(TTSymbol("callback"), TTObjectBaseHandle(&mAddressObserver), none);
	
	newBaton = new TTValue(TTObjectBasePtr(this));
	
	mAddressObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
	mAddressObserver->setAttributeValue(kTTSym_function, TTPtr(&TTSenderDirectoryCallback));
	
	mAddressObserver->setAttributeValue(TTSymbol("owner"), TTSymbol("TTSender"));		// this is usefull only to debug
	
	mDirectory->addObserverForNotifications(mAddress, mAddressObserver, 0); // ask for notification only for equal addresses
	
	return kTTErrNone;
}

TTErr TTSender::unbindAddress()
{
	TTErr err = kTTErrNone;	
	
	if (mAddress != kTTAdrsEmpty) {
        
        mObjectCache.clear();
		
		// stop life cycle observation
		if(mAddressObserver && mDirectory) {
			
			err = mDirectory->removeObserverForNotifications(mAddress, mAddressObserver);
			
			if(!err) {
				delete (TTValuePtr)mAddressObserver->getBaton();
				TTObjectBaseRelease(TTObjectBaseHandle(&mAddressObserver));
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTSender::bindApplication() 
{
	TTValuePtr	newBaton;
    TTValue     none;
	
	if (!mApplicationObserver) {
		
		mApplicationObserver = NULL; // without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectBaseInstantiate(TTSymbol("callback"), TTObjectBaseHandle(&mApplicationObserver), none);
		
		newBaton = new TTValue(TTObjectBasePtr(this));
		
		mApplicationObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
		mApplicationObserver->setAttributeValue(kTTSym_function, TTPtr(&TTSenderApplicationManagerCallback));
		
		mApplicationObserver->setAttributeValue(TTSymbol("owner"), TTSymbol("TTSender"));		// this is usefull only to debug
		
		return TTApplicationManagerAddApplicationObserver(mAddress.getDirectory(), *mApplicationObserver);
	}
	
	return kTTErrGeneric;
}

TTErr TTSender::unbindApplication() 
{
	
	if (mApplicationObserver) {
		
		TTApplicationManagerRemoveApplicationObserver(mAddress.getDirectory(), *mApplicationObserver);
		
		delete (TTValuePtr)mApplicationObserver->getBaton();
		TTObjectBaseRelease(TTObjectBaseHandle(&mApplicationObserver));
	}
	
	mDirectory = NULL;
	
	return kTTErrNone;
}

TTErr TTSenderDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTValue			aCacheElement;
	TTSenderPtr		aSender;
	TTNodePtr		aNode;
	TTObjectBasePtr	anObject, aCacheObject;
	TTAddress		anAddress;
	TTValue			v;
	TTUInt8			flag;

	// unpack baton (a TTSenderPtr)
	b = (TTValuePtr)baton;
	aSender = TTSenderPtr((TTObjectBasePtr)(*b)[0]);

	// Unpack data (address, aNode, flag, anObserver)
	anAddress = data[0];
	aNode = TTNodePtr((TTPtr)data[1]);
	flag = data[2];
	
	switch (flag) {
			
		case kAddressCreated :
		{
			anObject = aNode->getObject();
			if (anObject) {
				aCacheElement = anObject;
				aSender->mObjectCache.appendUnique(aCacheElement);
			}
			break;
		}
			
		case kAddressDestroyed :
		{
			anObject = aNode->getObject();
			
			// find the object in the cache and remove it
			for (aSender->mObjectCache.begin(); aSender->mObjectCache.end(); aSender->mObjectCache.next()) {
				
				// get a node
				aCacheObject = aSender->mObjectCache.current()[0];
				
				if (aCacheObject == anObject) {
					aSender->mObjectCache.remove(aSender->mObjectCache.current());
					break;
				}
			}
			break;
		}
			
		default:
			break;
	}
	
	return kTTErrNone;
}

TTErr TTSenderApplicationManagerCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTSenderPtr		aSender;
	TTSymbol		anApplicationName;
	TTApplicationPtr anApplication;
	TTValue			v;
	TTUInt8			flag;
	
	// unpack baton (a TTSenderPtr)
	b = (TTValuePtr)baton;
	aSender = TTSenderPtr((TTObjectBasePtr)(*b)[0]);
	
	// Unpack data (applicationName, application, flag, observer)
	anApplicationName = data[0];
	anApplication = TTApplicationPtr((TTObjectBasePtr)data[1]);
	flag = data[2];
	
	switch (flag) {
			
		case kApplicationAdded :
		{
			aSender->mDirectory = getDirectoryFrom(aSender->mAddress);
			aSender->bindAddress();
			break;
		}
			
		case kApplicationProtocolStarted :
		{
			break;
		}
			
		case kApplicationProtocolStopped :
		{
			break;
		}
			
		case kApplicationRemoved :
		{
			aSender->unbindAddress();
			break;
		}
			
		default:
			break;
	}
	
	return kTTErrNone;
}
