/* 
 * 5th-order lowpass/highpass filter built up from a 2-path allpass structure
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMirror5.h"

#define thisTTClass			TTMirror5
#define thisTTClassName		"mirror.5"
#define thisTTClassTags		"dspFilterLib, audio, processor, filter, lowpass, highpass"

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mF0(NULL),
	mF1(NULL),
	mF2(NULL)
{
	TTUInt16	initialMaxNumChannels = arguments;

	addAttributeWithSetter(Mode, kTypeSymbol);		
	addAttributeWithSetter(Frequency, kTypeFloat64);
	addMessage(clear);
	addUpdates(MaxNumChannels);

	TTObjectBaseInstantiate(TT("allpass.2a"), (TTObjectBasePtr*)&mF0, initialMaxNumChannels);
	TTObjectBaseInstantiate(TT("allpass.1a"), (TTObjectBasePtr*)&mF1, initialMaxNumChannels);
	TTObjectBaseInstantiate(TT("allpass.2a"), (TTObjectBasePtr*)&mF2, initialMaxNumChannels);

	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
	setAttributeValue(TT("mode"),			TT("lowpass"));
	setAttributeValue(TT("frequency"),		sr/4.0);
}


TTMirror5::~TTMirror5()
{
	TTObjectBaseRelease((TTObjectBasePtr*)&mF0);
	TTObjectBaseRelease((TTObjectBasePtr*)&mF1);
	TTObjectBaseRelease((TTObjectBasePtr*)&mF2);
}


TTErr TTMirror5::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mF0->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mF1->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mF2->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	clear();
	return kTTErrNone;
}


TTErr TTMirror5::clear()
{
	mF0->sendMessage(kTTSym_clear);
	mF1->sendMessage(kTTSym_clear);
	mF2->sendMessage(kTTSym_clear);
	return kTTErrNone;
}


TTErr TTMirror5::setMode(const TTValue& newValue)
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


TTErr TTMirror5::setFrequency(const TTValue& newValue)
{
	mFrequency = newValue;
	
	const TTFloat64	alpha_0 = 0.1413486;	// alpha coefficients come from the halfband filter, which we are transforming
	const TTFloat64	alpha_1 = 0.5899948;
	const TTFloat64	omega_b = TTClip<TTFloat64>(sr/2.0 - mFrequency, 0.0, sr/2.0);
	const TTFloat64	omega_s = sr;
	const TTFloat64	theta_b = (omega_b / omega_s) * kTTTwoPi;
	const TTFloat64	b = (1 - tan(theta_b / 2.0)) / (1 + tan(theta_b / 2.0));
	TTFloat64		c_1 = ((2.0 * b) + (2.0 * b * alpha_0)) / (1 + alpha_0 * (b * b));
	TTFloat64		c_2 = ((b*b) + alpha_0) / (1 + alpha_0 * (b*b));
	
	mF0->setAttributeValue(TT("c1"), c_1);
	mF0->setAttributeValue(TT("c2"), c_2);

	c_1 = ((2.0 * b) + (2.0 * b * alpha_1)) / (1 + alpha_1 * (b * b));
	c_2 = ((b*b) + alpha_1) / (1 + alpha_1 * (b*b));
	mF1->setAttributeValue(TT("alpha"), b);
	mF2->setAttributeValue(TT("c1"), c_1);
	mF2->setAttributeValue(TT("c2"), c_2);

	return kTTErrNone;
}


inline void TTMirror5::filterKernel(const TTFloat64& input, TTFloat64& outputPath0, TTFloat64& outputPath1, TTPtrSizedInt channel)
{
	TTFloat64 temp;
	
	mF0->calculateValue(input,	outputPath0,	channel);
	
	mF1->calculateValue(input,	temp,			channel);
	mF2->calculateValue(temp,	outputPath1,	channel);
}


TTErr TTMirror5::calculateLowpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 outputFromPath0;
	TTFloat64 outputFromPath1;
	
	filterKernel(x, outputFromPath0, outputFromPath1, channel);
	y = (outputFromPath0 + outputFromPath1) * 0.5;
	return kTTErrNone;
}


TTErr TTMirror5::calculateHighpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 outputFromPath0;
	TTFloat64 outputFromPath1;
	
	filterKernel(x, outputFromPath0, outputFromPath1, channel);
	y = (outputFromPath0 - outputFromPath1) * 0.5;
	return kTTErrNone;
}


TTErr TTMirror5::processLowpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateLowpass);
}


TTErr TTMirror5::processHighpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateHighpass);
}

