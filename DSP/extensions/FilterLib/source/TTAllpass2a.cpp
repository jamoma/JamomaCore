/* 
 * Second-Order Allpass Filter Object for Jamoma DSP
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAllpass2a.h"

#define thisTTClass			TTAllpass2a
#define thisTTClassName		"allpass.2a"
#define thisTTClassTags		"dspFilterLib, audio, processor, filter, allpass"

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mC1(0),
	mC2(0)
{
	TTUInt16 initialMaxNumChannels = arguments;

	addAttribute(C1, kTypeFloat64);
	addAttribute(C2, kTypeFloat64);
	
	addMessage(clear);
	addUpdates(MaxNumChannels);

	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
	setProcessMethod(processAudio);
}


TTAllpass2a::~TTAllpass2a()
{
	;
}


TTErr TTAllpass2a::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mX1.resize(mMaxNumChannels);
	mX2.resize(mMaxNumChannels);
	mY1.resize(mMaxNumChannels);
	mY2.resize(mMaxNumChannels);
	clear();
	return kTTErrNone;
}


TTErr TTAllpass2a::clear()
{
	mX1.assign(mMaxNumChannels, 0.0);
	mX2.assign(mMaxNumChannels, 0.0);
	mY1.assign(mMaxNumChannels, 0.0);
	mY2.assign(mMaxNumChannels, 0.0);
	return kTTErrNone;
}


TTErr TTAllpass2a::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 w1 = mC1 * (mX1[channel] - mY1[channel]);
	TTFloat64 w2 = mC2 * (x - mY2[channel]);
	
	y = w1 + w2 + mX2[channel];

	TTZeroDenormal(y);
	
	mX2[channel] = mX1[channel];
	mY2[channel] = mY1[channel];
	mX1[channel] = x;
	mY1[channel] = y;
	return kTTErrNone;
}


TTErr TTAllpass2a::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

