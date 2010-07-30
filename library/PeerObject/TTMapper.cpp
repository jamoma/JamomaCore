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
mFunction(kTTSymEmpty),
mDirectory(NULL),
mReceiver(NULL),
mSender(NULL),
mReturnValueCallback(NULL),
mFunctionUnit(NULL),
mValid(NO)
{	
	arguments.get(0, (TTPtr*)&mDirectory);
	TT_ASSERT("Directory passed to TTReceiver is not NULL", mDirectory);
	
	if(arguments.getSize() == 2)
		arguments.get(1, (TTPtr*)&mReturnValueCallback);
	
	addAttributeWithSetter(Input, kTypeSymbol);
	addAttributeWithSetter(Output, kTypeSymbol);
	
	// TODO : check parameter's type to set an appropriate attribute type
	addAttributeWithSetter(InputMin, kTypeFloat64);
	addAttributeWithSetter(InputMax, kTypeFloat64);
	addAttributeWithSetter(OutputMin, kTypeFloat64);
	addAttributeWithSetter(OutputMax, kTypeFloat64);
	
	addAttributeWithSetter(Function, kTypeSymbol);
	
	addMessageWithArgument(GetFunctions);
	addMessageWithArgument(GetParameters);
	addMessageWithArgument(map);
	
	mParameterNames = new TTList();
}

TTMapper::~TTMapper()
{;}

TTErr TTMapper::setInput(const TTValue& value)
{
	TTValue			args;
	TTObjectPtr		returnAddressCallback, returnValueCallback;
	TTValuePtr		returnAddressBaton, returnValueBaton;
	
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
	
	return kTTErrNone;
}

TTErr TTMapper::setOutput(const TTValue& value)
{
	TTValue args;
	
	mOutput = value;
		
	// Make a TTSender object
	args.append(TTModularDirectory);
	args.append(mOutput);
	args.append(kTTSym_Value);
	
	mSender = NULL;
	TTObjectInstantiate(TT("Sender"), TTObjectHandle(&mSender), args);
	
	return kTTErrNone;
}

TTErr TTMapper::GetFunctions(TTValue& value)
{
	FunctionLib::getUnitNames(value);
	
	if (mReturnValueCallback)
		mReturnValueCallback->notify(value);
	
	return kTTErrNone;
}

TTErr TTMapper::setFunction(const TTValue& value)
{
	TTErr err;
	
	if (mFunctionUnit != NULL) {
		TTObjectRelease(TTObjectHandle(&mFunctionUnit));
		mFunctionUnit = NULL;
		mFunction = kTTSymEmpty;
		// TODO : remove former function attributes
	}
	
	mFunction = value;
	FunctionLib::createUnit(mFunction, (TTObject **)&mFunctionUnit);
	
	// extend function unit attributes as attributes of this mapper
	mValid = false;
	mParameterNames.clear();
	if (mFunctionUnit) {
		long			n;
		TTValue			names;
		TTSymbol*		aName;
		
		mFunctionUnit->getAttributeNames(names);
		n = names.getSize();
		for (int i=0; i<n; i++) {
			
			names.get(i, &aName);
			
			if (aName == TT("Bypass") || aName == TT("Mute") || aName == TT("MaxNumChannels") || aName == TT("SampleRate"))
				continue; // don't publish these parameters
		
			err = this->extendAttribute(aName, mFunctionUnit);
			
			if (!err)
				mParameterNames.append(aName);
		}
		
		mValid = true;
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTMapper::GetParameters(TTValue& value)
{	
	value = mParameterNames;
	
	if (mReturnValueCallback)
		mReturnValueCallback->notify(value);
	
	return kTTErrNone;
}

TTErr TTMapper::setInputMin(const TTValue& value)
{
	mInputMin = value;
	scaleInput();
	return kTTErrNone;
}

TTErr TTMapper::setInputMax(const TTValue& value)
{
	mInputMax = value;
	scaleInput();
	return kTTErrNone;
}

TTErr TTMapper::setOutputMin(const TTValue& value)
{
	mOutputMin = value;
	return scaleOutput();
}

TTErr TTMapper::setOutputMax(const TTValue& value)
{
	mOutputMax = value;
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

TTErr TTMapper::map(const TTValue& value)
{
	TTValue inputValue, outputValue;
	
	// clip Input value
	inputValue.clip(mInputMin, mInputMax);
	
	// scale Input value
	//inputValue = mA * inputValue + mB;
	
	// TODO : process function
	//mFunctionUnit->calculate(inputValue, outputValue);
	outputValue = inputValue;
	
	// scale Input value
	//inputValue = mC * inputValue + mD;
	
	// clip output value
	outputValue.clip(mOutputMin, mOutputMax);
	
	if (mSender)
		mSender->sendMessage(kTTSym_send, outputValue);
	
	if (mReturnValueCallback)
		mReturnValueCallback->notify(outputValue);
	
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
	
	// unpack baton (a TTMapper)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aMapper);
	
	return aMapper->map(data);
}

