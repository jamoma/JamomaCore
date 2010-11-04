/* 
 * TTObject to handle any signal input
 *
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTInput.h"

#define thisTTClass			TTInput
#define thisTTClassName		"Input"
#define thisTTClassTags		"input"

TT_MODULAR_CONSTRUCTOR,
mNumber(0),
mType(kTTSymEmpty),
mOutputAddress(kTTSymEmpty),
mMute(NO),
mBypass(NO),
mSignalIn(NULL),
mSignalOut(NULL),
mInfo(kTTValNONE),
mIndex(0),
mOutputObject(NULL),
mApplication(NULL),
mReturnSignalCallback(NULL),
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
	}
	
	addAttribute(Number, kTypeUInt16);
	addAttributeProperty(Number, readOnly, YES);
	
	addAttribute(Type, kTypeSymbol);
	addAttributeProperty(Type, readOnly, YES);
	
	addAttributeWithSetter(OutputAddress, kTypeSymbol);
	
	addAttribute(Mute, kTypeBoolean);
	addAttribute(Bypass, kTypeBoolean);
	
	addAttribute(Info, kTypeLocalValue);
	
	addMessageWithArgument(send);
	addMessageWithArgument(link);
	addMessage(unlink);
}

TTInput::~TTInput()
{
	if (mReturnSignalCallback)
		TTObjectRelease(TTObjectHandle(&mReturnSignalCallback));
	
	if (mSignalIn)
		TTObjectRelease(TTObjectHandle(&mSignalIn));
	
	if (mSignalOut)
		TTObjectRelease(TTObjectHandle(&mSignalOut));
	
	if (mObserver) {
		if (mOutputAddress != kTTSymEmpty)
			getDirectoryFrom(this)->removeObserverForNotifications(mOutputAddress, *mObserver);
		TTObjectRelease(TTObjectHandle(&mObserver));
	}
}

TTErr TTInput::send(TTValue& value)
{	
	if (mIndex >= mNumber)
		return kTTErrGeneric;
	else if (mMute)
		return kTTErrNone;
	else if (mBypass && mOutputObject)
		return mOutputObject->sendMessage(TT("sendBypassed"), value);
	else
		return mReturnSignalCallback->notify(value);
}

TTErr TTInput::link(const TTValue& value)
{
	value.get(0, (TTPtr*)&mOutputObject);
	return kTTErrNone;
}

TTErr TTInput::unlink()
{
	mOutputObject = NULL;
	return kTTErrNone;
}

TTErr TTInput::setOutputAddress(const TTValue& value)
{
	TTValue			args;
	TTValuePtr		newBaton;
	TTSymbolPtr		newAddress;
	TTNodePtr		aNode;
	TTList			aNodeList;
	TTObjectPtr		o;
	
	newAddress = value;
	
	if (!getDirectoryFrom(this)->getTTNodeForOSC(newAddress, &aNode)) {
		if (o = aNode->getObject())
			if (o->getName() == TT("Output"))
				link((TTPtr)o);
	}
	
	if (!mObserver) {
		// prepare arguments
		mObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TT("Callback"), TTObjectHandle(&mObserver), kTTValNONE);
		
		newBaton = new TTValue(TTPtr(this));
		mObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
		mObserver->setAttributeValue(TT("Function"), TTPtr(&TTInputDirectoryCallback));
		mObserver->setAttributeValue(TT("Owner"), TT("TTInput"));		// this is usefull only to debug
	}
	
	if (mObserver) {
		if (mOutputAddress != kTTSymEmpty)
			getDirectoryFrom(this)->removeObserverForNotifications(mOutputAddress, *mObserver);
		getDirectoryFrom(this)->addObserverForNotifications(newAddress, *mObserver);
	}
	
	mOutputAddress = newAddress;
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTInputDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTInputPtr		anInput;
	TTSymbolPtr		oscAddress;
	TTNodePtr		aNode;
	TTUInt8			flag;
	TTObjectPtr		o;
	
	// unpack baton (an InputPtr)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&anInput);
	
	// Unpack data (oscAddress, aNode, flag, anObserver)
	data.get(0, &oscAddress);
	data.get(1, (TTPtr*)&aNode);
	data.get(2, flag);
	
	if (o = aNode->getObject()) {
		if (o->getName() == TT("Output")) {
			
			switch (flag) {
					
				case kAddressCreated :
				{
					anInput->link((TTPtr)o);
					break;
				}
					
				case kAddressDestroyed :
				{
					anInput->unlink();
					break;
				}
					
				default:
					break;
			}
		}
	}
	
	return kTTErrNone;
}
