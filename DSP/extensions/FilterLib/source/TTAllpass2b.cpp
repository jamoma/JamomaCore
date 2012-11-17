/* 
 * Second-Order Allpass Filter Object for Jamoma DSP
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAllpass2b.h"

#define thisTTClass			TTAllpass2b
#define thisTTClassName		"allpass.2b"
#define thisTTClassTags		"audio, processor, filter, allpass"

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


TTAllpass2b::~TTAllpass2b()
{
	;
}


TTErr TTAllpass2b::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mX1.resize(maxNumChannels);
	mX2.resize(maxNumChannels);
	mX3.resize(maxNumChannels);
	mX4.resize(maxNumChannels);
	mY1.resize(maxNumChannels);
	mY2.resize(maxNumChannels);
	mY3.resize(maxNumChannels);
	mY4.resize(maxNumChannels);
	clear();
	return kTTErrNone;
}


TTErr TTAllpass2b::clear()
{
	mX1.assign(maxNumChannels, 0.0);
	mX2.assign(maxNumChannels, 0.0);
	mX3.assign(maxNumChannels, 0.0);
	mX4.assign(maxNumChannels, 0.0);
	mY1.assign(maxNumChannels, 0.0);
	mY2.assign(maxNumChannels, 0.0);
	mY3.assign(maxNumChannels, 0.0);
	mY4.assign(maxNumChannels, 0.0);
	return kTTErrNone;
}


TTErr TTAllpass2b::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 w1 = mC1 * (mX2[channel] - mY2[channel]);
	TTFloat64 w2 = mC2 * (x - mY4[channel]);
	
	y = w1 + w2 + mX4[channel];

	TTZeroDenormal(y);
	
	mX4[channel] = mX3[channel];
	mY4[channel] = mY3[channel];
	mX3[channel] = mX2[channel];
	mY3[channel] = mY2[channel];
	mX2[channel] = mX1[channel];
	mY2[channel] = mY1[channel];
	mX1[channel] = x;
	mY1[channel] = y;
	return kTTErrNone;
}


TTErr TTAllpass2b::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

