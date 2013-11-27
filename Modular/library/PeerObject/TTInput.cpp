/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief TTObjectBase to handle any signal input
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
#include "TTModular.h"

#define thisTTClass			TTInput
#define thisTTClassName		"Input"
#define thisTTClassTags		"input"

TT_MODULAR_CONSTRUCTOR,
mType(kTTSymEmpty),
mOutputAddress(kTTAdrsEmpty),
mMute(NO),
mBypass(NO),
mSignalIn(NULL),
mSignalCache(NULL),
mSignalOut(NULL),
mSignalZero(NULL),
mOutputObject(NULL),
mReturnSignalCallback(NULL),
mAddressObserver(NULL),
mSignalAttr(NULL)
{
	// There will be no args passed if this is created as a super-class for TTInputAudio [tap]
	// TT_ASSERT("Correct number of args to create TTInput", arguments.size() > 0);
	
    if (arguments.size() > 0)
        mType = arguments[0];
    
    if (arguments.size() > 1) {
        mReturnSignalCallback = TTCallbackPtr((TTObjectBasePtr)arguments[1]);
        TT_ASSERT("Return Signal Callback passed to TTInput is not NULL", mReturnSignalCallback);
    }
	
	if (arguments.size() > 2) {
		mSignalIn = arguments[2];
		mSignalOut = arguments[3];
		mSignalZero = arguments[4];
	}
	
	addAttribute(Type, kTypeSymbol);
	addAttributeProperty(Type, readOnly, YES);
	
	addAttributeWithSetter(OutputAddress, kTypeSymbol);
	
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
	
	mSignalCache = new TTList();
    
    this->findAttribute(TTSymbol("signal"), &mSignalAttr);
}

TTInput::~TTInput()
{
	if (mReturnSignalCallback) {
		delete (TTValuePtr)mReturnSignalCallback->getBaton();
		TTObjectBaseRelease(TTObjectBaseHandle(&mReturnSignalCallback));
	}
	
	if (mSignalIn)
		TTObjectBaseRelease(TTObjectBaseHandle(&mSignalIn));
	
	if (mSignalCache)
		delete mSignalCache;
	
	if (mSignalOut)
		TTObjectBaseRelease(TTObjectBaseHandle(&mSignalOut));
	
	if (mSignalZero)
		TTObjectBaseRelease(&mSignalZero);
	
	if (mAddressObserver) {
		
		if (mOutputAddress != kTTSymEmpty)
			getLocalDirectory->removeObserverForNotifications(mOutputAddress, mAddressObserver);
		
		delete (TTValuePtr)mAddressObserver->getBaton();
		TTObjectBaseRelease(TTObjectBaseHandle(&mAddressObserver));
	}
}

TTErr TTInput::Send(const TTValue& inputValue, TTValue& outputValue)
{
    TTErr   err;
	TTValue none;
	
   
    if (!mReturnSignalCallback)
        return kTTErrGeneric;
    
	if (mMute)
		return kTTErrNone;
    
	else if (mBypass && mOutputObject)
		err = mOutputObject->sendMessage(TTSymbol("SendBypassed"), inputValue, none);
    
	else
		err = mReturnSignalCallback->notify(inputValue, none);
    
    notifySignalObserver(inputValue);
    
    return err;
}

TTErr TTInput::Link(const TTValue& inputValue, TTValue& outputValue)
{
    mOutputObject = TTOutputPtr((TTObjectBasePtr)inputValue[0]);
	return kTTErrNone;
}

TTErr TTInput::Unlink()
{
	mOutputObject = NULL;
	return kTTErrNone;
}

TTErr TTInput::setOutputAddress(const TTValue& value)
{
	TTValue			args, none;
	TTValuePtr		newBaton;
	TTAddress		newAddress;
	TTNodePtr		aNode;
	TTList			aNodeList;
	TTObjectBasePtr	o;

	newAddress = value[0];
	
	if (!getLocalDirectory->getTTNode(newAddress, &aNode)) {
		
		o = aNode->getObject();
		if (o)
			if (o->getName() == kTTSym_Output|| o->getName() == kTTSym_OutputAudio)
				Link(o, none);
	}
	
	if (!mAddressObserver) {
		// prepare arguments
		mAddressObserver = NULL; // without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectBaseInstantiate(TTSymbol("callback"), TTObjectBaseHandle(&mAddressObserver), none);
		
		newBaton = new TTValue(TTObjectBasePtr(this));
		mAddressObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
		mAddressObserver->setAttributeValue(kTTSym_function, TTPtr(&TTInputDirectoryCallback));
		mAddressObserver->setAttributeValue(TTSymbol("owner"), TTSymbol("TTInput"));		// this is usefull only to debug
	}
	
	if (mAddressObserver) {
		if (mOutputAddress != kTTAdrsEmpty)
			getLocalDirectory->removeObserverForNotifications(mOutputAddress, mAddressObserver);
		
		getLocalDirectory->addObserverForNotifications(newAddress, mAddressObserver, 0); // ask for notification only for equal addresses
	}
	
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

TTErr TTInputDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTInputPtr		anInput;
	TTSymbol		anAddress;
	TTNodePtr		aNode;
	TTUInt8			flag;
	TTObjectBasePtr	o;
	TTValue         none;
	
	
	// unpack baton (an InputPtr)
	b = (TTValuePtr)baton;
	anInput = TTInputPtr((TTObjectBasePtr)(*b)[0]);
	
	// Unpack data (anAddress, aNode, flag, anObserver)
	anAddress = data[0];
	aNode = TTNodePtr((TTPtr)data[1]);
	flag = data[2];
	
	o = aNode->getObject();
	if (o) {
		if (o->getName() == kTTSym_Output || o->getName() == kTTSym_OutputAudio) {
			
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
