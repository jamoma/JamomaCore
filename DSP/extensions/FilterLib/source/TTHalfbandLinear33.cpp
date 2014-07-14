/** @file
 *
 * @ingroup dspFilterLib
 *
 * @brief #TTHalfbandLinear33 is a 33-Pole Halfband filter built up from a 2-path allpass structure.
 *
 * @details Same magnitude response with respect to frequency as #TTHalfband9, but with nearly linear phase response. @n
 *  @n
 *  The coefficients can be calculated using the "lineardesign_2.m" Matlab script. To generate the particular set of coefficients currently hard-coded into this filter, choose the following settings (yields a roughly -60dB stopband attenuation): @n
 *		- iterations: 100	(iterations bring the filter toward equiripple in the stopband) @n
 *		- wc = 0.2895		(this is the normalized frequency of the start of the stopband) @n
 *		- number of paths = 2 @n
 *		- number of coefficients = 8 @n
 *  @n
 *  The result is: @n
 *  @n
 *  Roots = @n
 *  @n
 *		-0.832302165608369
 *		-0.338171398434493 + 0.342959068350197i
 *		-0.338171398434493 - 0.342959068350197i
 *		-0.001794835916660 + 0.437771696086791i
 *		-0.001794835916660 - 0.437771696086791i
 *		 0.421285425003053
 *		 0.298484480776670 + 0.301855022798834i
 *		 0.298484480776670 - 0.301855022798834i
 *   @n
 *  branch 1 - type1     coefficient    0.8323021656083688    -0.4212854250030528 @n
 *  branch 1 - type2 1st coefficient    0.6763427968689864   0.003589671833320152      -0.59696896155334 @n
 *  branch 1 - type2 2nd coefficient    0.2319808172827758     0.1916472793306732     0.1802094400534031 @n
 *
 *  The ordering of the coefficients may not be at first obvious.  The first line of coefficients are the two alpha coefficients for the first two (first-order) allpass filters, F0 and F1. @n
 *  @n
 @  The second and third lines together provide the coefficient pairs for the remaining (second-order) filters.  Thus, 0.6763427968689864 and 0.2319808172827758 are the coefficient pair for the first filter 0.003589671833320152 and 0.1916472793306732 are the coefficient pair for the second filter, and so on.
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTHalfbandLinear33.h"

#define thisTTClass			TTHalfbandLinear33
#define thisTTClassName		"halfband.linear.33"
#define thisTTClassTags		"dspFilterLib, audio, processor, filter, lowpass, highpass"

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mP0Delay("delay"),
	mP1Delay("allpass.1a"),
	mF0("allpass.1b"),
	mF1("allpass.1b"),
	mF2("allpass.2b"),
	mF3("allpass.2b"),
	mF4("allpass.2b")
{
	TTChannelCount	initialMaxNumChannels = arguments;

	addAttributeWithSetter(Mode, kTypeSymbol);		
	addMessage(clear);
	addUpdates(MaxNumChannels);

	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
	setAttributeValue(TT("mode"), TT("lowpass"));
	
	mP0Delay.set("delayMaxInSamples", 16);
	mP0Delay.set("delayInSamples",    16);
	
	mP1Delay.set("alpha", 0.0);
	mF0.set("alpha",  0.832280776);
	mF1.set("alpha", -0.421241137);
	mF2.set("c1",     0.67623706);
	mF2.set("c2",     0.23192313);
	mF3.set("c1",     0.00359228);
	mF3.set("c2",     0.19159423);
	mF4.set("c1",    -0.59689082);
	mF4.set("c2",     0.18016931);
}


TTHalfbandLinear33::~TTHalfbandLinear33()
{
}


TTErr TTHalfbandLinear33::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	// update internal filters
	mF0.set(kTTSym_maxNumChannels, mMaxNumChannels);
	mF1.set(kTTSym_maxNumChannels, mMaxNumChannels);
	mF2.set(kTTSym_maxNumChannels, mMaxNumChannels);
	mF3.set(kTTSym_maxNumChannels, mMaxNumChannels);
	mF4.set(kTTSym_maxNumChannels, mMaxNumChannels);
	mP0Delay.set(kTTSym_maxNumChannels, mMaxNumChannels);
	mP1Delay.set(kTTSym_maxNumChannels, mMaxNumChannels);

	clear();
	return kTTErrNone;
}


TTErr TTHalfbandLinear33::clear()
{
	mF0.send(kTTSym_clear);
	mF1.send(kTTSym_clear);
	mF2.send(kTTSym_clear);
	mF3.send(kTTSym_clear);
	mF4.send(kTTSym_clear);
	mP0Delay.send(kTTSym_clear);
	mP1Delay.send(kTTSym_clear);
	return kTTErrNone;
}


TTErr TTHalfbandLinear33::setMode(const TTValue& newValue)
{
	TTSymbol newMode = newValue;
	
	if (newMode == TT("highpass")) {
		mMode = TT("highpass");
		setCalculateMethod(calculateHighpass);
		setProcessMethod(processHighpass);
	}
	else { // lowpass
		mMode = TT("lowpass");
		setCalculateMethod(calculateLowpass);
		setProcessMethod(processLowpass);
	}
	return kTTErrNone;
}


inline void TTHalfbandLinear33::filterKernel(const TTFloat64& input, TTFloat64& outputPath0, TTFloat64& outputPath1, TTPtrSizedInt channel)
{
	TTFloat64 temp1, temp2;
	
	TTBASE(mP0Delay, TTDelay)->calculateNoInterpolation(input, outputPath0, channel);

	TTBASE(mP1Delay, TTAllpass1a)->calculateValue(input,		temp2,			channel);
	TTBASE(mF0, TTAllpass1b)->calculateValue(temp2,			temp1,			channel);
	TTBASE(mF1, TTAllpass1b)->calculateValue(temp1,			temp2,			channel);
	TTBASE(mF2, TTAllpass2b)->calculateValue(temp2,			temp1,			channel);
	TTBASE(mF3, TTAllpass2b)->calculateValue(temp1,			temp2,			channel);
	TTBASE(mF4, TTAllpass2b)->calculateValue(temp2,			outputPath1,	channel);
}


TTErr TTHalfbandLinear33::calculateLowpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 outputFromPath0 = 0;
	TTFloat64 outputFromPath1;
	
	filterKernel(x, outputFromPath0, outputFromPath1, channel);
	y = (outputFromPath0 + outputFromPath1) * 0.5;
	return kTTErrNone;
}


TTErr TTHalfbandLinear33::calculateHighpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 outputFromPath0;
	TTFloat64 outputFromPath1;
	
	filterKernel(x, outputFromPath0, outputFromPath1, channel);
	y = (outputFromPath0 - outputFromPath1) * 0.5;
	return kTTErrNone;
}


TTErr TTHalfbandLinear33::processLowpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateLowpass);
}


TTErr TTHalfbandLinear33::processHighpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateHighpass);
}

