/* 
 * A Viewer Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTViewer.h"

#define thisTTClass			TTViewer
#define thisTTClassName		"Viewer"
#define thisTTClassTags		"viewer"

TT_MODULAR_CONSTRUCTOR,
mAddress(kTTSymEmpty),
mAttribute(kTTSym_value), // TODO : set kTTSymEmpty because a Viewer can bind on any object (not only data)
mDescription(kTTSymEmpty),
mType(kTTSymEmpty),
mTag(kTTSymEmpty),
mSelected(YES),
mFreeze(NO),
mEnable(YES),
mReturnedValue(kTTValNONE),
mApplication(NULL),
mReceiver(NULL),
mSender(NULL),
mReturnValueCallback(NULL)
{	
	arguments.get(0, (TTPtr*)&mApplication);
	TT_ASSERT("Application passed to TTViewer is not NULL", mApplication);
	
	if(arguments.getSize() == 2)
		arguments.get(1, (TTPtr*)&mReturnValueCallback);
	
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttributeWithSetter(Attribute, kTypeSymbol);
	addAttribute(Description, kTypeSymbol);
	addAttribute(Type, kTypeSymbol);
	addAttribute(Tag, kTypeSymbol);
	addAttribute(Selected, kTypeBoolean);
	addAttributeWithSetter(Freeze, kTypeBoolean);
	addAttribute(Enable, kTypeBoolean);
	
	addAttributeWithSetter(ReturnedValue, kTypeLocalValue);
	addAttributeProperty(returnedValue, readOnly, YES);
	addAttributeProperty(returnedValue, hidden, YES);
	
	addMessage(Refresh);
	
	addMessageWithArgument(Send);
	addMessageProperty(Send, hidden, YES);
}

TTViewer::~TTViewer() // TODO : delete things...
{
	if (mReturnValueCallback)
		TTObjectRelease(TTObjectHandle(&mReturnValueCallback));
	
	if (mSender)
		TTObjectRelease(TTObjectHandle(&mSender));
	
	if (mReceiver)
		TTObjectRelease(TTObjectHandle(&mReceiver));
}

TTErr TTViewer::setAddress(const TTValue& value)
{
	mAddress = value;
	
	// if it binds on an attribute : refresh
	if (!bind())
		if (mAttribute != kTTSymEmpty)
			Refresh();
	
	return kTTErrNone;
}

TTErr TTViewer::setAttribute(const TTValue& value)
{
	mAttribute = value;
	
	// Replace none TTnames (because the mAttribute can be customized in order to have a specific application's namespace)
	TTValue v = TTValue(mAttribute);
	ToTTName(v);
	v.get(0, &mAttribute);
	
	if (mSender && mReceiver) {
		mSender->setAttributeValue(TT("attribute"), mAttribute);
		mReceiver->setAttributeValue(TT("attribute"), mAttribute);
	}
	else if (!bind())
		Refresh();
	
	return kTTErrNone;
}

TTErr TTViewer::bind()
{
	TTValue			args, v;
	TTObjectPtr		returnAddressCallback, returnValueCallback;
	TTValuePtr		returnAddressBaton, returnValueBaton;
	
	// Prepare arguments
	args.append(mApplication);
	
	if (mAddress != kTTSymEmpty)
		args.append(mAddress);
	else
		return kTTErrGeneric;
	
	args.append(mAttribute);

	// Replace a TTSender object
	if (mSender)
		TTObjectRelease(TTObjectHandle(&mSender));
	
	mSender = NULL;							// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Sender"), TTObjectHandle(&mSender), args);
	
	// Replace a TTReceiver object
	if (mReceiver)
		TTObjectRelease(TTObjectHandle(&mReceiver));
	
	returnAddressCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &returnAddressCallback, kTTValNONE);
	returnAddressBaton = new TTValue(TTPtr(this));
	returnAddressCallback->setAttributeValue(kTTSym_baton, TTPtr(returnAddressBaton));
	returnAddressCallback->setAttributeValue(kTTSym_function, TTPtr(&TTViewerReceiveAddressCallback));
	args.append(returnAddressCallback);
	
	returnValueCallback = NULL;				// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(this));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&TTViewerReceiveValueCallback));
	args.append(returnValueCallback);

	mReceiver = NULL;						// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Receiver"), TTObjectHandle(&mReceiver), args);
	
	return kTTErrNone;
}

TTErr TTViewer::setFreeze(const TTValue& value)
{
	mFreeze = value;
	
	if (mReceiver)
		mReceiver->setAttributeValue(kTTSym_enable, !mFreeze);
	
	return kTTErrNone;
}

TTErr TTViewer::setReturnedValue(const TTValue& value)
{
	TTAttributePtr	anAttribute = NULL;
	TTErr			err;
	
	mReturnedValue = value;
	
	err = this->findAttribute(kTTSym_returnedValue, &anAttribute);
	
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, mReturnedValue);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

TTErr TTViewer::Refresh()
{
	if (mReceiver)
		return mReceiver->sendMessage(kTTSym_Get);
	
	return kTTErrGeneric;
}

TTErr TTViewer::Send(TTValue& valueToSend)
{
	// TODO : add a dataspace for the Viewer
	//aViewer->processDataspace(v);
	
	if (mSender)
		return mSender->sendMessage(kTTSym_Send, valueToSend);
	
	return kTTErrGeneric;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTViewerReceiveAddressCallback(TTPtr baton, TTValue& data)
{	
	return kTTErrGeneric;
}

TTErr TTViewerReceiveValueCallback(TTPtr baton, TTValue& data)
{
	TTViewerPtr aViewer;
	TTValuePtr	b;
	TTValue		v;
	
	// unpack baton (a TTViewer)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aViewer);
	
	if (aViewer->mEnable) {
		// protect data
		v = data;
		
		// TODO : add a dataspace for the Viewer
		//aViewer->processDataspace(v);
		
		// return value
		if (aViewer->mReturnValueCallback) {
			aViewer->mReturnValueCallback->notify(v);
			aViewer->setReturnedValue(v);
		}
	}
	
	return kTTErrNone;
}
