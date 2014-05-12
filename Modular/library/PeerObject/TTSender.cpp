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
mAddress(kTTAdrsEmpty),
mDirectory(NULL)
{
	// a Sender can handle a signal
	if (arguments.size() == 1)
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
	
	mDirectory = accessApplicationDirectoryFrom(mAddress);
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
	TTObject        anObject;
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
				
				if (anObject.valid()) {
					// DATA CASE for value attribute
					if (anObject.name() == kTTSym_Data && ttAttributeName == kTTSym_value) {
						
						// set the value attribute using a command
						anObject.send(kTTSym_Command, valueToSend, none);
					}
					// CONTAINER CASE for value attribute
					else if (anObject.name() == kTTSym_Container && ttAttributeName == kTTSym_value) {
						
                        if (valueToSend.size() >= 1 ) {
                            if (valueToSend[0].type() == kTypeSymbol) {
                                relativeAddress = valueToSend[0];
                                c.copyFrom(valueToSend, 1);
                                
                                v = TTValue(relativeAddress);
                                v.append((TTPtr*)&c);
                                
                                // send the value
                                anObject.send(kTTSym_Send, v, none);
                            }
                            else
                                err = kTTErrGeneric;
                        }
                        else
                            err = kTTErrGeneric;
						
					}
					else if ((anObject.name() == kTTSym_Input || anObject.name() == kTTSym_InputAudio) && ttAttributeName == kTTSym_signal) {
						
						// send the value
						anObject.send(kTTSym_Send, valueToSend, none);
					}
					// DEFAULT CASE
					// Look for attribute and set it
					else if (!anObject.instance()->findAttribute(ttAttributeName, &anAttribute))
						anObject.set(ttAttributeName, valueToSend);
					
					// Or look for message and send it
					else if (!anObject.instance()->findMessage(ttAttributeName, &aMessage))
						anObject.send(ttAttributeName, valueToSend, none);
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
	TTObject	anObject;
	TTValue		aCacheElement;
	TTList		aNodeList;
	TTValue		v, baton;
	
	// 1. Look for the node(s) into the directory
	mDirectory->Lookup(mAddress, aNodeList, &aNode);
	
	// 2. make a cache containing each object
	for (aNodeList.begin(); aNodeList.end(); aNodeList.next()) {
		aNode = TTNodePtr((TTPtr)aNodeList.current()[0]);
		anObject = aNode->getObject();
		mObjectCache.append(anObject);
	}
	
	// 3. Observe any creation or destruction below the address
	mAddressObserver = TTObject("callback");
	
	mAddressObserver.set(kTTSym_baton, TTObject(this));
	mAddressObserver.set(kTTSym_function, TTPtr(&TTSenderDirectoryCallback));

	mDirectory->addObserverForNotifications(mAddress, mAddressObserver, 0); // ask for notification only for equal addresses
	
	return kTTErrNone;
}

TTErr TTSender::unbindAddress()
{
	TTErr err = kTTErrNone;	
	
	if (mAddress != kTTAdrsEmpty) {
        
        mObjectCache.clear();
		
		// stop life cycle observation
		if(mAddressObserver.valid() && mDirectory) {
			
			err = mDirectory->removeObserverForNotifications(mAddress, mAddressObserver);
			
			mAddressObserver = TTObject();
		}
	}
	
	return kTTErrNone;
}

TTErr TTSender::bindApplication() 
{
	if (!mApplicationObserver.valid()) {
		
		mApplicationObserver = TTObject("callback");
		
		mApplicationObserver.set(kTTSym_baton, TTObject(this));
		mApplicationObserver.set(kTTSym_function, TTPtr(&TTSenderApplicationManagerCallback));

		return TTApplicationManagerAddApplicationObserver(mAddress.getDirectory(), mApplicationObserver);
	}
	
	return kTTErrGeneric;
}

TTErr TTSender::unbindApplication() 
{
	
	if (mApplicationObserver.valid()) {
		
		TTApplicationManagerRemoveApplicationObserver(mAddress.getDirectory(), mApplicationObserver);

		mApplicationObserver = TTObject();
	}
	
	mDirectory = NULL;
	
	return kTTErrNone;
}

TTErr TTSenderDirectoryCallback(const TTValue& baton, const TTValue& data)
{
	TTValue			aCacheElement;
	TTSenderPtr		aSender;
	TTNodePtr		aNode;
	TTObject        o, anObject, aCacheObject;
	TTAddress		anAddress;
	TTValue			v;
	TTUInt8			flag;

	// unpack baton (a #TTSender)
    o = baton[0];
	aSender = (TTSenderPtr)o.instance();

	// Unpack data (address, aNode, flag, anObserver)
	anAddress = data[0];
	aNode = TTNodePtr((TTPtr)data[1]);
	flag = data[2];
	
	switch (flag) {
			
		case kAddressCreated :
		{
			anObject = aNode->getObject();
			if (anObject.valid())
				aSender->mObjectCache.appendUnique(anObject);
			
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

TTErr TTSenderApplicationManagerCallback(const TTValue& baton, const TTValue& data)
{
    TTObject        o;
	TTSenderPtr		aSender;
	TTSymbol		anApplicationName;
	TTObject        anApplication;
	TTValue			v;
	TTUInt8			flag;
	
	// unpack baton (a #TTSender)
    o = baton[0];
	aSender = (TTSenderPtr)o.instance();
	
	// Unpack data (applicationName, application, flag, observer)
	anApplicationName = data[0];
	anApplication = data[1];
	flag = data[2];
	
	switch (flag) {
			
		case kApplicationInstantiated :
		{
			aSender->mDirectory = accessApplicationDirectoryFrom(aSender->mAddress);
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
			
		case kApplicationReleased :
		{
			aSender->unbindAddress();
			break;
		}
			
		default:
			break;
	}
	
	return kTTErrNone;
}
