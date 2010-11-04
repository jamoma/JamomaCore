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
mInputAddress(kTTSymEmpty),
mMute(NO),
mMix(100.),
mGain(100.),
mFreeze(NO),	
mPreview(NO),
mSignalIn(NULL),
mSignalOut(NULL),
mSignalTemp(NULL),
mSignalZero(NULL),
mSignalPreview(NULL),
mMixUnit(NULL),
mGainUnit(NULL),
mRampMixUnit(NULL),
mRampGainUnit(NULL),
mInfo(kTTValNONE),
mIndex(0),
mInputObject(NULL),
mApplication(NULL),
mReturnSignalCallback(NULL),
mLast(NULL),
mObserver(NULL)
{
	TT_ASSERT("Correct number of args to create TTInput", arguments.getSize() >= 4);
	
	arguments.get(0, (TTPtr*)&mApplication);
	TT_ASSERT("Application passed to TTInput is not NULL", mApplication);
	arguments.get(1, mNumber);
	TT_ASSERT("Number passed to TTInput is not 0", mNumber);
	arguments.get(2, &mType);
	arguments.get(3, (TTPtr*)&mReturnSignalCallback);
	TT_ASSERT("Return Signal Callback passed to TTInput is not NULL", mReturnSignalCallback);
	
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
	addAttribute(Info, kTypeLocalValue);
	
	addMessageWithArgument(send);
	addMessageWithArgument(sendBypassed);
	addMessageWithArgument(link);
	addMessage(unlink);
	
	mLast = new TTValue[mNumber];
	for (TTUInt16 i=0; i<mNumber; i++)
		mLast[i] = kTTValNONE;
}

TTOutput::~TTOutput()
{
	if (mReturnSignalCallback)
		TTObjectRelease(TTObjectHandle(&mReturnSignalCallback));
	
	if (mSignalIn)
		TTObjectRelease(&mSignalIn);
	
	if (mSignalOut)
		TTObjectRelease(&mSignalOut);
	
	if (mSignalTemp)
		TTObjectRelease(&mSignalTemp);
	
	if (mSignalZero)
		TTObjectRelease(&mSignalZero);
	
	if (mSignalPreview)
		TTObjectRelease(&mSignalPreview);
	
	if (mMixUnit)
		TTObjectRelease(&mMixUnit);
	
	if (mGainUnit)
		TTObjectRelease(&mGainUnit);
	
	if (mRampMixUnit)
		TTObjectRelease(&mMixUnit);
	
	if (mRampGainUnit)
		TTObjectRelease(&mGainUnit);
	
	if (mObserver) {
		if (mInputAddress != kTTSymEmpty)
			getDirectoryFrom(this)->removeObserverForNotifications(mInputAddress, *mObserver);
		TTObjectRelease(TTObjectHandle(&mObserver));
	}
	
	delete [] mLast;
}

TTErr TTOutput::send(TTValue& value)
{
	TTErr err;
	
	if (mIndex >= mNumber)
		return kTTErrGeneric;
	
	if (mMute)
		err = kTTErrNone;
	else if (mFreeze)
		err = mReturnSignalCallback->notify(mLast[mIndex]);
	else
		err = mReturnSignalCallback->notify(value);
		
	// copy
	if (!mFreeze)
		mLast[mIndex] = value;
	
	// TODO : preview mecanism (it could be also used to register and notify meters...)
	
	return err;
}

TTErr TTOutput::sendBypassed(TTValue& value)
{
	if (mInputObject)
		if (mInputObject->mIndex < mNumber) {
			mIndex = mInputObject->mIndex;
			return send(value);
		}
	
	return kTTErrGeneric;
}

TTErr TTOutput::link(const TTValue& value)
{
	value.get(0, (TTPtr*)&mInputObject);
	return kTTErrNone;
}

TTErr TTOutput::unlink()
{
	mInputObject = NULL;
	return kTTErrNone;
}

TTErr TTOutput::setInputAddress(const TTValue& value)
{
	TTValue			args;
	TTValuePtr		newBaton;
	TTSymbolPtr		newAddress;
	TTNodePtr		aNode;
	TTObjectPtr		o;
	
	newAddress = value;
	
	if (!getDirectoryFrom(this)->getTTNodeForOSC(newAddress, &aNode)) {
		if (o = aNode->getObject())
			if (o->getName() == TT("Input"))
				link((TTPtr)o);
	}

	if (!mObserver) {
		
		// prepare arguments
		mObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TT("Callback"), TTObjectHandle(&mObserver), kTTValNONE);
		
		newBaton = new TTValue(TTPtr(this));
		mObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
		mObserver->setAttributeValue(TT("Function"), TTPtr(&TTOutputDirectoryCallback));
		mObserver->setAttributeValue(TT("Owner"), TT("TTOutput"));		// this is usefull only to debug
	}
	
	if (mObserver) {
		if (mInputAddress != kTTSymEmpty)
			getDirectoryFrom(this)->removeObserverForNotifications(mInputAddress, *mObserver);
		getDirectoryFrom(this)->addObserverForNotifications(newAddress, *mObserver);
	}
	
	mInputAddress = newAddress;
	
	return kTTErrNone;
}

TTErr TTOutput::setMute(const TTValue& value)
{
	mMute = value;
	
	if (mGainUnit)
		if (mMute)
			return mGainUnit->setAttributeValue(TT("LinearGain"), 0.0);
		else 
			return mGainUnit->setAttributeValue(TT("MidiGain"), mGain);
	
	return kTTErrNone;
}

TTErr TTOutput::setMix(const TTValue& value)
{
	mMix = value;
	
	if (mMixUnit)
		return mMixUnit->setAttributeValue(TT("Position"), mMix * 0.01);
	
	return kTTErrNone;
}

TTErr TTOutput::setGain(const TTValue& value)
{
	mGain = value;
	
	if (mGainUnit)
		return mGainUnit->setAttributeValue(TT("MidiGain"), mGain);
	
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
	
	if (o = aNode->getObject()) {
		if (o->getName() == TT("Input")) {
			
			switch (flag) {
					
				case kAddressCreated :
				{
					anOutput->link((TTPtr)o);
					break;
				}
					
				case kAddressDestroyed :
				{
					anOutput->unlink();
					break;
				}
					
				default:
					break;
			}
		}
	}
	
	return kTTErrNone;
}
