/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief Handles any signal output
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTOutput.h"

#define thisTTClass			TTOutput
#define thisTTClassName		"Output"
#define thisTTClassTags		"output"

TT_MODULAR_CONSTRUCTOR,
mType(kTTSymEmpty),
mInputAddress(kTTAdrsEmpty),
mMute(NO),
mMix(100.),
mGain(100.),
mFreeze(NO),
mSignalAttr(NULL)
{
    if (arguments.size() > 0)
        mReturnSignalCallback = arguments[0];
	
	addAttribute(Type, kTypeSymbol);
	
	addAttributeWithSetter(InputAddress, kTypeSymbol);
    addAttributeProperty(InputAddress, hidden, YES);
	
	addAttributeWithSetter(Mute, kTypeBoolean);
	addAttributeWithSetter(Mix, kTypeFloat64);
	addAttributeWithSetter(Gain, kTypeFloat64);
	addAttribute(Freeze, kTypeBoolean);
	
	addAttribute(Signal, kTypeLocalValue);
	addAttributeProperty(Signal, hidden, YES);
	addAttributeProperty(Signal, readOnly, YES);
	
	addMessageWithArguments(Send);
	addMessageProperty(Send, hidden, YES);
	
	addMessageWithArguments(SendBypassed);
	addMessageProperty(SendBypassed, hidden, YES);
	
	addMessageWithArguments(Link);
	addMessageProperty(Link, hidden, YES);
	
	addMessage(Unlink);
	addMessageProperty(Unlink, hidden, YES);
    
    // only needed because, for Max, the configuration file tells to convert 'mix' into 'Mix')
    addMessageWithArguments(Mix);
	addMessageProperty(Mix, hidden, YES);
	
	mLast.clear();
	
	this->findAttribute(TTSymbol("signal"), &mSignalAttr);
}

TTOutput::~TTOutput()
{
    if (mInputAddress != kTTSymEmpty)
        accessApplicationLocalDirectory->removeObserverForNotifications(mInputAddress, mAddressObserver);
}

TTErr TTOutput::Send(const TTValue& inputValue, TTValue& outputValue)
{
	TTErr err;
    TTValue none;
    
    if (!mReturnSignalCallback.valid())
        return kTTErrGeneric;
	
	if (mMute)
		err = kTTErrNone;
	
	else if (mFreeze) {
		
		err = mReturnSignalCallback.send("notify", mLast);
		
		notifySignalObserver(mLast);
	}
	else {
		
		err = mReturnSignalCallback.send("notify", inputValue);
		
		notifySignalObserver(inputValue);
	}
		
	// copy
	if (!mFreeze)
		mLast = inputValue;
	
	return err;
}

TTErr TTOutput::SendBypassed(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue dummy;
	return Send(inputValue, dummy);
}

TTErr TTOutput::Link(const TTValue& inputValue, TTValue& outputValue)
{
    TTValue none;
    
	mInputObject = inputValue[0];
	return kTTErrNone;
}

TTErr TTOutput::Unlink()
{
    TTValue none;
    
	mInputObject = TTObject();
	return kTTErrNone;
}

TTErr TTOutput::setInputAddress(const TTValue& value)
{
	TTValue		args;
	TTAddress   newAddress;
	TTNodePtr	aNode;
	TTObject	o;
	TTValue		none, n = value;		// use new value to protect the attribute
    
	newAddress = value[0];
    
    if (newAddress == kTTAdrsEmpty) {
        
        mAddressObserver.set(kTTSym_address, kTTAdrsEmpty);
        mAddressObserver = TTObject();
        return kTTErrGeneric;
    }
	
	if (!accessApplicationLocalDirectory->getTTNode(newAddress, &aNode)) {
		
		o = aNode->getObject();
		if (o.valid())
			if (o.name() == kTTSym_Input|| o.name() == kTTSym_InputAudio)
				Link(o, none);
	}
    
    // create receiver if needed
	if (!mAddressObserver.valid()) {
		
		// prepare arguments
		mAddressObserver = TTObject("callback");
        
		mAddressObserver.set(kTTSym_baton, TTPtr(this)); // théo -- we have to register our self as a #TTPtr to not reference this instance otherwhise the destructor will never be called
		mAddressObserver.set(kTTSym_function, TTPtr(&TTOutputDirectoryCallback));
	}
	
    // update directory observation
    if (mInputAddress != kTTAdrsEmpty)
        accessApplicationLocalDirectory->removeObserverForNotifications(mInputAddress, mAddressObserver);
    
    accessApplicationLocalDirectory->addObserverForNotifications(newAddress, mAddressObserver, 0); // ask for notification only for equal addresses
	
	mInputAddress = newAddress;
	
	return kTTErrNone;
}

TTErr TTOutput::setMute(const TTValue& value)
{
	mMute = value;
	
    if (mGainUnit.valid()) {
        
        if (mMute)
            return mGainUnit.set("linearGain", 0.0);
        else
            return mGainUnit.set("midiGain", mGain);
    }
    else
        return kTTErrGeneric;
}

TTErr TTOutput::setMix(const TTValue& value)
{
	mMix = value;
	
    return mMixUnit.set("position", mMix * 0.01);
}

TTErr TTOutput::Mix(const TTValue& inputValue, TTValue& outputValue)
{
    return setMix(inputValue);
}

TTErr TTOutput::setGain(const TTValue& value)
{
	mGain = value;
	
    if (mGainUnit.valid())
        return mGainUnit.set("midiGain", mGain);
    else
        return kTTErrGeneric;
}

TTErr TTOutput::notifySignalObserver(const TTValue& value)
{	
	mSignal = value;
	
	mSignalAttr->sendNotification(kTTSym_notify, mSignal);	// we use kTTSym_notify because we know that observers are TTCallback

	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTOutputDirectoryCallback(const TTValue& baton, const TTValue& data)
{
    TTObject        o;
	TTOutputPtr		anOutput;
	TTSymbol		anAddress;
	TTNodePtr		aNode;
	TTUInt8			flag;
    TTValue         none;
	
	// unpack baton (a #TTOutputPtr)
	anOutput = TTOutputPtr((TTPtr)baton[0]); // théo -- we have to register our self as a #TTPtr to not reference this instance otherwhise the destructor will never be called
	
	// Unpack data (anAddress, aNode, flag, anObserver)
	anAddress = data[0];
	aNode = TTNodePtr((TTPtr)data[1]);
	flag = data[2];
	
	o = aNode->getObject();
	if (o.valid()) {
		if (o.name() == kTTSym_Input || o.name() == kTTSym_InputAudio) {
			
			switch (flag) {
					
				case kAddressCreated :
				{
					anOutput->Link(o, none);
					break;
				}
					
				case kAddressDestroyed :
				{
					anOutput->Unlink();
					break;
				}
					
				default:
					break;
			}
		}
	}
	
	return kTTErrNone;
}
