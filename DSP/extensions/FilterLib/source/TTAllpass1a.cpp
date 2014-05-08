/** @file
 *
 * @ingroup dspFilterLib
 *
 * @brief #TTAllpass1a is a first-order building-block allpass filter.
 *
 * @details This allpass filter uses a fixed delay of 1 sample.
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTAllpass1a.h"

#define thisTTClass			TTAllpass1a
#define thisTTClassName		"allpass.1a"
#define thisTTClassTags		"dspFilterLib, audio, processor, filter, allpass"

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mAlpha(0)
{
	TTChannelCount initialMaxNumChannels = arguments;

	addAttribute(Alpha, kTypeFloat64);
	
	addMessage(clear);
	addUpdates(MaxNumChannels);

	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
	setProcessMethod(processAudio);
}


TTAllpass1a::~TTAllpass1a()
{
	;
}


TTErr TTAllpass1a::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mX1.resize(mMaxNumChannels);
	mY1.resize(mMaxNumChannels);
	clear();
	return kTTErrNone;
}


TTErr TTAllpass1a::clear()
{
	mX1.assign(mMaxNumChannels, 0.0);
	mY1.assign(mMaxNumChannels, 0.0);
	return kTTErrNone;
}


TTErr TTAllpass1a::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	y = mX1[channel] + mAlpha * (x - mY1[channel]);
	TTZeroDenormal(y);
	mX1[channel] = x;
	mY1[channel] = y;

	return kTTErrNone;
}


TTErr TTAllpass1a::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

