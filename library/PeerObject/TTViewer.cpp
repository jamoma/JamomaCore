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
mAttribute(kTTSymEmpty),
mMessage(kTTSymEmpty),
mDescription(kTTSymEmpty),
mType(kTTSymEmpty),
mSelected(YES),
mFreeze(NO),
mEnable(YES),
mReturnedValue(kTTValNONE),
mApplication(NULL),
mReceiver(NULL),
mSender(NULL),
mLifeObserver(NULL),
mReturnValueCallback(NULL)
{	
	arguments.get(0, (TTPtr*)&mApplication);
	TT_ASSERT("Application passed to TTViewer is not NULL", mApplication);
	
	if(arguments.getSize() == 2)
		arguments.get(1, (TTPtr*)&mReturnValueCallback);
	
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttributeWithSetter(Attribute, kTypeSymbol);
	addAttributeWithSetter(Message, kTypeSymbol);
	addAttribute(Description, kTypeSymbol);
	addAttribute(Type, kTypeSymbol);
	addAttribute(Selected, kTypeBoolean);
	addAttributeWithSetter(Freeze, kTypeBoolean);
	
	addAttribute(Enable, kTypeBoolean);
	addAttributeProperty(enable, hidden, YES);
	
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
	
	if (mLifeObserver)
		TTObjectRelease(TTObjectHandle(&mLifeObserver));
}

TTErr TTViewer::setAddress(const TTValue& value)
{
	mAddress = value;
	
	// if it binds on an attribute : refresh
	if (mLifeObserver)
		TTObjectRelease(TTObjectHandle(&mLifeObserver));
	
	if (!bind())
		if (mAttribute != kTTSymEmpty)
			Refresh();
	
	return kTTErrNone;
}

TTErr TTViewer::setAttribute(const TTValue& value)
{
	mAttribute = value;
	mMessage = kTTSymEmpty;
	
	// Replace none TTnames (because the mAttribute can be customized in order to have a specific application's namespace)
	TTValue v = TTValue(mAttribute);
	ToTTName(v);
	v.get(0, &mAttribute);
	
	// if it binds : refresh
	if (!bind())
		Refresh();
	
	return kTTErrNone;
}

TTErr TTViewer::setMessage(const TTValue& value)
{
	mMessage = value;
	mAttribute = kTTSymEmpty;
	
	// Replace none TTnames (because the mMessage can be customized in order to have a specific application's namespace)
	TTValue v = TTValue(mMessage);
	ToTTName(v);
	v.get(0, &mMessage);
	
	bind();
	
	return kTTErrNone;
}

TTErr TTViewer::bind()
{
	TTValue			args, v, min, max;
	TTObjectPtr		returnAddressCallback, returnValueCallback, returnLifeCallback;
	TTValuePtr		returnAddressBaton, returnValueBaton, returnLifeBaton;
	
	// Prepare aguments
	args.append(mApplication);
	
	if (mAddress != kTTSymEmpty)
		args.append(mAddress);
	else
		return kTTErrGeneric;
	
	if (mAttribute != kTTSymEmpty)
		args.append(mAttribute);
	else if (mMessage != kTTSymEmpty)
		args.append(mMessage);
	else
		args.append(kTTSymEmpty);
	
	// The first time : Create a Life observer for the address
	if (!mLifeObserver) {
		
		args.append(NULL);
		args.append(NULL);
		
		returnLifeCallback = NULL;				// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TT("callback"), &returnLifeCallback, kTTValNONE);
		returnLifeBaton = new TTValue(TTPtr(this));
		returnLifeCallback->setAttributeValue(kTTSym_baton, TTPtr(returnLifeBaton));
		returnLifeCallback->setAttributeValue(kTTSym_function, TTPtr(&TTViewerReceiveLifeCallback));
		args.append(returnLifeCallback);
		
		mLifeObserver = NULL;						// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TT("Receiver"), TTObjectHandle(&mLifeObserver), args);
		
		return kTTErrNone;
	}
	
	// Replace a TTSender object
	if (mSender)
		TTObjectRelease(TTObjectHandle(&mSender));
	
	mSender = NULL;							// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Sender"), TTObjectHandle(&mSender), args);
	
	// Replace a TTReceiver object
	if (mReceiver)
		TTObjectRelease(TTObjectHandle(&mReceiver));
	
	if (mAttribute != kTTSymEmpty) {
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
	}
	else if (mMessage != kTTSymEmpty) {
		args.append(NULL);
		args.append(NULL);
	}

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

TTErr TTViewerReceiveLifeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTViewerPtr		aViewer;
	TTSymbolPtr		oscAddress;
	TTNodePtr		aNode;
	TTUInt8			flag;
	TTCallbackPtr	anObserver;
	TTSymbolPtr		service;
	TTObjectPtr		anObject;
	TTValue			v;

	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aViewer);
	
	// Unpack data (oscAddress, aNode, flag, anObserver)
	data.get(0, &oscAddress);
	data.get(1, (TTPtr*)&aNode);
	data.get(2, flag);
	data.get(3, (TTPtr*)&anObserver);
	
	if (flag == kAddressCreated) {
		// check what kind of Object is registered
		// to custom the viewer because the view of
		// a Data is not the same than the view of 
		// an Input for example...
		if (anObject = aNode->getObject()) {
			
			if (anObject->getName() == TT("Container")) {
				
				// Bind on Send message by default
				if (aViewer->mMessage == kTTSymEmpty) {
					aViewer->mMessage = kTTSym_Send;
					aViewer->bind();
				}
			}
			else if (anObject->getName() == TT("Data")) {
				
				anObject->getAttributeValue(kTTSym_service, v);
				v.get(0, &service);
				
				// Don't output any value if it is a message
				aViewer->mEnable = (service != kTTSym_message);
				
				// Bind on value attribute by default
				if (aViewer->mAttribute == kTTSymEmpty) {
					
					aViewer->mAttribute = kTTSym_value;
					aViewer->bind();
					aViewer->Refresh();
				}
			}
			
			else if (anObject->getName() == TT("Input"))
				;
			
			else if (anObject->getName() == TT("Output"))
				;
		}
	}
	
	return kTTErrNone;
}
