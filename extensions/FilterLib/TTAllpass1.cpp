/* 
 * First-Order Allpass Filter Object for Jamoma DSP
 * Copyright © 2003, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAllpass1.h"

#define thisTTClass			TTAllpass1
#define thisTTClassName		"allpass.1"
#define thisTTClassTags		"audio, processor, filter, allpass"

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mAlpha(0)
{
	TTUInt16 initialMaxNumChannels = arguments;

	addAttribute(Alpha, kTypeFloat64);
	
	addMessage(Clear);
	addMessageWithArgument(updateMaxNumChannels);

	setAttributeValue(TT("MaxNumChannels"),	initialMaxNumChannels);
	setProcessMethod(processAudio);
}


TTAllpass1::~TTAllpass1()
{
	;
}


TTErr TTAllpass1::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	mX1.resize(maxNumChannels);
	mY1.resize(maxNumChannels);
	Clear();
	return kTTErrNone;
}


TTErr TTAllpass1::Clear()
{
	mX1.assign(maxNumChannels, 0.0);
	mY1.assign(maxNumChannels, 0.0);
	return kTTErrNone;
}


inline TTErr TTAllpass::calculateValue(const TTFloat64& x, TTFloat64& y, TTDelayBufferPtr* buffers)
{
	y = ((x + mY1[channel]) * mAlpha) + mX1[channel];

	TTZeroDenormal(y);
	
	mX1[channel] = x;
	mY1[channel] = y;
	return kTTErrNone;
}


TTErr TTAllpass::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

