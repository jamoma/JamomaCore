/* 
 * Generalized Window Function Wrapper for Jamoma DSP
 * Copyright © 2010 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTFunction.h"

#define thisTTClass			TTFunction
#define thisTTClassName		"function"
#define thisTTClassTags		"dspFunctionLib, audio, processor"


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
	
	setAttributeValue(TT("function"), TT("linear"));
	setAttributeValue(TT("mode"), TT("generate"));
}


TTFunction::~TTFunction()
{
	delete mFunctionObject;
}


TTErr TTFunction::setFunction(const TTValue& function)
{
	TTErr err;
	
	mFunction = function;
	err = TTObjectBaseInstantiate(mFunction, &mFunctionObject, mMaxNumChannels);
	if (!err)
		err = fill();
	return err;
}


TTErr TTFunction::fill()
{
	mLookupTable.assign(mNumPoints, 0.0);
	if (mFunctionObject) {
		TTInt32 numPoints = mNumPoints-(mPadding*2);
		
		TTLimitMin<TTInt32>(numPoints, 0);
		for (TTInt32 i=0; i<numPoints; i++)
			mFunctionObject->calculate(i/TTFloat64(numPoints), mLookupTable[i+mPadding]);
	}
	else
		mLookupTable.assign(mNumPoints, 0.0);

	return kTTErrNone;
}


TTErr TTFunction::setNumPoints(const TTValue& numPoints)
{
	return doSetNumPoints(numPoints);
}


TTErr TTFunction::doSetNumPoints(const TTUInt32 numPoints)
{
	mNumPoints = numPoints;
	mLookupTable.resize(mNumPoints);
	return fill();
}


TTErr TTFunction::setPadding(const TTValue& padding)
{
	mPadding = padding;
	return fill();
}


TTErr TTFunction::setMode(const TTValue& mode)
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


TTErr TTFunction::getFunctions(const TTValue&, TTValue& listOfWindowTypesToReturn)
{
	return TTGetRegisteredClassNamesForTags(listOfWindowTypesToReturn, TT("function"));
}


#if 0
#pragma mark -
#pragma mark Process Routines
#endif


inline TTErr TTFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	return mFunctionObject->calculate(x, y);
}


inline TTErr TTFunction::lookupValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = mLookupTable[TTClip(x, 0.0, 1.0) * mNumPoints];
	return kTTErrNone;
}


TTErr TTFunction::processGenerate(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	return mFunctionObject->process(inputs, outputs);
}


TTErr TTFunction::processLookup(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(lookupValue)
}


TTErr TTFunction::processApply(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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

