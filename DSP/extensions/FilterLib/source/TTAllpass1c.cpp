/* 
 * First-Order Allpass Filter Object for Jamoma DSP
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAllpass1c.h"

#define thisTTClass			TTAllpass1c
#define thisTTClassName		"allpass.1c"
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


TTAllpass1c::~TTAllpass1c()
{
	;
}


TTErr TTAllpass1c::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mX1.resize(mMaxNumChannels);
	mY1.resize(mMaxNumChannels);
	clear();
	return kTTErrNone;
}


TTErr TTAllpass1c::clear()
{
	mX1.assign(mMaxNumChannels, 0.0);
	mY1.assign(mMaxNumChannels, 0.0);
	return kTTErrNone;
}


TTErr TTAllpass1c::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	y = -mX1[channel] - mAlpha * (x + mY1[channel]);
	TTZeroDenormal(y);
	mX1[channel] = x;
	mY1[channel] = y;

	return kTTErrNone;
}


TTErr TTAllpass1c::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

