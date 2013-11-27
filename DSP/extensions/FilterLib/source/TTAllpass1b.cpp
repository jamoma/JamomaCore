/* 
 * First-Order Allpass Filter Object for Jamoma DSP
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAllpass1b.h"

#define thisTTClass			TTAllpass1b
#define thisTTClassName		"allpass.1b"
#define thisTTClassTags		"dspFilterLib, audio, processor, filter, allpass"

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mAlpha(0)
{
	TTUInt16 initialMaxNumChannels = arguments;

	addAttribute(Alpha, kTypeFloat64);
	
	addMessage(clear);
	addUpdates(MaxNumChannels);

	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
	setProcessMethod(processAudio);
}


TTAllpass1b::~TTAllpass1b()
{
	;
}


TTErr TTAllpass1b::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mX1.resize(mMaxNumChannels);
	mX2.resize(mMaxNumChannels);
	mY1.resize(mMaxNumChannels);
	mY2.resize(mMaxNumChannels);
	clear();
	return kTTErrNone;
}


TTErr TTAllpass1b::clear()
{
	mX1.assign(mMaxNumChannels, 0.0);
	mX2.assign(mMaxNumChannels, 0.0);
	mY2.assign(mMaxNumChannels, 0.0);
	mY1.assign(mMaxNumChannels, 0.0);
	return kTTErrNone;
}


TTErr TTAllpass1b::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	y = mX2[channel] + mAlpha * (x - mY2[channel]);
	TTZeroDenormal(y);
	mX2[channel] = mX1[channel];
	mY2[channel] = mY1[channel];
	mX1[channel] = x;
	mY1[channel] = y;

	return kTTErrNone;
}


TTErr TTAllpass1b::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

