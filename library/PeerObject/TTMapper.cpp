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
mFunction(TT("linear")),
mDirectory(NULL),
mReceiver(NULL),
mSender(NULL),
mReturnValueCallback(NULL)
{	
	arguments.get(0, (TTPtr*)&mDirectory);
	TT_ASSERT("Directory passed to TTReceiver is not NULL", mDirectory);
	
	if(arguments.getSize() == 2)
		arguments.get(1, (TTPtr*)&mReturnValueCallback);
	
	addAttributeWithSetter(Input, kTypeSymbol);
	addAttributeWithSetter(Output, kTypeSymbol);
	
	// TODO : check parameter's type to set an appropriate attribute type
	addAttribute(InputMin, kTypeFloat64);
	addAttribute(InputMax, kTypeFloat64);
	addAttribute(OutputMin, kTypeFloat64);
	addAttribute(OutputMax, kTypeFloat64);
	
	addAttributeWithSetter(Function, kTypeSymbol);
	
	addMessageWithArgument(map);
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

TTErr TTMapper::setFunction(const TTValue& value)
{
	mFunction = value;
	
	return kTTErrNone;
}

TTErr TTMapper::map(const TTValue& value)
{
	TTValue inputValue, outputValue;
	
	inputValue = value;
	
	// clip Input value
	inputValue.clip(mInputMin, mInputMax);
	
	// TODO : process function
	outputValue = inputValue;
	
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

