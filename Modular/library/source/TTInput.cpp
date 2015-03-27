/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief Handles any signal input
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTInput.h"

#define thisTTClass			TTInput
#define thisTTClassName		"Input"
#define thisTTClassTags		"input"

TT_MODULAR_CONSTRUCTOR,
mType(kTTSymEmpty),
mOutputAddress(kTTAdrsEmpty),
mMute(NO),
mBypass(NO),
mSignalAttr(NULL)
{
    if (arguments.size() > 0)
        mReturnSignalCallback = arguments[0];
	
	if (arguments.size() > 1) {
		mSignalIn = arguments[1];
		mSignalOut = arguments[2];
		mSignalZero = arguments[3];
	}
	
	addAttribute(Type, kTypeSymbol);
	
	addAttributeWithSetter(OutputAddress, kTypeSymbol);
    addAttributeProperty(OutputAddress, hidden, YES);
	
	addAttribute(Mute, kTypeBoolean);
    
    removeAttribute(kTTSym_bypass);        // because there is already a Bypass attribute registered for all TTDataObject instances
	addAttribute(Bypass, kTypeBoolean);
    
    addAttribute(Signal, kTypeLocalValue);
	addAttributeProperty(Signal, hidden, YES);
	addAttributeProperty(Signal, readOnly, YES);
	
	addMessageWithArguments(Send);
	addMessageProperty(Send, hidden, YES);
	
	addMessageWithArguments(Link);
	addMessageProperty(Link, hidden, YES);
	
	addMessage(Unlink);
	addMessageProperty(Unlink, hidden, YES);
    
    this->findAttribute(TTSymbol("signal"), &mSignalAttr);
}

TTInput::~TTInput()
{
    if (mOutputAddress != kTTSymEmpty)
        accessApplicationLocalDirectory->removeObserverForNotifications(mOutputAddress, mAddressObserver);
}

TTErr TTInput::Send(const TTValue& inputValue, TTValue& outputValue)
{
    TTErr   err;
	TTValue none;
	
    if (!mReturnSignalCallback.valid())
        return kTTErrGeneric;
    
	if (mMute)
		return kTTErrNone;
    
	else if (mBypass && mOutputObject.valid())
		err = mOutputObject.send("SendBypassed", inputValue);
    
	else
		err = mReturnSignalCallback.send("notify", inputValue);
    
    notifySignalObserver(inputValue);
    
    return err;
}

TTErr TTInput::Link(const TTValue& inputValue, TTValue& outputValue)
{
    mOutputObject = inputValue[0];
	return kTTErrNone;
}

TTErr TTInput::Unlink()
{
	mOutputObject = TTObject();
	return kTTErrNone;
}

TTErr TTInput::setOutputAddress(const TTValue& value)
{
	TTValue		args, none;
	TTAddress	newAddress;
	TTNodePtr	aNode;
	TTList		aNodeList;
	TTObject    o;

	newAddress = value[0];
    
    if (newAddress == kTTAdrsEmpty) {
        
        mAddressObserver.set(kTTSym_address, kTTAdrsEmpty);
        mAddressObserver = TTObject();
        return kTTErrGeneric;
    }
	
	if (!accessApplicationLocalDirectory->getTTNode(newAddress, &aNode)) {
		
		o = aNode->getObject();
        if (o.name() == kTTSym_Output|| o.name() == kTTSym_OutputAudio)
            Link(o, none);
	}
	
    //create a receiver if needed
	if (!mAddressObserver.valid()) {
        
		// prepare arguments
		mAddressObserver = TTObject("callback");
        
		mAddressObserver.set(kTTSym_baton, TTPtr(this)); // théo -- we have to register our self as a #TTPtr to not reference this instance otherwhise the destructor will never be called
		mAddressObserver.set(kTTSym_function, TTPtr(&TTInputDirectoryCallback));
	}
	
    if (mOutputAddress != kTTAdrsEmpty)
        accessApplicationLocalDirectory->removeObserverForNotifications(mOutputAddress, mAddressObserver);
		
    accessApplicationLocalDirectory->addObserverForNotifications(newAddress, mAddressObserver, 0); // ask for notification only for equal addresses
	
	mOutputAddress = newAddress;
	
	return kTTErrNone;
}

TTErr TTInput::notifySignalObserver(const TTValue& value)
{
	mSignal = value;
	
	mSignalAttr->sendNotification(kTTSym_notify, mSignal);	// we use kTTSym_notify because we know that observers are TTCallback
    
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTInputDirectoryCallback(const TTValue& baton, const TTValue& data)
{
    TTObject        o;
	TTInputPtr		anInput;
	TTSymbol		anAddress;
	TTNodePtr		aNode;
	TTUInt8			flag;
	TTValue         none;
	
	// unpack baton (a #TTInputPtr)
	anInput = TTInputPtr((TTPtr)baton[0]); // théo -- we have to register our self as a #TTPtr to not reference this instance otherwhise the destructor will never be called
	
	// Unpack data (anAddress, aNode, flag, anObserver)
	anAddress = data[0];
	aNode = TTNodePtr((TTPtr)data[1]);
	flag = data[2];
	
	o = aNode->getObject();
	if (o.valid()) {
		if (o.name() == kTTSym_Output || o.name() == kTTSym_OutputAudio) {
			
			switch (flag) {
					
				case kAddressCreated :
				{
					anInput->Link(o, none);
					break;
				}
					
				case kAddressDestroyed :
				{
					anInput->Unlink();
					break;
				}
					
				default:
					break;
			}
		}
	}
	
	return kTTErrNone;
}
