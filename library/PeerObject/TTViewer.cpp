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
mAddress(kTTAdrsEmpty),
mDescription(kTTSymEmpty),
mType(kTTSymEmpty),
mTag(kTTSymEmpty),
mHighlight(NO),
mFreeze(NO),
mDataspace(kTTSym_none),
mDataspaceUnit(kTTSym_none),
mDataspaceConverter(NULL),
mDataspaceObserver(NULL),
mDataspaceUnitObserver(NULL),
mEnable(YES),
mReturnedValue(kTTValNONE),
mReceiver(NULL),
mSender(NULL),
mReturnValueCallback(NULL)
{	
	if(arguments.getSize() == 1)
		arguments.get(0, (TTPtr*)&mReturnValueCallback);
	
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttribute(Description, kTypeSymbol);
	addAttribute(Type, kTypeSymbol);
	addAttribute(Tag, kTypeSymbol);
	addAttribute(Highlight, kTypeBoolean);
	addAttributeWithSetter(Freeze, kTypeBoolean);
	
	addAttribute(Dataspace, kTypeSymbol);
	addAttributeProperty(Dataspace, readOnly, YES);
	addAttributeWithSetter(DataspaceUnit, kTypeSymbol);
	
	addAttributeWithSetter(Enable, kTypeBoolean);
	
	addAttributeWithSetter(ReturnedValue, kTypeLocalValue);
	addAttributeProperty(ReturnedValue, readOnly, YES);
	addAttributeProperty(ReturnedValue, hidden, YES);
	
	addMessage(Refresh);
	
	addMessageWithArguments(Send);
	addMessageProperty(Send, hidden, YES);
	
	TTObjectInstantiate(TTSymbol("dataspace"),  &mDataspaceConverter, kTTValNONE);
}

TTViewer::~TTViewer() // TODO : delete things...
{
	if (mReturnValueCallback) {
		delete (TTValuePtr)mReturnValueCallback->getBaton();
		TTObjectRelease(TTObjectHandle(&mReturnValueCallback));
	}
	
	if (mDataspaceConverter)
		TTObjectRelease(TTObjectHandle(&mDataspaceConverter));
	
	if (mDataspaceObserver)
		TTObjectRelease(TTObjectHandle(&mDataspaceObserver));
	
	if (mDataspaceUnitObserver)
		TTObjectRelease(TTObjectHandle(&mDataspaceUnitObserver));
	
	if (mSender)
		TTObjectRelease(TTObjectHandle(&mSender));
	
	if (mReceiver)
		TTObjectRelease(TTObjectHandle(&mReceiver));
}

TTErr TTViewer::setAddress(const TTValue& value)
{
	value.get(0, mAddress);
	
	bind();
	
	return kTTErrNone;
}

TTErr TTViewer::bind()
{
	TTValue			args, v;
	TTObjectPtr		returnAddressCallback, returnValueCallback;
	TTValuePtr		returnAddressBaton, returnValueBaton;
	
	// Prepare arguments
	if (mAddress == kTTAdrsEmpty)
		return kTTErrGeneric;
	
	// The default attribute to bind is value
	if (mAddress.getAttribute() == NO_ATTRIBUTE)
		mAddress.appendAttribute(kTTSym_value);

	// Replace a TTSender object
	if (mSender)
		TTObjectRelease(TTObjectHandle(&mSender));
	
	mSender = NULL;							// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(kTTSym_Sender, TTObjectHandle(&mSender), kTTValNONE);
	
	mSender->setAttributeValue(kTTSym_address, mAddress);
	
	// Replace a TTReceiver object
	if (mReceiver)
		TTObjectRelease(TTObjectHandle(&mReceiver));
	
	returnAddressCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TTSymbol("callback"), &returnAddressCallback, kTTValNONE);
	returnAddressBaton = new TTValue(TTPtr(this));
	returnAddressCallback->setAttributeValue(kTTSym_baton, TTPtr(returnAddressBaton));
	returnAddressCallback->setAttributeValue(kTTSym_function, TTPtr(&TTViewerReceiveAddressCallback));
	args.append(returnAddressCallback);
	
	returnValueCallback = NULL;				// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TTSymbol("callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(this));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&TTViewerReceiveValueCallback));
	args.append(returnValueCallback);

	mReceiver = NULL;						// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(kTTSym_Receiver, TTObjectHandle(&mReceiver), args);
	
	mReceiver->setAttributeValue(kTTSym_address, mAddress);
	
	observeDataspace();
	observeDataspaceUnit();
	
	return kTTErrNone;
}

TTErr TTViewer::observeDataspace()
{
	TTValue			args;
	TTObjectPtr		returnDataspaceCallback;
	TTValuePtr		returnDataspaceBaton;
	
	if (mDataspaceObserver)
		TTObjectRelease(TTObjectHandle(&mDataspaceObserver));
	
	// Make a TTReceiver object
	args.append(NULL);
	
	returnDataspaceCallback = NULL;				// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TTSymbol("callback"), &returnDataspaceCallback, kTTValNONE);
	returnDataspaceBaton = new TTValue(TTPtr(this));
	returnDataspaceCallback->setAttributeValue(kTTSym_baton, TTPtr(returnDataspaceBaton));
	returnDataspaceCallback->setAttributeValue(kTTSym_function, TTPtr(&TTViewerDataspaceCallback));
	args.append(returnDataspaceCallback);
	
	mDataspaceObserver = NULL;
	TTObjectInstantiate(kTTSym_Receiver, TTObjectHandle(&mDataspaceObserver), args);
	
	mDataspaceObserver->setAttributeValue(kTTSym_address, mAddress.appendAttribute(kTTSym_dataspace));
	
	mDataspaceObserver->sendMessage(kTTSym_Get);
	
	return kTTErrNone;
}

TTErr TTViewer::observeDataspaceUnit()
{
	TTValue			args;
	TTObjectPtr		returnDataspaceUnitCallback;
	TTValuePtr		returnDataspaceUnitBaton;
	
	if (mDataspaceUnitObserver)
		TTObjectRelease(TTObjectHandle(&mDataspaceUnitObserver));
	
	// Make a TTReceiver object
	args.append(NULL);
	
	returnDataspaceUnitCallback = NULL;				// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TTSymbol("callback"), &returnDataspaceUnitCallback, kTTValNONE);
	returnDataspaceUnitBaton = new TTValue(TTPtr(this));
	returnDataspaceUnitCallback->setAttributeValue(kTTSym_baton, TTPtr(returnDataspaceUnitBaton));
	returnDataspaceUnitCallback->setAttributeValue(kTTSym_function, TTPtr(&TTViewerDataspaceUnitCallback));
	args.append(returnDataspaceUnitCallback);
	
	mDataspaceUnitObserver = NULL;
	TTObjectInstantiate(kTTSym_Receiver, TTObjectHandle(&mDataspaceUnitObserver), args);
	
	mDataspaceUnitObserver->setAttributeValue(kTTSym_address, mAddress.appendAttribute(kTTSym_dataspaceUnit));
	
	mDataspaceUnitObserver->sendMessage(kTTSym_Get);
	
	return kTTErrNone;
}

TTErr TTViewer::setEnable(const TTValue& value)
{
	mEnable = value;
	
	if (mReceiver)
		mReceiver->setAttributeValue(kTTSym_enable, mEnable);
	
	return kTTErrNone;
}

TTErr TTViewer::setFreeze(const TTValue& value)
{
	mFreeze = value;
	
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

TTErr TTViewer::Send(const TTValue& inputValue, TTValue& outputValue)
{
	if (mSender) {
		
		TTValue valueToSend = inputValue;
		
		// append view unit
		if (mDataspaceUnit != kTTSym_none)
			valueToSend.append(mDataspaceUnit);
		
		return mSender->sendMessage(kTTSym_Send, valueToSend, kTTValNONE);
	}
	
	return kTTErrGeneric;
}

TTErr TTViewer::setDataspaceUnit(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mDataspaceUnit = value;
	
	if (mDataspaceConverter)
		mDataspaceConverter->setAttributeValue(TTSymbol("outputUnit"), mDataspaceUnit);
	
	// TODO : notifyObservers(kTTSym_dataspaceUnit, n);
	return kTTErrNone;
}

TTErr TTViewer::convertUnit(const TTValue& inputValue, TTValue& outputValue)
{
	if (mDataspaceConverter)
		return mDataspaceConverter->sendMessage(TTSymbol("convert"), inputValue, outputValue);
	
	return kTTErrNone;
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
	TTValue		converted;
	
	// unpack baton (a TTViewer)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aViewer);
	
	if (aViewer->mEnable) {
		
		if (!aViewer->mFreeze)
			// convert data
			aViewer->convertUnit(data, converted);
		
		else
			// use last data
			converted = aViewer->mReturnedValue;
			
		// return value
		if (aViewer->mReturnValueCallback) {
			aViewer->mReturnValueCallback->notify(converted, kTTValNONE);
			aViewer->setReturnedValue(converted);
		}
	}
	
	return kTTErrNone;
}

TTErr TTViewerDataspaceCallback(TTPtr baton, TTValue& data)
{
	TTViewerPtr aViewer;
	TTValuePtr	b;
	TTValue		v;
	
	// unpack baton (a TTViewer)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aViewer);
	
	aViewer->mDataspace = data;
	
	if (aViewer->mDataspaceConverter)
		aViewer->mDataspaceConverter->setAttributeValue(TTSymbol("dataspace"), aViewer->mDataspace);
	
	return kTTErrNone;
}

TTErr TTViewerDataspaceUnitCallback(TTPtr baton, TTValue& data)
{
	TTViewerPtr aViewer;
	TTValuePtr	b;
	TTValue		v;
	TTErr		err;
	
	// unpack baton (a TTViewer)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aViewer);
	
	if (aViewer->mDataspaceConverter) {
		
		// set input unit like the data unit
		aViewer->mDataspaceConverter->setAttributeValue(TTSymbol("inputUnit"), data);
		
		// if no unit : set the output unit like the the data unit
		if (aViewer->mDataspaceUnit == kTTSym_none)
			aViewer->mDataspaceUnit = data;
		
		// if the unit is wrong : use the default unit
		err = aViewer->mDataspaceConverter->setAttributeValue(TTSymbol("outputUnit"), aViewer->mDataspaceUnit);
		if (err) {
			aViewer->mDataspaceConverter->getAttributeValue(TTSymbol("outputUnit"), v);
			v.get(0, aViewer->mDataspaceUnit);
			aViewer->mDataspaceConverter->setAttributeValue(TTSymbol("outputUnit"), aViewer->mDataspaceUnit);
		}
	}
	
	return kTTErrNone;
}
