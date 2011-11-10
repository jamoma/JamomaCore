/* 
 * Second-Order Allpass Filter Object for Jamoma DSP
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAllpass2c.h"

#define thisTTClass			TTAllpass2c
#define thisTTClassName		"allpass.2c"
#define thisTTClassTags		"audio, processor, filter, allpass"

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
mE1(0),
mE2(0)
{
	TTUInt16 initialMaxNumChannels = arguments;
	
	addAttribute(E1, kTypeFloat64);
	addAttribute(E2, kTypeFloat64);
	
	addMessage(clear);
	addUpdates(MaxNumChannels);
	
	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
	setProcessMethod(processAudio);
}


TTAllpass2c::~TTAllpass2c()
{
	;
}


TTErr TTAllpass2c::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mX1.resize(maxNumChannels);
	mX2.resize(maxNumChannels);
	mY1.resize(maxNumChannels);
	mY2.resize(maxNumChannels);
	clear();
	return kTTErrNone;
}


TTErr TTAllpass2c::clear()
{
	mX1.assign(maxNumChannels, 0.0);
	mX2.assign(maxNumChannels, 0.0);
	mY1.assign(maxNumChannels, 0.0);
	mY2.assign(maxNumChannels, 0.0);
	return kTTErrNone;
}


TTErr TTAllpass2c::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 w1 = mE1 * (mX1[channel] + mY1[channel]);
	TTFloat64 w2 = mE2 * (x + mY2[channel]);
	
	y = -w1 - w2 - mX2[channel];
	
	TTZeroDenormal(y);
	
	mX2[channel] = mX1[channel];
	mY2[channel] = mY1[channel];
	mX1[channel] = x;
	mY1[channel] = y;
	return kTTErrNone;
}


TTErr TTAllpass2c::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

