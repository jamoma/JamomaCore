/** @file
 *
 * @ingroup dspLibrary
 *
 * @brief Wrapper for an array of audio objects
 *
 * @details
 *
 * @see TTAudioObjectBase
 *
 * @authors Tim Place, Nils Peters, Trond Lossius
 *
 * @copyright Copyright © 2011 by Timothy Place and Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTDSP.h"
#include "TTAudioObjectArray.h"


#define thisTTClass			TTAudioObjectBaseArray
#define thisTTClassName		"array"
#define thisTTClassTags		"dspLibrary, audio, array"


TT_AUDIO_CONSTRUCTOR,
	mSize(0),
	mInputChannelSignal(NULL),
	mOutputChannelSignal(NULL)
{
	TTUInt16 initialMaxNumChannels = arguments;

	TTObjectBaseInstantiate(kTTSym_audiosignal, &mInputChannelSignal, 1);
	TTObjectBaseInstantiate(kTTSym_audiosignal, &mOutputChannelSignal, 1);

	addAttributeWithSetter(Size,	kTypeUInt16);
	addAttributeWithSetter(Class,	kTypeSymbol);
	addUpdates(MaxNumChannels);

	addMessageWithArguments(set);

	setAttributeValue(kTTSym_maxNumChannels, initialMaxNumChannels);
	setAttributeValue("class", "gain");
	setProcessMethod(processAudio);
}


TTAudioObjectBaseArray::~TTAudioObjectBaseArray()
{
	TTObjectBaseRelease(&mInputChannelSignal);
	TTObjectBaseRelease(&mOutputChannelSignal);
}


TTErr TTAudioObjectBaseArray::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	return setAttributeValue("size", mMaxNumChannels);
}


TTErr TTAudioObjectBaseArray::setSize(const TTValueRef newSize)
{
	// TODO: lock so that audio is not processed when we are resizing!

	mSize = newSize;

	// 1. free the old instances
	for (TTAudioObjectBaseIter obj = mInstances.begin(); obj != mInstances.end(); ++obj)
		TTObjectBaseRelease(&(*obj));

	// 2. resize the vector of pointers and set to NULL
	mInstances.resize(mSize);
	mInstances.assign(sizeof(TTPtr), 0);

	// 3. create the new instances (if the class has been defined)
	if (mClass) {
		for (TTAudioObjectBaseIter obj = mInstances.begin(); obj != mInstances.end(); ++obj)
			TTObjectBaseInstantiate(mClass, &(*obj), 1);
	}

	return kTTErrNone;
}


TTErr TTAudioObjectBaseArray::setClass(const TTValueRef newClass)
{
	TTSymbol	theClassName = newClass;
	int			err = 0;

	// TODO: find out if the specified class name is a legitimate class before proceeding

	for (int i=0; i<mSize; i++)
		err |= TTObjectBaseInstantiate(newClass, &mInstances[i], 1);

	if (!err)
		mClass = theClassName;
	return (TTErr)err;
}


TTErr TTAudioObjectBaseArray::set(TTValue& arguments, TTValue&)
{
	// There may be two or more arguments
	// if the first argument is a number, it specifies which instance in the array to address
	// if the first argument is a symbol, then the attribute will be set for all instances
	// the first or second arg (the first which is a symbol) is the name of the attribute
	// the args past that are the value

	TTInt32		target = -1; // -1 means all voices
	TTSymbol	attrName(kTTSymEmpty);
	TTValue		attrValue;
	int			err = kTTErrNone;

	if (ttDataTypeInfo[arguments[0].type()]->isNumerical)
		target = arguments;

	if (target >= 0) {
		if (target < mSize){
		if (arguments.size() < 3)
			return kTTErrWrongNumValues;
		else
			arguments.get(1, attrName);

		if (!attrName)
			return kTTErrInvalidAttribute;

		attrValue.copyFrom(arguments, 2);

		err = mInstances[target]->setAttributeValue(attrName, attrValue);
		}

	} 
	else {
		if (arguments.size() < 2)
			return kTTErrWrongNumValues;
		else
			arguments.get(0, attrName);

		if (!attrName)
			return kTTErrInvalidAttribute;

		attrValue.copyFrom(arguments, 1);

		for (int i=0; i<mSize; i++)
			err |= mInstances[i]->setAttributeValue(attrName, attrValue);

	}

	arguments.clear();
	return (TTErr)err;
}


TTErr TTAudioObjectBaseArray::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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



