/* 
 * Fourth-Order Allpass Filter Object for Jamoma DSP
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAllpass4a.h"

#define thisTTClass			TTAllpass4a
#define thisTTClassName		"allpass.4a"
#define thisTTClassTags		"audio, processor, filter, allpass"

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mD1(0),
	mD2(0),
	mD3(0),
	mD4(0)
{
	TTUInt16 initialMaxNumChannels = arguments;

	addAttribute(D1, kTypeFloat64);
	addAttribute(D2, kTypeFloat64);
	addAttribute(D3, kTypeFloat64);
	addAttribute(D4, kTypeFloat64);
	
	addMessage(clear);
	addUpdates(MaxNumChannels);

	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
	setProcessMethod(processAudio);
}


TTAllpass4a::~TTAllpass4a()
{
	;
}


TTErr TTAllpass4a::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
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


TTErr TTAllpass4a::clear()
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


TTErr TTAllpass4a::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 w1 = mD1 * (mX3[channel] - mY1[channel]);
	TTFloat64 w2 = mD2 * (mX2[channel] - mY2[channel]);
	TTFloat64 w3 = mD3 * (mX1[channel] - mY3[channel]);
	TTFloat64 w4 = mD4 * (x            - mY4[channel]);
	
	y = w1 + w2 + w3 + w4 + mX4[channel];

	TTZeroDenormal(y);
	
	// TODO: Is there something faster that we can do below rather all of this copying?
	// If we could have a pointer that just incremented it seems like it would be faster
	// But then we need some clever bit twiddling to efficiently do the wrapping...
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


TTErr TTAllpass4a::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

