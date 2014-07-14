/** @file
 *
 * @ingroup dspFilterLib
 *
 * @brief #TTAllpass2c is a second-order building-block allpass filter.
 *
 * @details Essentially the same as #TTAllpass2a, but with some signs flipped.
 *  Based on Fredric J. Harris (2004): Multirate Signal Processing for Communication Systems, Prentice Hall, Chapter 10, Figure 43. @n
 *  @n
 *  Difference equation: @n
 *  @code
 *  y(n) = -e_2 x(n) - e_1 x(n-1) - x(n-2  -  e_1 y(n-1) - e_2 y(n-2)
 *  @endcode
 *
 *  Transfer function: @n
 *
 *  @code
 *           -e_2  -  e_1 Z^(-1)  -  Z^(-2)
 *  H(Z) = ---------------------------------
 *          1  +  e_1 Z^(-1)  +  e_2 Z^(-2)
 *  @endcode
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTAllpass2c.h"

#define thisTTClass			TTAllpass2c
#define thisTTClassName		"allpass.2c"
#define thisTTClassTags		"dspFilterLib, audio, processor, filter, allpass"

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
mE1(0),
mE2(0)
{
	TTChannelCount initialMaxNumChannels = arguments;
	
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
	mX1.resize(mMaxNumChannels);
	mX2.resize(mMaxNumChannels);
	mY1.resize(mMaxNumChannels);
	mY2.resize(mMaxNumChannels);
	clear();
	return kTTErrNone;
}


TTErr TTAllpass2c::clear()
{
	mX1.assign(mMaxNumChannels, 0.0);
	mX2.assign(mMaxNumChannels, 0.0);
	mY1.assign(mMaxNumChannels, 0.0);
	mY2.assign(mMaxNumChannels, 0.0);
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

