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
mOutputAddress(kTTAdrsEmpty),
mMute(NO),
mBypass(NO),
mSignalIn(NULL),
mSignalOut(NULL),
mSignalZero(NULL),
mInfo(kTTValNONE),
mIndex(0),
mOutputObject(NULL),
mReturnSignalCallback(NULL),
mAddressObserver(NULL)
{
	TT_ASSERT("Correct number of args to create TTInput", arguments.getSize() >= 4);
	
	arguments.get(0, mNumber);
	TT_ASSERT("Number passed to TTInput is not 0", mNumber);
	arguments.get(1, &mType);
	arguments.get(2, (TTPtr*)&mReturnSignalCallback);
	TT_ASSERT("Return Signal Callback passed to TTInput is not NULL", mReturnSignalCallback);
	
	if (arguments.getSize() > 4) {
		arguments.get(3, (TTPtr*)&mSignalIn);
		arguments.get(4, (TTPtr*)&mSignalOut);
		arguments.get(5, (TTPtr*)&mSignalZero);
	}
	
	addAttribute(Number, kTypeUInt16);
	addAttributeProperty(number, readOnly, YES);
	
	addAttribute(Type, kTypeSymbol);
	addAttributeProperty(type, readOnly, YES);
	
	addAttributeWithSetter(OutputAddress, kTypeSymbol);
	
	addAttribute(Mute, kTypeBoolean);
	addAttribute(Bypass, kTypeBoolean);
	
	addAttributeWithSetter(Info, kTypeLocalValue);
	addAttributeProperty(info, hidden, YES);
	
	addMessageWithArgument(Send);
	addMessageProperty(Send, hidden, YES);
	
	addMessageWithArgument(Link);
	addMessageProperty(Link, hidden, YES);
	
	addMessage(Unlink);
	addMessageProperty(Unlink, hidden, YES);
}

TTInput::~TTInput()
{
	if (mReturnSignalCallback) {
		delete (TTValuePtr)mReturnSignalCallback->getBaton();
		TTObjectRelease(TTObjectHandle(&mReturnSignalCallback));
	}
	
	if (mSignalIn)
		TTObjectRelease(TTObjectHandle(&mSignalIn));
	
	if (mSignalOut)
		TTObjectRelease(TTObjectHandle(&mSignalOut));
	
	if (mSignalZero)
		TTObjectRelease(&mSignalZero);
	
	if (mAddressObserver) {
		if (mOutputAddress != kTTSymEmpty)
			getLocalDirectory->removeObserverForNotifications(mOutputAddress, *mAddressObserver);
		delete (TTValuePtr)mAddressObserver->getBaton();
		TTObjectRelease(TTObjectHandle(&mAddressObserver));
	}
}

TTErr TTInput::Send(TTValue& value)
{	
	if (mIndex >= mNumber)
		return kTTErrGeneric;
	else if (mMute)
		return kTTErrNone;
	else if (mBypass && mOutputObject)
		return mOutputObject->sendMessage(TT("SendBypassed"), value);
	else
		return mReturnSignalCallback->notify(value);
}

TTErr TTInput::Link(const TTValue& value)
{
	value.get(0, (TTPtr*)&mOutputObject);
	return kTTErrNone;
}

TTErr TTInput::Unlink()
{
	mOutputObject = NULL;
	return kTTErrNone;
}

TTErr TTInput::setOutputAddress(const TTValue& value)
{
	TTValue			args;
	TTValuePtr		newBaton;
	TTNodeAddressPtr newAddress;
	TTNodePtr		aNode;
	TTList			aNodeList;
	TTObjectPtr		o;
	
	value.get(0, &newAddress);
	
	if (!getLocalDirectory->getTTNode(newAddress, &aNode)) {
		if (o = aNode->getObject())
			if (o->getName() == TT("Output"))
				Link((TTPtr)o);
	}
	
	if (!mAddressObserver) {
		// prepare arguments
		mAddressObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TT("callback"), TTObjectHandle(&mAddressObserver), kTTValNONE);
		
		newBaton = new TTValue(TTPtr(this));
		mAddressObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
		mAddressObserver->setAttributeValue(kTTSym_function, TTPtr(&TTInputDirectoryCallback));
		mAddressObserver->setAttributeValue(TT("owner"), TT("TTInput"));		// this is usefull only to debug
	}
	
	if (mAddressObserver) {
		if (mOutputAddress != kTTAdrsEmpty)
			getLocalDirectory->removeObserverForNotifications(mOutputAddress, *mAddressObserver);
		
		getLocalDirectory->addObserverForNotifications(newAddress, *mAddressObserver);
	}
	
	mOutputAddress = newAddress;
	
	return kTTErrNone;
}

TTErr TTInput::setInfo(const TTValue& value)
{	
	mInfo = value;
	
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
					anInput->Link((TTPtr)o);
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
