/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Generalized Window Function Wrapper for Jamoma DSP
 *
 * @details
 *
 * @authors Tim Place, Nathan Wolek, Trond Lossius,
 *
 * @copyright Copyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTWindowFunction.h"

#define thisTTClass			WindowFunction
#define thisTTClassName		"WindowFunction"
#define thisTTClassTags		"dspWindowFunctionLib, audio, processor"


TT_AUDIO_CONSTRUCTOR,
	mFunctionObject(NULL),
	mNumPoints(8192),
	mPadding(0)
{
	addAttributeWithSetter(Function,	kTypeSymbol);
	addAttributeWithSetter(NumPoints,	kTypeUInt32);
	addAttributeWithSetter(Mode,		kTypeSymbol);
	addAttributeWithSetter(Padding,		kTypeUInt32);
	
	addMessageWithArguments(getFunctions);
	addMessageWithArguments(setParameter);
	
	setAttributeValue(TT("function"), TT("rectangular"));
	setAttributeValue(TT("mode"), TT("lookup"));
}


WindowFunction::~WindowFunction()
{
	delete mFunctionObject;
}


TTErr WindowFunction::setFunction(const TTValue& function)
{
	TTErr err;
	
	mFunction = function;
	err = TTObjectBaseInstantiate(mFunction, &mFunctionObject, mMaxNumChannels);
	if (!err)
		err = fill();
	return err;
}


TTErr WindowFunction::setParameter(const TTValue& aParameterValueForTheFunction, TTValue&)
{
	TTErr err;
	
	if (aParameterValueForTheFunction.size() < 2)
		err = kTTErrWrongNumValues;
	else {
		TTSymbol	parameterName = aParameterValueForTheFunction;
		TTValue		v;
		
		v.copyFrom(aParameterValueForTheFunction, 1);
		err = mFunctionObject->setAttributeValue(parameterName, v);
		if (!err)
			fill();
	}

	return err;
}


TTErr WindowFunction::fill()
{
	mLookupTable.assign(mNumPoints, 0.0);
	if (mFunctionObject) {
		TTInt32 numPoints = mNumPoints-(mPadding*2);
		
		TTLimitMin<TTInt32>(numPoints, 0);
		for (TTInt32 i=0; i<numPoints; i++)
			mFunctionObject->calculate(i/TTFloat64(numPoints-1), mLookupTable[i+mPadding]);
	}
	else
		mLookupTable.assign(mNumPoints, 0.0);

	return kTTErrNone;
}


TTErr WindowFunction::setNumPoints(const TTValue& numPoints)
{
	return doSetNumPoints(numPoints);
}


TTErr WindowFunction::doSetNumPoints(const TTUInt32 numPoints)
{
	mNumPoints = numPoints;
	mLookupTable.resize(mNumPoints);
	return fill();
}


TTErr WindowFunction::setPadding(const TTValue& padding)
{
	mPadding = padding;
	return fill();
}


TTErr WindowFunction::setMode(const TTValue& mode)
{
	mMode = mode;
	if (mMode == TT("apply")) {
		setProcessMethod(processApply);
		setCalculateMethod(lookupValue);
	}
	else if (mMode == TT("generate")) {
		setProcessMethod(processGenerate);
		setCalculateMethod(calculateValue);
	}
	else {
		setProcessMethod(processLookup);
		setCalculateMethod(lookupValue);
	}
	return kTTErrNone;
}


TTErr WindowFunction::getFunctions(const TTValue&, TTValue& listOfWindowTypesToReturn)
{
	return TTGetRegisteredClassNamesForTags(listOfWindowTypesToReturn, TT("window"));
}


#if 0
#pragma mark -
#pragma mark Process Routines
#endif


inline TTErr WindowFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	return mFunctionObject->calculate(x, y);
}


inline TTErr WindowFunction::lookupValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = mLookupTable[TTClip(x, 0.0, 1.0) * mNumPoints];
	return kTTErrNone;
}


TTErr WindowFunction::processGenerate(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	return mFunctionObject->process(inputs, outputs);
}


TTErr WindowFunction::processLookup(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(lookupValue)
}


TTErr WindowFunction::processApply(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		in = inputs->getSignal(0);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs = in.getVectorSizeAsInt();
	TTSampleValuePtr	inSample;
	TTSampleValuePtr	outSample;
	TTUInt16			numChannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16			channel;
	
	// In 'apply' mode we automatically update the lookup table size to the vector size
	// This is slow, but hopefully only happens once (if ever)
	if (vs != mNumPoints)
		doSetNumPoints(vs);
	
	for (channel=0; channel<numChannels; channel++) {
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel];
		
		for (TTUInt32 i=0; i<vs; i++)
			*outSample++ = (*inSample++) * mLookupTable[i];
	}
	return kTTErrNone;
}

