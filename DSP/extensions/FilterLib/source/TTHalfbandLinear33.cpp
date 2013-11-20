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
	mP0Delay(NULL),
	mP1Delay(NULL),
	mF0(NULL),
	mF1(NULL),
	mF2(NULL),
	mF3(NULL),
	mF4(NULL)
{
	TTUInt16	initialMaxNumChannels = arguments;

	addAttributeWithSetter(Mode, kTypeSymbol);		
	addMessage(clear);
	addUpdates(MaxNumChannels);

	TTObjectBaseInstantiate(TT("delay"), (TTObjectBasePtr*)&mP0Delay, initialMaxNumChannels);
	
	TTObjectBaseInstantiate(TT("allpass.1a"), (TTObjectBasePtr*)&mP1Delay, initialMaxNumChannels);
	TTObjectBaseInstantiate(TT("allpass.1b"), (TTObjectBasePtr*)&mF0, initialMaxNumChannels);
	TTObjectBaseInstantiate(TT("allpass.1b"), (TTObjectBasePtr*)&mF1, initialMaxNumChannels);
	TTObjectBaseInstantiate(TT("allpass.2b"), (TTObjectBasePtr*)&mF2, initialMaxNumChannels);
	TTObjectBaseInstantiate(TT("allpass.2b"), (TTObjectBasePtr*)&mF3, initialMaxNumChannels);
	TTObjectBaseInstantiate(TT("allpass.2b"), (TTObjectBasePtr*)&mF4, initialMaxNumChannels);

	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
	setAttributeValue(TT("mode"), TT("lowpass"));
	
	mP0Delay->setAttributeValue(TT("delayMaxInSamples"), 16);
	mP0Delay->setAttributeValue(TT("delayInSamples"), 16);
	
	mP1Delay->setAttributeValue(TT("alpha"), 0.0);
	mF0->setAttributeValue(TT("alpha"), 0.832280776);
	mF1->setAttributeValue(TT("alpha"), -0.421241137);
	mF2->setAttributeValue(TT("c1"), 0.67623706);
	mF2->setAttributeValue(TT("c2"), 0.23192313);
	mF3->setAttributeValue(TT("c1"), 0.00359228);
	mF3->setAttributeValue(TT("c2"), 0.19159423);
	mF4->setAttributeValue(TT("c1"), -0.59689082);
	mF4->setAttributeValue(TT("c2"), 0.18016931);
}


TTHalfbandLinear33::~TTHalfbandLinear33()
{
	TTObjectBaseRelease((TTObjectBasePtr*)&mP0Delay);

	TTObjectBaseRelease((TTObjectBasePtr*)&mP1Delay);
	TTObjectBaseRelease((TTObjectBasePtr*)&mF0);
	TTObjectBaseRelease((TTObjectBasePtr*)&mF1);
	TTObjectBaseRelease((TTObjectBasePtr*)&mF2);
	TTObjectBaseRelease((TTObjectBasePtr*)&mF3);
	TTObjectBaseRelease((TTObjectBasePtr*)&mF4);
}


TTErr TTHalfbandLinear33::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	// update internal filters
	mF0->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mF1->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mF2->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mF3->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mF4->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mP0Delay->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mP1Delay->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);

	clear();
	return kTTErrNone;
}


TTErr TTHalfbandLinear33::clear()
{
	mF0->sendMessage(kTTSym_clear);
	mF1->sendMessage(kTTSym_clear);
	mF2->sendMessage(kTTSym_clear);
	mF3->sendMessage(kTTSym_clear);
	mF4->sendMessage(kTTSym_clear);
	mP0Delay->sendMessage(kTTSym_clear);
	mP1Delay->sendMessage(kTTSym_clear);
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
	
	mP0Delay->calculateNoInterpolation(input, outputPath0, channel);

	mP1Delay->calculateValue(input,		temp2,			channel);
	mF0->calculateValue(temp2,			temp1,			channel);
	mF1->calculateValue(temp1,			temp2,			channel);
	mF2->calculateValue(temp2,			temp1,			channel);
	mF3->calculateValue(temp1,			temp2,			channel);
	mF4->calculateValue(temp2,			outputPath1,	channel);
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

