/* 
 * First-Order Allpass Filter Cascade for Jamoma DSP
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAllpass1aCascade2.h"

#define thisTTClass			TTAllpass1aCascade2
#define thisTTClassName		"allpass.1a.cascade2"
#define thisTTClassTags		"audio, processor, filter, allpass, cascade"

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mAlpha0(0),
	mAlpha1(0)
{
	TTUInt16 initialMaxNumChannels = arguments;

	addAttribute(Alpha0, kTypeFloat64);
	addAttribute(Alpha1, kTypeFloat64);
	
	addMessage(clear);
	addUpdates(MaxNumChannels);

	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
	setProcessMethod(processAudio);
}


TTAllpass1aCascade2::~TTAllpass1aCascade2()
{
	;
}


TTErr TTAllpass1aCascade2::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mX1.resize(maxNumChannels);
	mD2.resize(maxNumChannels);
	mY1.resize(maxNumChannels);
	clear();
	return kTTErrNone;
}


TTErr TTAllpass1aCascade2::clear()
{
	mX1.assign(maxNumChannels, 0.0);
	mD2.assign(maxNumChannels, 0.0);
	mY1.assign(maxNumChannels, 0.0);
	return kTTErrNone;
}


TTErr TTAllpass1aCascade2::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 p;
	
	p = mX1[channel] + mAlpha0 * (x - mD2[channel]);
	y = mD2[channel] + mAlpha1 * (p - mY1[channel]);
	
	TTZeroDenormal(y);
	TTZeroDenormal(p);
	mY1[channel] = y;
	mD2[channel] = p;
	mX1[channel] = x;
	
	return kTTErrNone;
}


TTErr TTAllpass1aCascade2::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

