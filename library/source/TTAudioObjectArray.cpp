/*
 * A wrapper for an array of audio objects
 * Copyright © 2011, Timothy Place and Nils Peters
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"
#include "TTAudioObjectArray.h"


#define thisTTClass			TTAudioObjectArray
#define thisTTClassName		"array"
#define thisTTClassTags		"audio, array"


TT_AUDIO_CONSTRUCTOR,
	mClass(NULL),
	mSize(0),
	mInputChannelSignal(NULL),
	mOutputChannelSignal(NULL)
{
	TTUInt16 initialMaxNumChannels = arguments;

	TTObjectInstantiate(kTTSym_audiosignal, &mInputChannelSignal, 1);
	TTObjectInstantiate(kTTSym_audiosignal, &mOutputChannelSignal, 1);

	addAttributeWithSetter(Size,	kTypeUInt16);
	addAttributeWithSetter(Class,	kTypeSymbol);
	addUpdates(MaxNumChannels);

	addMessageWithArguments(set);

	setAttributeValue(kTTSym_maxNumChannels, initialMaxNumChannels);
	setAttributeValue(TT("class"), TT("gain"));
	setProcessMethod(processAudio);
}


TTAudioObjectArray::~TTAudioObjectArray()
{
	TTObjectRelease(&mInputChannelSignal);
	TTObjectRelease(&mOutputChannelSignal);
}


TTErr TTAudioObjectArray::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	return setAttributeValue(TT("size"), maxNumChannels);
}


TTErr TTAudioObjectArray::setSize(const TTValueRef newSize)
{
	// TODO: lock so that audio is not processed when we are resizing!

	mSize = newSize;

	// 1. free the old instances
	for (TTAudioObjectIter obj = mInstances.begin(); obj != mInstances.end(); ++obj)
		TTObjectRelease(&(*obj));

	// 2. resize the vector of pointers and set to NULL
	mInstances.resize(mSize);
	mInstances.assign(sizeof(TTPtr), 0);

	// 3. create the new instances (if the class has been defined)
	if (mClass) {
		for (TTAudioObjectIter obj = mInstances.begin(); obj != mInstances.end(); ++obj)
			TTObjectInstantiate(mClass, &(*obj), kTTVal1);
	}

	return kTTErrNone;
}


TTErr TTAudioObjectArray::setClass(const TTValueRef newClass)
{
	TTSymbolPtr theClassName = newClass;
	int			err = 0;

	// TODO: find out if the specified class name is a legitimate class before proceeding

	for (int i=0; i<mSize; i++)
		err |= TTObjectInstantiate(newClass, &mInstances[i], 1);

	if (!err)
		mClass = theClassName;
	return (TTErr)err;
}


TTErr TTAudioObjectArray::set(TTValue& arguments, TTValue&)
{
	// There may be two or more arguments
	// if the first argument is a number, it specifies which instance in the array to address
	// if the first argument is a symbol, then the attribute will be set for all instances
	// the first or second arg (the first which is a symbol) is the name of the attribute
	// the args past that are the value

	TTInt32		target = -1; // -1 means all voices
	TTSymbolPtr	attrName;
	TTValue		attrValue;
	int			err = kTTErrNone;

	if (ttDataTypeInfo[arguments.getType(0)]->isNumerical)
		target = arguments;

	if (target >= 0) {
		if (target < mSize){
		if (arguments.getSize() < 3)
			return kTTErrWrongNumValues;
		else
			arguments.get(1, &attrName);

		if (!attrName)
			return kTTErrInvalidAttribute;

		attrValue.copyFrom(arguments, 2);

		err = mInstances[target]->setAttributeValue(attrName, attrValue);
		}

	} 
	else {
		if (arguments.getSize() < 2)
			return kTTErrWrongNumValues;
		else
			arguments.get(0, &attrName);

		if (!attrName)
			return kTTErrInvalidAttribute;

		attrValue.copyFrom(arguments, 1);

		for (int i=0; i<mSize; i++)
			err |= mInstances[i]->setAttributeValue(attrName, attrValue);

	}

	arguments.clear();
	return (TTErr)err;
}


TTErr TTAudioObjectArray::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		channelCount = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		vs = in.getVectorSizeAsInt();

	for (TTUInt16 channel=0; channel<channelCount; channel++) {
		mInputChannelSignal->setVector(0, vs, in.mSampleVectors[channel]);
		mOutputChannelSignal->setVector(0, vs, out.mSampleVectors[channel]);
		mInstances[channel]->process(mInputChannelSignal, mOutputChannelSignal);
	}
	return kTTErrNone;
}


TTErr TTAudioObjectArray::test(TTValue& returnedTestInfo)
{
	// TODO: write unit tests
	return TTObject::test(returnedTestInfo);
}

