/* 
 * A Mapper Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMapper.h"

#define thisTTClass			TTMapper
#define thisTTClassName		"Mapper"
#define thisTTClassTags		"mapper"

TT_MODULAR_CONSTRUCTOR,
mInput(kTTAdrsEmpty),
mOutput(kTTAdrsEmpty),
mInputMin(0.),
mInputMax(1.),
mOutputMin(0.),
mOutputMax(1.),
mEnable(YES),
mInverse(NO),
mFunctionLibrary(kTTValNONE),
mFunction(kTTSymEmpty),
mFunctionParameters(kTTValNONE),
mFunctionSamples(kTTValNONE),
mReceiver(NULL),
mSender(NULL),
mInputObserver(NULL),
mOutputObserver(NULL),
mInputRangeObserver(NULL),
mOutputRangeObserver(NULL),
mObserveInputRange(true),
mObserveOutputRange(true),
mReturnValueCallback(NULL)
#ifndef TT_NO_DSP
,
mFunctionUnit(NULL),
mValid(NO)
#endif
{	
	if(arguments.getSize() == 1)
		arguments.get(0, (TTPtr*)&mReturnValueCallback);
	
	addAttributeWithSetter(Input, kTypeSymbol);
	addAttributeWithSetter(Output, kTypeSymbol);
	
	addAttributeWithSetter(InputMin, kTypeFloat64);
	addAttributeWithSetter(InputMax, kTypeFloat64);
	addAttributeWithSetter(OutputMin, kTypeFloat64);
	addAttributeWithSetter(OutputMax, kTypeFloat64);
	
	addAttributeWithSetter(Enable, kTypeBoolean);
	
	addAttribute(Inverse, kTypeBoolean);
	
	addAttributeWithGetter(FunctionLibrary, kTypeLocalValue);
	addAttributeProperty(FunctionLibrary, readOnly, YES);
	
	addAttributeWithSetter(Function, kTypeSymbol);
	
	addAttribute(FunctionParameters, kTypeLocalValue);
	addAttributeProperty(FunctionParameters, readOnly, YES);
	
	addAttributeWithGetter(FunctionSamples, kTypeLocalValue);
	addAttributeProperty(FunctionSamples, readOnly, YES);
	
	addMessageWithArguments(Map);
	addMessageProperty(Map, hidden, YES);
	
	scaleInput();
	scaleOutput();
}

TTMapper::~TTMapper() // TODO : delete things...
{
	long		n;
	TTSymbol	aName;
#ifndef TT_NO_DSP	
	if (mFunctionUnit) {
		
		// Remove former datas
		n = mFunctionParameters.getSize();
		for (int i=0; i<n; i++) {
			mFunctionParameters.get(i, aName);
			this->removeAttribute(aName);
		}
		
		TTObjectRelease(TTObjectHandle(&mFunctionUnit));
		mFunctionUnit = NULL;
		mFunction = kTTSymEmpty;
		mFunctionParameters.clear();
	}
#endif
	
	if (mReturnValueCallback) {
		delete (TTValuePtr)mReturnValueCallback->getBaton();
		TTObjectRelease(TTObjectHandle(&mReturnValueCallback));
	}
	
	if (mSender)
		TTObjectRelease(TTObjectHandle(&mSender));
	
	if (mReceiver)
		TTObjectRelease(TTObjectHandle(&mReceiver));
	
	if (mInputObserver)
		TTObjectRelease(TTObjectHandle(&mInputObserver));
	
	if (mOutputObserver)
		TTObjectRelease(TTObjectHandle(&mOutputObserver));
	
	if (mInputRangeObserver)
		TTObjectRelease(TTObjectHandle(&mInputRangeObserver));
	
	if (mOutputRangeObserver)
		TTObjectRelease(TTObjectHandle(&mOutputRangeObserver));
}

TTErr TTMapper::Map(TTValue& inputValue, TTValue& outputValue)
{
	if (mEnable) {
		
		processMapping(inputValue, outputValue);
		
		// return value
		if (mSender)
			mSender->sendMessage(kTTSym_Send, outputValue, kTTValNONE);
		
		if (mReturnValueCallback)
			mReturnValueCallback->notify(outputValue, kTTValNONE);
	}
	
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
	TTValue		inputSamples;
	TTFloat64	s, resolution;
	
	resolution = (mInputMax - mInputMin) / 100; // TODO : add an attribute for the number of samples (default : 100)
	
	for (s = mInputMin; s < mInputMax; s += resolution)
		inputSamples.append(s);
	
	processMapping(inputSamples, value);
	
	return kTTErrNone;
}

TTErr TTMapper::setInput(const TTValue& value)
{
	TTValue			args, v, min, max;
	TTNodePtr		aNode;
	TTObjectPtr		returnValueCallback, anObject;
	TTValuePtr		returnValueBaton;
	TTErr			err;
	
	if (mReceiver)
		TTObjectRelease(TTObjectHandle(&mReceiver));
	
	value.get(0, mInput);
	
	mObserveInputRange = true;
	
	// Make a TTReceiver object
	args.append(NULL);
	
	returnValueCallback = NULL;				// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TTSymbol("callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(this));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&TTMapperReceiveValueCallback));
	args.append(returnValueCallback);
	
	mReceiver = NULL;
	TTObjectInstantiate(kTTSym_Receiver, TTObjectHandle(&mReceiver), args);
	
	mReceiver->setAttributeValue(kTTSym_address, mInput.appendAttribute(kTTSym_value));
	
	// Trying to get the Data at this address 
	// and get some infos about range bounds 
	// and if the mapper was created before we observe the input address
	if (getDirectoryFrom(mInput)) {
		err = getDirectoryFrom(mInput)->getTTNode(mInput, &aNode);
		
		if (!err) {
			
			anObject = aNode->getObject();
			if (anObject)
				if (anObject->getName() == kTTSym_Data) {
					
					anObject->getAttributeValue(kTTSym_rangeBounds, v);
					
					mInputMin = v.getFloat64(0);
					mInputMax = v.getFloat64(1);
					scaleInput();
					
					observeInputRange();
				}
		}
		else
			observeInput();
	}
	
	return kTTErrNone;
}

TTErr TTMapper::observeInput()
{
	TTValue			args;
	TTObjectPtr		returnInputCreationCallback;
	TTValuePtr		returnInputCreationBaton;
	
	if (mInputObserver)
		TTObjectRelease(TTObjectHandle(&mInputObserver));
	
	// Make a TTReceiver object
	returnInputCreationCallback = NULL;				// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TTSymbol("callback"), &returnInputCreationCallback, kTTValNONE);
	returnInputCreationBaton = new TTValue(TTPtr(this));
	returnInputCreationCallback->setAttributeValue(kTTSym_baton, TTPtr(returnInputCreationBaton));
	returnInputCreationCallback->setAttributeValue(kTTSym_function, TTPtr(&TTMapperInputCreationCallback));
	args.append(returnInputCreationCallback);
	
	args.append(NULL);
	
	mInputObserver = NULL;
	TTObjectInstantiate(kTTSym_Receiver, TTObjectHandle(&mInputObserver), args);
	
	mInputObserver->setAttributeValue(kTTSym_address, mInput.appendAttribute(kTTSym_created));

	return kTTErrNone;
}

TTErr TTMapper::observeInputRange()
{
	TTValue			args;
	TTObjectPtr		returnInputRangeCallback;
	TTValuePtr		returnInputRangeBaton;
	
	if (mInputRangeObserver)
		TTObjectRelease(TTObjectHandle(&mInputRangeObserver));
	
	// Make a TTReceiver object
	args.append(NULL);
	
	returnInputRangeCallback = NULL;				// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TTSymbol("callback"), &returnInputRangeCallback, kTTValNONE);
	returnInputRangeBaton = new TTValue(TTPtr(this));
	returnInputRangeCallback->setAttributeValue(kTTSym_baton, TTPtr(returnInputRangeBaton));
	returnInputRangeCallback->setAttributeValue(kTTSym_function, TTPtr(&TTMapperInputRangeCallback));
	args.append(returnInputRangeCallback);
	
	mInputRangeObserver = NULL;
	TTObjectInstantiate(kTTSym_Receiver, TTObjectHandle(&mInputRangeObserver), args);
	
	mInputRangeObserver->setAttributeValue(kTTSym_address, mInput.appendAttribute(kTTSym_rangeBounds));
	
	return kTTErrNone;
}

TTErr TTMapper::setOutput(const TTValue& value)
{
	TTValue			args, v, min, max;
	TTNodePtr		aNode;
	TTObjectPtr		anObject;
	TTErr			err;
	
	if (mSender)
		TTObjectRelease(TTObjectHandle(&mSender));
	
	value.get(0, mOutput);
	
	mObserveOutputRange = true;
		
	// Make a TTSender object
	mSender = NULL;
	TTObjectInstantiate(kTTSym_Sender, TTObjectHandle(&mSender), kTTValNONE);
	
	mSender->setAttributeValue(kTTSym_address, mOutput.appendAttribute(kTTSym_value));
	
	// Trying to get the Data at this address 
	// and get some infos about range bounds 
	// and if the mapper created before we observe the output address
	if (getDirectoryFrom(mOutput)) {
		err = getDirectoryFrom(mOutput)->getTTNode(mOutput, &aNode);
		
		if (!err) {
			
			anObject = aNode->getObject();
			if (anObject)
				if (anObject->getName() == kTTSym_Data) {
					
					anObject->getAttributeValue(kTTSym_rangeBounds, v);
					
					mOutputMin = v.getFloat64(0);
					mOutputMax = v.getFloat64(1);
					scaleOutput();
					
					observeOutputRange();
				}
		}
		else
			observeOutput();
	}
	
	return kTTErrNone;
}

TTErr TTMapper::observeOutput()
{
	TTValue			args;
	TTObjectPtr		returnOutputCreationCallback;
	TTValuePtr		returnOutputCreationBaton;
	
	if (mOutputObserver)
		TTObjectRelease(TTObjectHandle(&mOutputObserver));
	
	// Make a TTReceiver object
	returnOutputCreationCallback = NULL;				// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TTSymbol("callback"), &returnOutputCreationCallback, kTTValNONE);
	returnOutputCreationBaton = new TTValue(TTPtr(this));
	returnOutputCreationCallback->setAttributeValue(kTTSym_baton, TTPtr(returnOutputCreationBaton));
	returnOutputCreationCallback->setAttributeValue(kTTSym_function, TTPtr(&TTMapperOutputCreationCallback));
	args.append(returnOutputCreationCallback);
	
	args.append(NULL);
	
	mOutputObserver = NULL;
	TTObjectInstantiate(kTTSym_Receiver, TTObjectHandle(&mOutputObserver), args);
	
	mOutputObserver->setAttributeValue(kTTSym_address, mOutput.appendAttribute(kTTSym_created));
	
	return kTTErrNone;
}

TTErr TTMapper::observeOutputRange()
{
	TTValue			args;
	TTObjectPtr		returnOutputRangeCallback;
	TTValuePtr		returnOutputRangeBaton;
	
	if (mOutputRangeObserver)
		TTObjectRelease(TTObjectHandle(&mOutputRangeObserver));
	
	// Make a TTReceiver object
	args.append(NULL);
	
	returnOutputRangeCallback = NULL;				// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TTSymbol("callback"), &returnOutputRangeCallback, kTTValNONE);
	returnOutputRangeBaton = new TTValue(TTPtr(this));
	returnOutputRangeCallback->setAttributeValue(kTTSym_baton, TTPtr(returnOutputRangeBaton));
	returnOutputRangeCallback->setAttributeValue(kTTSym_function, TTPtr(&TTMapperOutputRangeCallback));
	args.append(returnOutputRangeCallback);
	
	mOutputRangeObserver = NULL;
	TTObjectInstantiate(kTTSym_Receiver, TTObjectHandle(&mOutputRangeObserver), args);
	
	mOutputRangeObserver->setAttributeValue(kTTSym_address, mOutput.appendAttribute(kTTSym_rangeBounds));
	
	return kTTErrNone;
}

TTErr TTMapper::setFunction(const TTValue& value)
{
	long		n;
	TTValue		names;
	TTSymbol	aName;
#ifndef TT_NO_DSP	
	if (mFunctionUnit) {

		// Remove former datas
		n = mFunctionParameters.getSize();
		for (int i=0; i<n; i++) {
			mFunctionParameters.get(i, aName);
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
	// and set mFunctionParameters attribute
	if (mFunctionUnit) {

		mFunctionUnit->getAttributeNames(names);
		n = names.getSize();
		
		if (n) {
			for (int i=0; i<n; i++) {
				
				names.get(i, aName);
				
				// don't publish these datas
				if (aName == kTTSym_bypass || aName == kTTSym_mute || aName == kTTSym_maxNumChannels || aName == kTTSym_sampleRate)
					continue;
				
				// extend attribute with the same name
				this->extendAttribute(aName, mFunctionUnit, aName);
				mFunctionParameters.append(aName);
			}
		}
		else
			mFunctionParameters.append(kTTSym_none);
		
		mValid = true;
		notifyObservers(kTTSym_function, value);
		notifyObservers(TTSymbol("functionParameters"), mFunctionParameters);
		return kTTErrNone;
	}
#endif	
	return kTTErrGeneric;
}

TTErr TTMapper::setInputMin(const TTValue& value)
{
	mInputMin = value;
	
	// stop input range observation
	mObserveInputRange = false;
	
	if (mInputRangeObserver)
		TTObjectRelease(TTObjectHandle(&mInputRangeObserver));
	
	notifyObservers(TTSymbol("inputMin"), value);
	return scaleInput();
}

TTErr TTMapper::setInputMax(const TTValue& value)
{
	mInputMax = value;
	
	// stop input range observation
	mObserveInputRange = false;
	
	if (mInputRangeObserver)
		TTObjectRelease(TTObjectHandle(&mInputRangeObserver));
	
	notifyObservers(TTSymbol("inputMax"), value);
	return scaleInput();
}

TTErr TTMapper::setOutputMin(const TTValue& value)
{
	mOutputMin = value;
	
	// stop output range observation
	mObserveOutputRange = false;
	
	if (mOutputRangeObserver)
		TTObjectRelease(TTObjectHandle(&mOutputRangeObserver));
	
	notifyObservers(TTSymbol("outputMin"), value);
	return scaleOutput();
}

TTErr TTMapper::setOutputMax(const TTValue& value)
{
	mOutputMax = value;
	
	// stop output range observation
	mObserveOutputRange = false;
	
	if (mOutputRangeObserver)
		TTObjectRelease(TTObjectHandle(&mOutputRangeObserver));
	
	notifyObservers(TTSymbol("outputMax"), value);
	return scaleOutput();
}

TTErr TTMapper::setEnable(const TTValue& value)
{
	mEnable = value;
	
	notifyObservers(kTTSym_enable, value);
	return kTTErrNone;
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

TTErr TTMapper::processMapping(TTValue& inputValue, TTValue& outputValue)
{
	TTValue		in, out;
	TTFloat64	f;
	TTInt32		i, size;
	
	size = inputValue.getSize();
	
	// clip input value
	inputValue.clip(mInputMin, mInputMax);
	
	// scale input value
	for (i=0; i<size; i++) {
		inputValue.get(i, f);
		in.append(mA * f + mB);
	}

#ifndef TT_NO_DSP
	// process function
	if (mFunctionUnit)
		mFunctionUnit->calculate(in, out);
	else
#endif		
		out = in;
	
	// scale output value
	for (i=0; i<size; i++) {
		out.get(i, f);
		
		if (!mInverse)
			outputValue.append(mC * f + mD);
		else
			outputValue.append(mOutputMax - (mC * f + mD));
	}
	
	// clip output value
	outputValue.clip(mOutputMin, mOutputMax);
	
	return kTTErrNone;
}

TTErr TTMapper::notifyObservers(TTSymbol attrName, const TTValue& value)
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

TTErr TTMapperInputCreationCallback(TTPtr baton, TTValue& data)
{	
	TTMapperPtr aMapper;
	TTValuePtr	b;
	TTValue		v;
	TTAddress address;
	TTNodePtr	aNode;
	TTObjectPtr anObject;
	
	// unpack baton (a TTMapper)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aMapper);
	
	// unpack data (an address)
	data.get(0, address);
	
	// get the Data at this address 
	// and get some infos about range bounds 
	TTErr err = getDirectoryFrom(address)->getTTNode(address, &aNode);
	
	if (!err) {
		
		anObject = aNode->getObject();
		if (anObject) {
			if (anObject->getName() == kTTSym_Data) {
				
				anObject->getAttributeValue(kTTSym_rangeBounds, v);
				
				// if inputMin isn't a specific value or observation is active
				if (aMapper->mInputMin == 0. || aMapper->mObserveInputRange)
					aMapper->mInputMin = v.getFloat64(0);
				
				// if inputMax isn't a specific value or observation is active
				if (aMapper->mInputMax == 1. || aMapper->mObserveInputRange)
					aMapper->mInputMax = v.getFloat64(1);
				
				aMapper->scaleInput();
					
				aMapper->observeInputRange();
			}
		}
	}
	
	return err;
}

TTErr TTMapperOutputCreationCallback(TTPtr baton, TTValue& data)
{	
	TTMapperPtr aMapper;
	TTValuePtr	b;
	TTValue		v;
	TTAddress address;
	TTNodePtr	aNode;
	TTObjectPtr anObject;
	
	// unpack baton (a TTMapper)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aMapper);
	
	// unpack data (an address)
	data.get(0, address);
	
	// get the Data at this address 
	// and get some infos about range bounds 
	TTErr err = getDirectoryFrom(address)->getTTNode(address, &aNode);
	
	if (!err) {
		
		anObject = aNode->getObject();
		if (anObject) {
			if (anObject->getName() == kTTSym_Data) {
				
				anObject->getAttributeValue(kTTSym_rangeBounds, v);
				
				// if outputMin isn't a specific value or observation is active
				if (aMapper->mOutputMin == 0. || aMapper->mObserveOutputRange)
					aMapper->mOutputMin = v.getFloat64(0);
				
				// if outputMax isn't a specific value or observation is active
				if (aMapper->mOutputMax == 1. || aMapper->mObserveOutputRange)
					aMapper->mOutputMax = v.getFloat64(1);
				
				aMapper->scaleOutput();
					
				aMapper->observeOutputRange();
			}
		}
	}
	
	return err;
}

TTErr TTMapperInputRangeCallback(TTPtr baton, TTValue& data)
{
	TTMapperPtr aMapper;
	TTValuePtr	b;

	// unpack baton (a TTMapper)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aMapper);
	
	if (aMapper->mObserveInputRange) {
		// unpack data (min, max)
		data.get(0, aMapper->mInputMin);
		data.get(1, aMapper->mInputMax);
		
		aMapper->scaleInput();
	}
	
	return kTTErrNone;
}

TTErr TTMapperOutputRangeCallback(TTPtr baton, TTValue& data)
{
	TTMapperPtr aMapper;
	TTValuePtr	b;
	
	// unpack baton (a TTMapper)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aMapper);
	
	if (aMapper->mObserveOutputRange) {
		// unpack data (min, max)
		data.get(0, aMapper->mOutputMin);
		data.get(1, aMapper->mOutputMax);
	
		aMapper->scaleOutput();
	}
	
	return kTTErrNone;
}

TTErr TTMapperReceiveValueCallback(TTPtr baton, TTValue& data)
{
	TTMapperPtr aMapper;
	TTValuePtr	b;
	TTValue		mappedValue;
	
	// unpack baton (a TTMapper)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aMapper);
	
	if (aMapper->mEnable) {
		
		// process the mapping
		aMapper->processMapping(data, mappedValue);
		
		// return value
		if (aMapper->mSender)
			aMapper->mSender->sendMessage(kTTSym_Send, mappedValue, kTTValNONE);
		
		if (aMapper->mReturnValueCallback)
			aMapper->mReturnValueCallback->notify(mappedValue, kTTValNONE);
	}
	
	return kTTErrNone;
}

