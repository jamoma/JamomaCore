/* 
 * Generalized Window Function Wrapper for Jamoma DSP
 * Copyright © 2010 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "WindowFunction.h"

#define thisTTClass			WindowFunction
#define thisTTClassName		"WindowFunction"
#define thisTTClassTags		"audio, processor"


TT_AUDIO_CONSTRUCTOR,
	mFunctionObject(NULL),
	mNumPoints(512),
	mPadding(0)
{
	addAttributeWithSetter(Function,	kTypeSymbol);
	addAttributeWithSetter(NumPoints,	kTypeUInt32);
	addAttributeWithSetter(Mode,		kTypeSymbol);
	addAttributeWithSetter(Padding,		kTypeUInt32);
	
	addMessageWithArgument(GetFunctions);
	
	setAttributeValue(TT("Function"), TT("rectangular"));
	setAttributeValue(TT("Mode"), TT("lookup"));
}


WindowFunction::~WindowFunction()
{
	delete mFunctionObject;
}


TTErr WindowFunction::setFunction(const TTValue& function)
{
	TTErr err;
	
	mFunction = function;
	err = TTObjectInstantiate(mFunction, &mFunctionObject, maxNumChannels);
	if (!err)
		err = fill();
	return err;
}


TTErr WindowFunction::fill()
{
	mLookupTable.assign(mNumPoints, 0.0);
	if (mFunctionObject) {
		TTUInt32 numPoints = mNumPoints-(mPadding*2);
		for (TTUInt32 i=0; i<numPoints; i++)
			mFunctionObject->calculate(i/TTFloat64(numPoints), mLookupTable[i+mPadding]);
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


TTErr WindowFunction::GetFunctions(TTValue& listOfWindowTypesToReturn)
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

