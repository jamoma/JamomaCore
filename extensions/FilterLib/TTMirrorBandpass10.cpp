/* 
 * 10th-order bandpass/notch filter built up from a 2-path allpass structure
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMirrorBandpass10.h"

#define thisTTClass			TTMirrorBandpass10
#define thisTTClassName		"mirror.bandpass.10"
#define thisTTClassTags		"audio, processor, filter, bandpass, notch"

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mF0(NULL),
	mF1(NULL),
	mF2(NULL)
{
	TTUInt16	initialMaxNumChannels = arguments;
	TTErr		err;

	addAttributeWithSetter(Mode, kTypeSymbol);		
	addAttributeWithSetter(Frequency, kTypeFloat64);
	addMessage(Clear);
	addMessageWithArgument(updateMaxNumChannels);

	err = TTObjectInstantiate(TT("allpass.4a"), (TTObjectPtr*)&mF0, initialMaxNumChannels);
	err = TTObjectInstantiate(TT("allpass.2c"), (TTObjectPtr*)&mF1, initialMaxNumChannels);
	err = TTObjectInstantiate(TT("allpass.4a"), (TTObjectPtr*)&mF2, initialMaxNumChannels);

	setAttributeValue(TT("MaxNumChannels"),	initialMaxNumChannels);
	setAttributeValue(TT("Mode"),			TT("bandpass"));
	setAttributeValue(TT("Frequency"),		sr/4.0);
}


TTMirrorBandpass10::~TTMirrorBandpass10()
{
	TTObjectRelease((TTObjectPtr*)&mF0);
	TTObjectRelease((TTObjectPtr*)&mF1);
	TTObjectRelease((TTObjectPtr*)&mF2);
}


TTErr TTMirrorBandpass10::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	// TODO: update internal filters
	Clear();
	return kTTErrNone;
}


TTErr TTMirrorBandpass10::Clear()
{
	// TODO: update internal filters
	return kTTErrNone;
}


TTErr TTMirrorBandpass10::setMode(const TTValue& newValue)
{
	TTSymbolPtr newMode = newValue;
	
	if (newMode == TT("notch")) {
		mMode = TT("notch");
		setCalculateMethod(calculateNotch);
		setProcessMethod(processNotch);
	}
	else { // bandpass
		mMode = TT("bandpass");
		setCalculateMethod(calculateBandpass);
		setProcessMethod(processBandpass);
	}
	return kTTErrNone;
}


TTErr TTMirrorBandpass10::setFrequency(const TTValue& newValue)
{
	mFrequency = newValue;
	
	const TTFloat64	f_c = TTClip<TTFloat64>(sr/2.0 - mFrequency, 0.0, sr/2.0);
	//const TTFloat64	f_c = TTClip<TTFloat64>(mFrequency, 0.0, sr/2.0);
	const TTFloat64	f_s = sr;
	const TTFloat64	theta = kTTTwoPi * (f_c/f_s);
	const TTFloat64	b = (1 - tan(theta / 2.0)) / (1 + tan(theta / 2.0));
	const TTFloat64	c = cos(theta);
	TTFloat64		alpha;
	TTFloat64		d_1;
	TTFloat64		d_2;
	TTFloat64		d_3;
	TTFloat64		d_4;
	TTFloat64		e_1;
	TTFloat64		e_2;
	
	alpha = 0.1413486;
	d_1 = (-2*c - 2*alpha*b*c - 2*b*c - 2*alpha*b*b*c)												/  (1 + alpha*b*b);
	d_2 = (c*c + 2*b*c*c + b*b*c*c + 2*b + alpha*c*c + 2*alpha*b*c*c + alpha*b*b*c*c + alpha*2*b)	/  (1 + alpha*b*b);
	d_3 = (-2*alpha*c - 2*b*c - 2*alpha*b*c - 2*b*b*c)												/  (1 + alpha*b*b);
	d_4 = (alpha + b*b)																				/  (1 + alpha*b*b);
	
	mF0->setAttributeValue(TT("D1"), d_1);
	mF0->setAttributeValue(TT("D2"), d_2);
	mF0->setAttributeValue(TT("D3"), d_3);
	mF0->setAttributeValue(TT("D4"), d_4);

	alpha = 0.5899948;
	d_1 = (-2*c - 2*alpha*b*c - 2*b*c - 2*alpha*b*b*c)												/  (1 + alpha*b*b);
	d_2 = (c*c + 2*b*c*c + b*b*c*c + 2*b + alpha*c*c + 2*alpha*b*c*c + alpha*b*b*c*c + alpha*2*b)	/  (1 + alpha*b*b);
	d_3 = (-2*alpha*c - 2*b*c - 2*alpha*b*c - 2*b*b*c)												/  (1 + alpha*b*b);
	d_4 = (alpha + b*b)																				/  (1 + alpha*b*b);
	e_1 = c - c*b;
	e_2 = b;
	
	mF1->setAttributeValue(TT("E1"), e_1);
	mF1->setAttributeValue(TT("E2"), e_2);
	
	mF2->setAttributeValue(TT("D1"), d_1);
	mF2->setAttributeValue(TT("D2"), d_2);
	mF2->setAttributeValue(TT("D3"), d_3);
	mF2->setAttributeValue(TT("D4"), d_4);
	
	return kTTErrNone;
}


inline void TTMirrorBandpass10::filterKernel(const TTFloat64& input, TTFloat64& outputPath0, TTFloat64& outputPath1, TTPtrSizedInt channel)
{
	TTFloat64 temp;
	
	mF0->calculateValue(input,	outputPath0,	channel);
	
	mF1->calculateValue(input,	temp,			channel);
	mF2->calculateValue(temp,	outputPath1,	channel);
}


TTErr TTMirrorBandpass10::calculateBandpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 outputFromPath0;
	TTFloat64 outputFromPath1;
	
	filterKernel(x, outputFromPath0, outputFromPath1, channel);
	y = (outputFromPath0 + outputFromPath1) * 0.5;
	return kTTErrNone;
}


TTErr TTMirrorBandpass10::calculateNotch(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 outputFromPath0;
	TTFloat64 outputFromPath1;
	
	filterKernel(x, outputFromPath0, outputFromPath1, channel);
	y = (outputFromPath0 - outputFromPath1) * 0.5;
	return kTTErrNone;
}


TTErr TTMirrorBandpass10::processBandpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateBandpass);
}


TTErr TTMirrorBandpass10::processNotch(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateNotch);
}

