/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief TTObjectBase to handle any signal output
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
#include "TTModular.h"

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
mSignalIn(NULL),
mSignalOut(NULL),
mSignalTemp(NULL),
mSignalZero(NULL),
mMixUnit(NULL),
mGainUnit(NULL),
mRampMixUnit(NULL),
mRampGainUnit(NULL),
mInputObject(NULL),
mReturnSignalCallback(NULL),
mReturnLinkCallback(NULL),
mLast(NULL),
mAddressObserver(NULL),
mSignal(kTTValNONE),
mSignalAttr(NULL)
{
	TT_ASSERT("Correct number of args to create TTOutput", arguments.size() > 0);
	
    if (arguments.size() > 0)
        mType = arguments[0];
    
    if (arguments.size() > 1) {
        mReturnSignalCallback = TTCallbackPtr((TTObjectBasePtr)arguments[1]);
        TT_ASSERT("Return Signal Callback passed to TTOutput is not NULL", mReturnSignalCallback);
    }
    
    if (arguments.size() > 2) {
        mReturnLinkCallback = TTCallbackPtr((TTObjectBasePtr)arguments[2]);
        TT_ASSERT("Return Link Callback passed to TTOutput is not NULL", mReturnLinkCallback);
    }
	
	if (arguments.size() > 3) {
		mSignalIn = arguments[3];
		mSignalOut = arguments[4];
		mSignalTemp = arguments[5];
		mSignalZero = arguments[6];
	}
	
	if (arguments.size() > 7) {
		mMixUnit = arguments[7];
		mGainUnit = arguments[8];
		mRampMixUnit = arguments[9];
		mRampGainUnit = arguments[10];
	}
	
	addAttribute(Type, kTypeSymbol);
	addAttributeProperty(Type, readOnly, YES);
	
	addAttributeWithSetter(InputAddress, kTypeSymbol);
	
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
	if (mReturnSignalCallback) {
		delete (TTValuePtr)mReturnSignalCallback->getBaton();
		TTObjectBaseRelease(TTObjectBaseHandle(&mReturnSignalCallback));
	}
	
	if (mReturnLinkCallback) {
		delete (TTValuePtr)mReturnLinkCallback->getBaton();
		TTObjectBaseRelease(TTObjectBaseHandle(&mReturnLinkCallback));
	}
	
	if (mSignalIn)
		TTObjectBaseRelease(&mSignalIn);
	
	if (mSignalOut)
		TTObjectBaseRelease(&mSignalOut);
	
	if (mSignalTemp)
		TTObjectBaseRelease(&mSignalTemp);
	
	if (mSignalZero)
		TTObjectBaseRelease(&mSignalZero);
	
	if (mMixUnit)
		TTObjectBaseRelease(&mMixUnit);
	
	if (mGainUnit)
		TTObjectBaseRelease(&mGainUnit);
	
	if (mRampMixUnit)
		TTObjectBaseRelease(&mMixUnit);
	
	if (mRampGainUnit)
		TTObjectBaseRelease(&mGainUnit);
	
	if (mAddressObserver) {
        
		if (mInputAddress != kTTSymEmpty)
			getLocalDirectory->removeObserverForNotifications(mInputAddress, mAddressObserver);
        
		delete (TTValuePtr)mAddressObserver->getBaton();
		TTObjectBaseRelease(TTObjectBaseHandle(&mAddressObserver));
	}
}

TTErr TTOutput::Send(const TTValue& inputValue, TTValue& outputValue)
{
	TTErr err;
    
    if (!mReturnSignalCallback)
        return kTTErrGeneric;
	
	if (mMute)
		err = kTTErrNone;
	
	else if (mFreeze) {
		
		err = mReturnSignalCallback->deliver(mLast);
		
		notifySignalObserver(mLast);
	}
	else {
		
		err = mReturnSignalCallback->deliver(inputValue);
		
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
	mInputObject = TTInputPtr((TTObjectBasePtr)inputValue[0]);
	
	if (mReturnLinkCallback)
		return mReturnLinkCallback->deliver(1);
	else
		return kTTErrNone;
}

TTErr TTOutput::Unlink()
{
	mInputObject = NULL;
	
	if (mReturnLinkCallback)
		return mReturnLinkCallback->deliver(0);
	else
		return kTTErrNone;
}

TTErr TTOutput::setInputAddress(const TTValue& value)
{
	TTValue			args;
	TTValuePtr		newBaton;
	TTAddress       newAddress;
	TTNodePtr		aNode;
	TTObjectBasePtr	o;
	TTValue			none, n = value;		// use new value to protect the attribute
    
	newAddress = value[0];
	
	if (!getLocalDirectory->getTTNode(newAddress, &aNode)) {
		
		o = aNode->getObject();
		if (o)
			if (o->getName() == kTTSym_Input|| o->getName() == kTTSym_InputAudio)
				Link(o, none);
	}

	if (!mAddressObserver) {
		
		// prepare arguments
		mAddressObserver = NULL; // without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectBaseInstantiate(TTSymbol("callback"), TTObjectBaseHandle(&mAddressObserver), none);
		
		newBaton = new TTValue(TTObjectBasePtr(this));
		mAddressObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
		mAddressObserver->setAttributeValue(kTTSym_function, TTPtr(&TTOutputDirectoryCallback));
		mAddressObserver->setAttributeValue(TTSymbol("owner"), TTSymbol("TTOutput"));		// this is usefull only to debug
	}
	
	if (mAddressObserver) {
		if (mInputAddress != kTTAdrsEmpty)
			getLocalDirectory->removeObserverForNotifications(mInputAddress, mAddressObserver);
		
		getLocalDirectory->addObserverForNotifications(newAddress, mAddressObserver, 0); // ask for notification only for equal addresses
	}
	
	mInputAddress = newAddress;
	
	return kTTErrNone;
}

TTErr TTOutput::setMute(const TTValue& value)
{
	mMute = value;
	
	if (mGainUnit) {
		
		if (mMute)
			return mGainUnit->setAttributeValue(TTSymbol("linearGain"), 0.0);
		else 
			return mGainUnit->setAttributeValue(TTSymbol("midiGain"), mGain);
	}
	
	return kTTErrNone;
}

TTErr TTOutput::setMix(const TTValue& value)
{
	mMix = value;
	
	if (mMixUnit)
		return mMixUnit->setAttributeValue(TTSymbol("position"), mMix * 0.01);
	
	return kTTErrNone;
}

TTErr TTOutput::Mix(const TTValue& inputValue, TTValue& outputValue)
{
    return setMix(inputValue);
}

TTErr TTOutput::setGain(const TTValue& value)
{
	mGain = value;
	
	if (mGainUnit)
		return mGainUnit->setAttributeValue(TTSymbol("midiGain"), mGain);
	
	return kTTErrNone;
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

TTErr TTOutputDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTOutputPtr		anOutput;
	TTSymbol		anAddress;
	TTNodePtr		aNode;
	TTUInt8			flag;
	TTObjectBasePtr		o;
	
	// unpack baton (an OutputPtr)
	b = (TTValuePtr)baton;
	anOutput = TTOutputPtr((TTObjectBasePtr)(*b)[0]);
	
	// Unpack data (anAddress, aNode, flag, anObserver)
	anAddress = data[0];
	aNode = TTNodePtr((TTPtr)data[1]);
	flag = data[2];
	
	o = aNode->getObject();
	if (o) {
		if (o->getName() == kTTSym_Input || o->getName() == kTTSym_InputAudio) {
			
			switch (flag) {
					
				case kAddressCreated :
				{
					TTValue unused;
					anOutput->Link(o, unused);
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
