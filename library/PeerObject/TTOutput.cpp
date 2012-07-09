/* 
 * TTObject to handle any signal output
 *
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTOutput.h"

#define thisTTClass			TTOutput
#define thisTTClassName		"Output"
#define thisTTClassTags		"output"

TT_MODULAR_CONSTRUCTOR,
mNumber(0),
mType(kTTSymEmpty),
mInputAddress(kTTAdrsEmpty),
mMute(NO),
mMix(100.),
mGain(100.),
mFreeze(NO),
mPreview(NO),
mSignalIn(NULL),
mSignalOut(NULL),
mSignalTemp(NULL),
mSignalZero(NULL),
mMixUnit(NULL),
mGainUnit(NULL),
mRampMixUnit(NULL),
mRampGainUnit(NULL),
mInfo(kTTValNONE),
mIndex(0),
mInputObject(NULL),
mReturnSignalCallback(NULL),
mReturnLinkCallback(NULL),
mLast(NULL),
mAddressObserver(NULL),
mSignal(kTTValNONE),
mSignalAttr(NULL)
{
	TT_ASSERT("Correct number of args to create TTOutput", arguments.getSize() >= 3);
	
	arguments.get(0, mNumber);
	TT_ASSERT("Number passed to TTOutput is not 0", mNumber);
	arguments.get(1, &mType);
	arguments.get(2, (TTPtr*)&mReturnSignalCallback);
	TT_ASSERT("Return Signal Callback passed to TTOutput is not NULL", mReturnSignalCallback);
	
	if (arguments.getSize() > 3) {
		arguments.get(3, (TTPtr*)&mReturnLinkCallback);
		TT_ASSERT("Return Link Callback passed to TTOutput is not NULL", mReturnLinkCallback);
	}
	
	if (arguments.getSize() > 4) {
		arguments.get(4, (TTPtr*)&mSignalIn);
		arguments.get(5, (TTPtr*)&mSignalOut);
		arguments.get(6, (TTPtr*)&mSignalTemp);
		arguments.get(7, (TTPtr*)&mSignalZero);
	}
	
	if (arguments.getSize() > 8) {
		arguments.get(8, (TTPtr*)&mMixUnit);
		arguments.get(9, (TTPtr*)&mGainUnit);
		arguments.get(10, (TTPtr*)&mRampMixUnit);
		arguments.get(11, (TTPtr*)&mRampGainUnit);
	}
	
	addAttribute(Number, kTypeUInt16);
	addAttributeProperty(Number, readOnly, YES);
	
	addAttribute(Type, kTypeSymbol);
	addAttributeProperty(Type, readOnly, YES);
	
	addAttributeWithSetter(InputAddress, kTypeSymbol);
	
	addAttributeWithSetter(Mute, kTypeBoolean);
	addAttributeWithSetter(Mix, kTypeFloat32);
	addAttributeWithSetter(Gain, kTypeFloat32);
	addAttribute(Freeze, kTypeBoolean);
	addAttribute(Preview, kTypeBoolean);
	
	addAttributeWithSetter(Info, kTypeLocalValue);
	addAttributeProperty(Info, hidden, YES);
	
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
	
	mLast = new TTValue[mNumber];
	for (TTUInt16 i=0; i<mNumber; i++)
		mLast[i] = kTTValNONE;
	
	this->findAttribute(TT("signal"), &mSignalAttr);
}

TTOutput::~TTOutput()
{
	if (mReturnSignalCallback) {
		delete (TTValuePtr)mReturnSignalCallback->getBaton();
		TTObjectRelease(TTObjectHandle(&mReturnSignalCallback));
	}
	
	if (mReturnLinkCallback) {
		delete (TTValuePtr)mReturnLinkCallback->getBaton();
		TTObjectRelease(TTObjectHandle(&mReturnLinkCallback));
	}
	
	if (mSignalIn)
		TTObjectRelease(&mSignalIn);
	
	if (mSignalOut)
		TTObjectRelease(&mSignalOut);
	
	if (mSignalTemp)
		TTObjectRelease(&mSignalTemp);
	
	if (mSignalZero)
		TTObjectRelease(&mSignalZero);
	
	if (mMixUnit)
		TTObjectRelease(&mMixUnit);
	
	if (mGainUnit)
		TTObjectRelease(&mGainUnit);
	
	if (mRampMixUnit)
		TTObjectRelease(&mMixUnit);
	
	if (mRampGainUnit)
		TTObjectRelease(&mGainUnit);
	
	if (mAddressObserver) {
		if (mInputAddress != kTTSymEmpty)
			getLocalDirectory->removeObserverForNotifications(mInputAddress, mAddressObserver);
		delete (TTValuePtr)mAddressObserver->getBaton();
		TTObjectRelease(TTObjectHandle(&mAddressObserver));
	}
	
	delete [] mLast;
}

TTErr TTOutput::Send(const TTValue& inputValue, TTValue& outputValue)
{
	TTErr err;
	
	if (mIndex >= mNumber)
		return kTTErrGeneric;
	
	if (mMute)
		err = kTTErrNone;
	
	else if (mFreeze) {
		
		err = mReturnSignalCallback->notify(mLast[mIndex], kTTValNONE);
		
		notifySignalObserver(mLast[mIndex]);
	}
	else {
		
		err = mReturnSignalCallback->notify(inputValue, kTTValNONE);
		
		notifySignalObserver(inputValue);
	}
		
	// copy
	if (!mFreeze)
		mLast[mIndex] = inputValue;
	
	return err;
}

TTErr TTOutput::SendBypassed(const TTValue& inputValue, TTValue& outputValue)
{
	if (mInputObject)
		if (mInputObject->mIndex < mNumber) {
			mIndex = mInputObject->mIndex;
			return Send(inputValue, kTTValNONE);
		}
	
	return kTTErrGeneric;
}

TTErr TTOutput::Link(const TTValue& inputValue, TTValue& outputValue)
{
	inputValue.get(0, (TTPtr*)&mInputObject);
	
	if (mReturnLinkCallback)
		return mReturnLinkCallback->notify(kTTVal1, kTTValNONE);
	else
		return kTTErrNone;
}

TTErr TTOutput::Unlink()
{
	mInputObject = NULL;
	
	if (mReturnLinkCallback)
		return mReturnLinkCallback->notify(kTTVal0, kTTValNONE);
	else
		return kTTErrNone;
}

TTErr TTOutput::setInputAddress(const TTValue& value)
{
	TTValue			args;
	TTValuePtr		newBaton;
	TTNodeAddressPtr newAddress;
	TTNodePtr		aNode;
	TTObjectPtr		o;
	TTValue			n = value;		// use new value to protect the attribute
	
	value.get(0, &newAddress);
	
	if (!getLocalDirectory->getTTNode(newAddress, &aNode)) {
		
		o = aNode->getObject();
		if (o)
			if (o->getName() == TT("Input"))
				Link((TTPtr)o, kTTValNONE);
	}

	if (!mAddressObserver) {
		
		// prepare arguments
		mAddressObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TT("callback"), TTObjectHandle(&mAddressObserver), kTTValNONE);
		
		newBaton = new TTValue(TTPtr(this));
		mAddressObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
		mAddressObserver->setAttributeValue(kTTSym_function, TTPtr(&TTOutputDirectoryCallback));
		mAddressObserver->setAttributeValue(TT("owner"), TT("TTOutput"));		// this is usefull only to debug
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
			return mGainUnit->setAttributeValue(TT("linearGain"), 0.0);
		else 
			return mGainUnit->setAttributeValue(TT("midiGain"), mGain);
	}
	
	return kTTErrNone;
}

TTErr TTOutput::setMix(const TTValue& value)
{
	mMix = value;
	
	if (mMixUnit)
		return mMixUnit->setAttributeValue(TT("position"), mMix * 0.01);
	
	return kTTErrNone;
}

TTErr TTOutput::setGain(const TTValue& value)
{
	mGain = value;
	
	if (mGainUnit)
		return mGainUnit->setAttributeValue(TT("midiGain"), mGain);
	
	return kTTErrNone;
}

TTErr TTOutput::setInfo(const TTValue& value)
{	
	mInfo = value;
	
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
	TTSymbolPtr		oscAddress;
	TTNodePtr		aNode;
	TTUInt8			flag;
	TTObjectPtr		o;
	
	// unpack baton (an OutputPtr)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&anOutput);
	
	// Unpack data (oscAddress, aNode, flag, anObserver)
	data.get(0, &oscAddress);
	data.get(1, (TTPtr*)&aNode);
	data.get(2, flag);
	
	o = aNode->getObject();
	if (o) {
		if (o->getName() == TT("Input")) {
			
			switch (flag) {
					
				case kAddressCreated :
				{
					anOutput->Link((TTPtr)o, kTTValNONE);
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
