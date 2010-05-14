/* 
 * LowpassFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2007 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "LowpassFunction.h"

#define thisTTClass LowpassFunction
#define thisTTClassName		"lowpass"
#define thisTTClassTags		"audio, processor, function"


TT_AUDIO_CONSTRUCTOR, 
	mFeedback(NULL)
{
	addAttributeWithSetter(Coefficient, kTypeFloat64);
	addMessage(Clear);
	addMessageWithArgument(updateMaxNumChannels);
	
	// Set Defaults...
	setAttributeValue(TT("MaxNumChannels"),	arguments);			// This attribute is inherited
	setAttributeValue(TT("Coefficient"), 0.75);
	sendMessage(TT("Clear"));
	
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}

LowpassFunction::~LowpassFunction()
{
	delete[] mFeedback;
}


TTErr LowpassFunction::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	delete[] mFeedback;
	mFeedback = new TTFloat64[maxNumChannels];
	return Clear();
}


TTErr LowpassFunction::Clear()
{
	for (TTUInt16 channel=0; channel<maxNumChannels; channel++)
		mFeedback[channel] = 0.0;
	return kTTErrNone;
}


TTErr LowpassFunction::setCoefficient(const TTValue& newValue)
{
	mCoefficient = newValue;
	mOneMinusCoefficient = 1.0 - mCoefficient;
	return kTTErrNone;
}



inline TTErr LowpassFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	y = mFeedback[channel] = TTAntiDenormal((mFeedback[channel] * mCoefficient) + (x * mOneMinusCoefficient));
	return kTTErrNone;
}


TTErr LowpassFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}


