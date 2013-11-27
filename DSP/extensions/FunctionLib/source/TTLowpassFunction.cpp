/* 
 * TTLowpassFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2007 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTLowpassFunction.h"

#define thisTTClass			TTLowpassFunction
#define thisTTClassName		"lowpass"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR, 
	mFeedback(NULL)
{
	addAttributeWithSetter(Coefficient, kTypeFloat64);
	addMessage(clear);
	addUpdates(MaxNumChannels);
	
	// Set Defaults...
	setAttributeValue(kTTSym_maxNumChannels,	arguments);			// This attribute is inherited
	setAttributeValue(TT("coefficient"), 0.75);
	sendMessage(TT("clear"));
	
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}

TTLowpassFunction::~TTLowpassFunction()
{
	delete[] mFeedback;
}


TTErr TTLowpassFunction::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	delete[] mFeedback;
	mFeedback = new TTFloat64[mMaxNumChannels];
	return clear();
}


TTErr TTLowpassFunction::clear()
{
	for (TTUInt16 channel=0; channel<mMaxNumChannels; channel++)
		mFeedback[channel] = 0.0;
	return kTTErrNone;
}


TTErr TTLowpassFunction::setCoefficient(const TTValue& newValue)
{
	mCoefficient = newValue;
	mOneMinusCoefficient = 1.0 - mCoefficient;
	return kTTErrNone;
}



inline TTErr TTLowpassFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	y = mFeedback[channel] = TTAntiDenormal((mFeedback[channel] * mCoefficient) + (x * mOneMinusCoefficient));
	return kTTErrNone;
}


TTErr TTLowpassFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}


