/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A Viewer Object.
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTViewer.h"

#define thisTTClass			TTViewer
#define thisTTClassName		"Viewer"
#define thisTTClassTags		"viewer"

TTObjectBasePtr TTViewer::instantiate (TTSymbol name, TTValue arguments)
{
	return new TTViewer(arguments);
}

extern "C" void TTViewer::registerClass()
{
	TTClassRegister(TTSymbol("Viewer"), thisTTClassTags, TTViewer::instantiate);
}

TTViewer::TTViewer(const TTValue& arguments) :
TTCallback(arguments),
mAddress(kTTAdrsEmpty),
mDescription(kTTSym_none),
mType(kTTSym_generic),
mTag(kTTSym_none),
mHighlight(NO),
mFreeze(NO),
mDataspace(kTTSym_none),
mDataspaceUnit(kTTSym_none),
mDataspaceConverter("dataspace"),
mActive(YES)
{
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttribute(Description, kTypeSymbol);
	addAttribute(Type, kTypeSymbol);
	addAttribute(Tag, kTypeSymbol);
	addAttributeWithSetter(Highlight, kTypeBoolean);
	addAttributeWithSetter(Freeze, kTypeBoolean);
	
	addAttribute(Dataspace, kTypeSymbol);
	addAttributeProperty(Dataspace, readOnly, YES);
	addAttributeWithSetter(DataspaceUnit, kTypeSymbol);
	
	addAttributeWithSetter(Active, kTypeBoolean);
	
	addAttributeWithSetter(ReturnedValue, kTypeLocalValue);
	addAttributeProperty(ReturnedValue, readOnly, YES);
	addAttributeProperty(ReturnedValue, hidden, YES);
	
	addMessageWithArguments(Send);
	addMessageProperty(Send, hidden, YES);
    
    addMessageWithArguments(Grab);
	addMessageProperty(Grab, hidden, YES);
    
    // create sender
    mSender = TTObject(kTTSym_Sender);
    
    // create receiver
    TTValue     args;
    TTObject    empty;
    
    TTObject returnAddressCallback = TTObject("callback");
	returnAddressCallback.set(kTTSym_baton, TTObject(this));
	returnAddressCallback.set(kTTSym_function, TTPtr(&TTViewerReceiveAddressCallback));
	args.append(returnAddressCallback);
	
	TTObject returnValueCallback = TTObject("callback");
	returnValueCallback.set(kTTSym_baton, TTObject(this));
	returnValueCallback.set(kTTSym_function, TTPtr(&TTViewerReceiveValueCallback));
	args.append(returnValueCallback);
    
	mReceiver = TTObject(kTTSym_Receiver, args);
    
    // create dataspace observer
    args.clear();
    args.append(empty);
	
	TTObject returnDataspaceCallback = TTObject("callback");
	returnDataspaceCallback.set(kTTSym_baton, TTObject(this));
	returnDataspaceCallback.set(kTTSym_function, TTPtr(&TTViewerDataspaceCallback));
	args.append(returnDataspaceCallback);
	
	mDataspaceObserver = TTObject(kTTSym_Receiver, args);
    
    // create dataspace unit observer
    args.clear();
    args.append(empty);
	
	TTObject returnDataspaceUnitCallback = TTObject("callback");
	returnDataspaceUnitCallback.set(kTTSym_baton, TTObject(this));
	returnDataspaceUnitCallback.set(kTTSym_function, TTPtr(&TTViewerDataspaceUnitCallback));
	args.append(returnDataspaceUnitCallback);
	
	mDataspaceUnitObserver = TTObject(kTTSym_Receiver, args);
}

TTViewer::~TTViewer()
{
    // disable reception to avoid crash
    mActive = NO;
}

TTErr TTViewer::setAddress(const TTValue& value)
{
    TTBoolean   memoActive = mActive;
    
	mAddress = value[0];
    
    // disable reception to avoid crash
    mActive = NO;
	
	if (mAddress == kTTAdrsEmpty)
		return kTTErrGeneric;
	
	// the default attribute to bind is value
	if (mAddress.getAttribute() == NO_ATTRIBUTE)
		mAddress.appendAttribute(kTTSym_value);
    
	// change sender address
	mSender.set(kTTSym_address, mAddress);
	
	// change receiver address
	mReceiver.set(kTTSym_address, mAddress);
	
    // change dataspace observer address and get the value
    mDataspaceObserver.set(kTTSym_address, mAddress.appendAttribute(kTTSym_dataspace));
	mDataspaceObserver.send(kTTSym_Get);
    
    // change dataspace unit observer address and get the value
    mDataspaceUnitObserver.set(kTTSym_address, mAddress.appendAttribute(kTTSym_dataspaceUnit));
	mDataspaceUnitObserver.send(kTTSym_Get);
    
    // enable reception
    mActive = memoActive;
    
    // refresh
    return mReceiver.send(kTTSym_Get);
}

TTErr TTViewer::setActive(const TTValue& value)
{
	mActive = value;
	
	mReceiver.set(kTTSym_active, mActive);
    
    if (mActive)
        mReceiver.send(kTTSym_Get);
	
	return kTTErrNone;
}

TTErr TTViewer::setHighlight(const TTValue& value)
{
    TTAttributePtr	anAttribute = NULL;
	TTErr			err;
	
	mHighlight = value;
	
	err = this->findAttribute(kTTSym_highlight, &anAttribute);
	
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, mHighlight);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

TTErr TTViewer::setFreeze(const TTValue& value)
{
	mFreeze = value;
    
    // update the value if the Viewer is unfreezed
    if (!mFreeze)
        return mReceiver.send(kTTSym_Get);
	
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

TTErr TTViewer::Send(const TTValue& inputValue, TTValue& outputValue)
{
    TTValue none, valueToSend = inputValue;
    
    // append view unit except for empty value
    if (valueToSend.size() > 0 && mDataspaceUnit != kTTSym_none)
        valueToSend.append(mDataspaceUnit);
    
    return mSender.send(kTTSym_Send, valueToSend, none);
}

TTErr TTViewer::Grab(const TTValue& inputValue, TTValue& outputValue)
{
    return mReceiver.send(kTTSym_Grab, inputValue, outputValue);
}

TTErr TTViewer::setDataspaceUnit(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mDataspaceUnit = value;
	
	return mDataspaceConverter.set("outputUnit", mDataspaceUnit);
	
	// TODO : notifyObservers(kTTSym_dataspaceUnit, n);
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTViewerReceiveAddressCallback(const TTValue& baton, const TTValue& data)
{
    TTObject    o;
    TTViewerPtr aViewer;
	TTValue		converted;
	
    // unpack baton (a #TTViewer)
    o = baton[0];
	aViewer = (TTViewerPtr)o.instance();
    
    if (aViewer->mActive) {
        
        if (aViewer->mDataspace == kTTSym_none) {
            
            aViewer->mDataspaceObserver.send(kTTSym_Get);
            aViewer->mDataspaceUnitObserver.send(kTTSym_Get);
        }
    }
    
	return kTTErrNone;
}

TTErr TTViewerReceiveValueCallback(const TTValue& baton, const TTValue& data)
{
    TTObject    o;
	TTViewerPtr aViewer;
	TTValue		converted;
	
	// unpack baton (a #TTViewer)
    o = baton[0];
	aViewer = (TTViewerPtr)o.instance();
	
	if (aViewer->mActive) {
		
		if (!aViewer->mFreeze)
			// convert data
			aViewer->mDataspaceConverter.send("convert", data, converted);
		
		else
			// use last data
			converted = aViewer->mReturnedValue;
			
		// return value
        aViewer->deliver(converted);
        aViewer->setReturnedValue(converted);
	}
	
	return kTTErrNone;
}

TTErr TTViewerDataspaceCallback(const TTValue& baton, const TTValue& data)
{
    TTObject    o;
	TTViewerPtr aViewer;
	TTValue		v;
    TTSymbol    dataspace;
	
	// unpack baton (a #TTViewer)
    o = baton[0];
	aViewer = (TTViewerPtr)o.instance();
	
    dataspace = data;
    
    // filter repetitions
    if (dataspace != aViewer->mDataspace) {
        
        aViewer->mDataspace = data;
	
        return aViewer->mDataspaceConverter.set(kTTSym_dataspace, aViewer->mDataspace);
    }
	
	return kTTErrNone;
}

TTErr TTViewerDataspaceUnitCallback(const TTValue& baton, const TTValue& data)
{
    TTObject    o;
	TTViewerPtr aViewer;
	TTValue		v;
	TTErr		err;
	
	// unpack baton (a #TTViewer)
    o = baton[0];
	aViewer = (TTViewerPtr)o.instance();
	
    // set input unit like the data unit
    aViewer->mDataspaceConverter.set("inputUnit", data);
    
    // if no unit : set the output unit like the data unit
    if (aViewer->mDataspaceUnit == kTTSym_none)
        aViewer->mDataspaceUnit = data;
    
    // if the unit is wrong : use the default unit
    err = aViewer->mDataspaceConverter.set("outputUnit", aViewer->mDataspaceUnit);
    if (err) {
        aViewer->mDataspaceConverter.get("outputUnit", v);
        aViewer->mDataspaceUnit = v[0];
        aViewer->mDataspaceConverter.set("outputUnit", aViewer->mDataspaceUnit);
    }
	
	return kTTErrNone;
}
