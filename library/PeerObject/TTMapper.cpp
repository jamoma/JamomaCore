/* 
 * A Mapper Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTMapper.h"

#define thisTTClass			TTMapper
#define thisTTClassName		"Mapper"
#define thisTTClassTags		"mapper"

TT_MODULAR_CONSTRUCTOR,
mInput(kTTSymEmpty),
mOutput(kTTSymEmpty),
mInputMin(0.),
mInputMax(1.),
mOutputMin(0.),
mOutputMax(1.),
mFunctionLibrary(kTTValNONE),
mFunction(kTTSymEmpty),
mFunctionParameters(kTTValNONE),
mFunctionSamples(kTTValNONE),
mDirectory(NULL),
mReceiver(NULL),
mSender(NULL),
mReturnValueCallback(NULL),
mFunctionUnit(NULL),
mValid(NO)
{	
	arguments.get(0, (TTPtr*)&mDirectory);
	TT_ASSERT("Directory passed to TTMapper is not NULL", mDirectory);
	
	if(arguments.getSize() == 2)
		arguments.get(1, (TTPtr*)&mReturnValueCallback);
	
	addAttributeWithSetter(Input, kTypeSymbol);
	addAttributeWithSetter(Output, kTypeSymbol);
	
	addAttributeWithSetter(InputMin, kTypeFloat64);
	addAttributeWithSetter(InputMax, kTypeFloat64);
	addAttributeWithSetter(OutputMin, kTypeFloat64);
	addAttributeWithSetter(OutputMax, kTypeFloat64);
	
	addAttributeWithGetter(FunctionLibrary, kTypeLocalValue);
	addAttributeProperty(FunctionLibrary, readOnly, YES);
	
	addAttributeWithSetter(Function, kTypeSymbol);
	
	addAttribute(FunctionParameters, kTypeLocalValue);
	addAttributeProperty(FunctionParameters, readOnly, YES);
	
	addAttributeWithGetter(FunctionSamples, kTypeLocalValue);
	addAttributeProperty(FunctionSamples, readOnly, YES);
	
	addMessageWithArgument(map);
	
	scaleInput();
	scaleOutput();
}

TTMapper::~TTMapper() // TODO : delete things...
{
	long		n;
	TTSymbolPtr	aName;
	
	if (mFunctionUnit) {
		
		// Remove former parameters
		n = mFunctionParameters.getSize();
		for (int i=0; i<n; i++) {
			mFunctionParameters.get(i, &aName);
			this->removeAttribute(aName);
		}
		
		TTObjectRelease(TTObjectHandle(&mFunctionUnit));
		mFunctionUnit = NULL;
		mFunction = kTTSymEmpty;
		mFunctionParameters.clear();
	}
	
	if (mReturnValueCallback)
		TTObjectRelease(TTObjectHandle(&mReturnValueCallback));
	
	if (mSender)
		TTObjectRelease(TTObjectHandle(&mSender));
	
	if (mReceiver)
		TTObjectRelease(TTObjectHandle(&mReceiver));
}

TTErr TTMapper::map(TTValue& value)
{
	processMapping(value);
	
	// return value
	if (mSender)
		mSender->sendMessage(kTTSym_send, value);
	
	if (mReturnValueCallback)
		mReturnValueCallback->notify(value);
	
	return kTTErrNone;
}

TTErr TTMapper::getFunctionLibrary(TTValue& value)
{
	FunctionLib::getUnitNames(mFunctionLibrary);
	
	value = mFunctionLibrary;
	return kTTErrNone;
}

TTErr TTMapper::getFunctionSamples(TTValue& value)
{
	TTFloat64	s, resolution;
	
	resolution = (mInputMax - mInputMin) / 100; // TODO : add an attribute for the number of samples (default : 100)
	
	for (s = mInputMin; s < mInputMax; s += resolution)
		value.append(s);
	
	processMapping(value);
	
	return kTTErrNone;
}

TTErr TTMapper::setInput(const TTValue& value)
{
	TTValue			args, v, min, max;
	TTNodePtr		aNode;
	TTObjectPtr		returnAddressCallback, returnValueCallback, anObject;
	TTValuePtr		returnAddressBaton, returnValueBaton;
	TTErr			err;
	
	mInput = value;
	
	// Make a TTReceiver object
	args.append(TTModularDirectory);
	args.append(mInput);
	args.append(kTTSym_Value);
	
	returnAddressCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &returnAddressCallback, kTTValNONE);
	returnAddressBaton = new TTValue(TTPtr(this));
	returnAddressCallback->setAttributeValue(TT("Baton"), TTPtr(returnAddressBaton));
	returnAddressCallback->setAttributeValue(TT("Function"), TTPtr(&TTMapperReceiveAddressCallback));
	args.append(returnAddressCallback);
	
	returnValueCallback = NULL;				// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(this));
	returnValueCallback->setAttributeValue(TT("Baton"), TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(TT("Function"), TTPtr(&TTMapperReceiveValueCallback));
	args.append(returnValueCallback);
	
	mReceiver = NULL;
	TTObjectInstantiate(TT("Receiver"), TTObjectHandle(&mReceiver), args);
	
	// Trying to get the Parameter at this address 
	// and get some infos about range bounds 
	// (but if the mapper created before we give up)
	err = mDirectory->getTTNodeForOSC(mInput, &aNode);
	
	if (!err) {

		if (anObject = aNode->getObject())
			if (anObject->getName() == TT("Parameter")) {
				
				anObject->getAttributeValue(kTTSym_RangeBounds, v);
				
				setInputMin(v.getFloat64(0));
				setInputMax(v.getFloat64(1));
			}
	}
	
	return kTTErrNone;
}

TTErr TTMapper::setOutput(const TTValue& value)
{
	TTValue			args, v, min, max;
	TTNodePtr		aNode;
	TTObjectPtr		anObject;
	TTErr			err;
	
	mOutput = value;
		
	// Make a TTSender object
	args.append(TTModularDirectory);
	args.append(mOutput);
	args.append(kTTSym_Value);
	
	mSender = NULL;
	TTObjectInstantiate(TT("Sender"), TTObjectHandle(&mSender), args);
	
	// Trying to get the Parameter at this address 
	// and get some infos about range bounds 
	// (but if the mapper created before we give up)
	err = mDirectory->getTTNodeForOSC(mOutput, &aNode);
	
	if (!err) {

		if (anObject = aNode->getObject())
			if (anObject->getName() == TT("Parameter")) {
				
				anObject->getAttributeValue(kTTSym_RangeBounds, v);
				
				setOutputMin(v.getFloat64(0));
				setOutputMax(v.getFloat64(1));
			}
	}
	
	return kTTErrNone;
}

TTErr TTMapper::setFunction(const TTValue& value)
{
	long		n;
	TTValue		names;
	TTSymbolPtr	aName;
	TTString	nameString;
	
	if (mFunctionUnit) {

		// Remove former parameters
		n = mFunctionParameters.getSize();
		for (int i=0; i<n; i++) {
			mFunctionParameters.get(i, &aName);
			this->removeAttribute(aName);
		}
		
		TTObjectRelease(TTObjectHandle(&mFunctionUnit));
		mFunctionUnit = NULL;
		mFunction = kTTSymEmpty;
		mFunctionParameters.clear();
	}
	
	// Create a new function unit
	mValid = false;
	mFunction = value;
	FunctionLib::createUnit(mFunction, (TTObject **)&mFunctionUnit);
	
	// Extend function unit attributes as attributes of this mapper
	// and set mPArameters attribute
	if (mFunctionUnit) {

		mFunctionUnit->getAttributeNames(names);
		n = names.getSize();
		for (int i=0; i<n; i++) {
			
			names.get(i, &aName);
			
			 // don't publish these parameters
			if (aName == TT("Bypass") || aName == TT("Mute") || aName == TT("MaxNumChannels") || aName == TT("SampleRate"))
				continue;
			
			// ignore attribute not starting with upper-case
			nameString = aName->getString();
			if (nameString[0] <= 64 || nameString[0] >= 91)
				continue;
			
			// extend attribute with the same name
			this->extendAttribute(aName, mFunctionUnit, aName);
			mFunctionParameters.append(aName);
		}
		
		mValid = true;
		notifyObservers(TT("Function"), value);
		notifyObservers(TT("FunctionParameters"), mFunctionParameters);
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTMapper::setInputMin(const TTValue& value)
{
	mInputMin = value;
	notifyObservers(TT("InputMin"), value);
	return scaleInput();
}

TTErr TTMapper::setInputMax(const TTValue& value)
{
	mInputMax = value;
	notifyObservers(TT("InputMax"), value);
	return scaleInput();
}

TTErr TTMapper::setOutputMin(const TTValue& value)
{
	mOutputMin = value;
	notifyObservers(TT("OutputMin"), value);
	return scaleOutput();
}

TTErr TTMapper::setOutputMax(const TTValue& value)
{
	mOutputMax = value;
	notifyObservers(TT("OutputMax"), value);
	return scaleOutput();
}

// Recalculate values to use for scaling of input values
TTErr TTMapper::scaleInput()
{
	// Prevent dividing by 0
	if (mInputMin == mInputMax)
		mA = 1;
	else
		mA = 1./(mInputMax - mInputMin);
	mB = -1 * mA * mInputMin;
	
	return kTTErrNone;
}

// Recalculate values to use for scaling of output values
TTErr TTMapper::scaleOutput()
{
	mC = mOutputMax - mOutputMin;
	mD = mOutputMin;
	return kTTErrNone;
}

TTErr TTMapper::processMapping(TTValue& value)
{
	TTValue		in, out;
	TTFloat64	f;
	TTInt32		i, size;
	
	size = value.getSize();
	
	// clip Input value
	value.clip(mInputMin, mInputMax);
	
	// scale Input value
	for (i=0; i<size; i++) {
		value.get(i, f);
		in.append(mA * f + mB);
	}

	// process function
	if (mFunctionUnit)
		mFunctionUnit->calculate(in, out);
	else
		out = in;
	
	value.clear();
	
	// scale Output value
	for (i=0; i<size; i++) {
		out.get(i, f);
		value.append(mC * f + mD);
	}
	
	// clip output value
	value.clip(mOutputMin, mOutputMax);
	
	return kTTErrNone;
}

TTErr TTMapper::notifyObservers(TTSymbolPtr attrName, const TTValue& value)
{
	TTAttributePtr	anAttribute = NULL;
	TTErr			err;
	
	err = this->findAttribute(attrName, &anAttribute);
	
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, value);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTMapperReceiveAddressCallback(TTPtr baton, TTValue& data)
{	
	return kTTErrGeneric;
}

TTErr TTMapperReceiveValueCallback(TTPtr baton, TTValue& data)
{
	TTMapperPtr aMapper;
	TTValuePtr	b;
	TTValue		v;
	
	// unpack baton (a TTMapper)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aMapper);
	
	 // protect data
	v = data;
	
	// process the mapping
	aMapper->processMapping(v);
	
	// return value
	if (aMapper->mSender)
		aMapper->mSender->sendMessage(kTTSym_send, v);
	
	if (aMapper->mReturnValueCallback)
		aMapper->mReturnValueCallback->notify(v);
	
	return kTTErrNone;
}

