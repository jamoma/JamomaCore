/* 
 * 33-Pole Halfband filter built up from a 2-path allpass structure
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
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
	TTUInt16	initialMaxNumChannels = arguments;

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

