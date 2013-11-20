/* 
 * 10th-order bandpass/notch filter built up from a 2-path allpass structure
 * Transformed from 5th-order 'Mirror' lowpass filter
 *
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMirrorBandpass10.h"

#define thisTTClass			TTMirrorBandpass10
#define thisTTClassName		"mirror.bandpass.10"
#define thisTTClassTags		"dspFilterLib, audio, processor, filter, bandpass, notch"

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mF0(NULL),
	mF1(NULL),
	mF2(NULL),
	mBandwidth(1000.0)
{
	TTUInt16	initialMaxNumChannels = arguments;

	addAttributeWithSetter(Mode, kTypeSymbol);		
	addAttributeWithSetter(Frequency, kTypeFloat64);
	addAttributeWithSetter(Bandwidth, kTypeFloat64);
	addAttributeWithSetter(Q, kTypeFloat64);
	addMessage(clear);
	addUpdates(MaxNumChannels);

	TTObjectBaseInstantiate(TT("allpass.4a"), (TTObjectBasePtr*)&mF0, initialMaxNumChannels);
	TTObjectBaseInstantiate(TT("allpass.2c"), (TTObjectBasePtr*)&mF1, initialMaxNumChannels);
	TTObjectBaseInstantiate(TT("allpass.4a"), (TTObjectBasePtr*)&mF2, initialMaxNumChannels);

	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
	setAttributeValue(TT("mode"),			TT("bandpass"));
	setAttributeValue(TT("frequency"),		sr/4.0);
	setAttributeValue(TT("q"),				1.0);
}


TTMirrorBandpass10::~TTMirrorBandpass10()
{
	TTObjectBaseRelease((TTObjectBasePtr*)&mF0);
	TTObjectBaseRelease((TTObjectBasePtr*)&mF1);
	TTObjectBaseRelease((TTObjectBasePtr*)&mF2);
}


TTErr TTMirrorBandpass10::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mF0->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mF1->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mF2->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	clear();
	return kTTErrNone;
}


TTErr TTMirrorBandpass10::clear()
{
	mF0->sendMessage(kTTSym_clear);
	mF1->sendMessage(kTTSym_clear);
	mF2->sendMessage(kTTSym_clear);
	return kTTErrNone;
}


TTErr TTMirrorBandpass10::setMode(const TTValue& newValue)
{
	TTSymbol newMode = newValue;
	
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


TTErr TTMirrorBandpass10::calculateCoefficients(void)
{
	const TTFloat64	f_s = sr;
	const TTFloat64	f_c = TTClip<TTFloat64>(mFrequency, 0.0, sr/2.0);
	const TTFloat64 f_bw = mBandwidth;
	const TTFloat64	theta_fc = kTTTwoPi * (f_c/f_s);
	const TTFloat64	theta_bw = kTTTwoPi * (f_bw/f_s);
	const TTFloat64	b = (1 - tan(theta_bw / 2.0)) / (1 + tan(theta_bw / 2.0));
	const TTFloat64	c = cos(theta_fc);
	TTFloat64		alpha;
	TTFloat64		d_0;
	TTFloat64		d_1;
	TTFloat64		d_2;
	TTFloat64		d_3;
	TTFloat64		d_4;
	TTFloat64		e_1;
	TTFloat64		e_2;
	
	// Path-0
	
	alpha = 0.141348681136137;							// these values for alpha give us a -60dB stopband
	d_0 = 1 + alpha*b*b;
	d_1 = (-2*c*(1+b)*(1+alpha*b))				/  d_0;	
	d_2 = ((1+alpha)*(c*c*(1+b*b)+2*b*(1+c*c)))	/  d_0;	// This equation is wrong in the F.H. Book
	d_3 = (-2*c*(1+b)*(alpha + b))				/  d_0;	// This equation is wrong in the Safari-online version of the F.H. Book
	d_4 = (alpha + b*b)							/  d_0;
	
	mF0->setAttributeValue(TT("d1"), d_1);
	mF0->setAttributeValue(TT("d2"), d_2);
	mF0->setAttributeValue(TT("d3"), d_3);
	mF0->setAttributeValue(TT("d4"), d_4);
	
	// Path-1
	
	e_1 = -c - c*b;
	e_2 = b;

	mF1->setAttributeValue(TT("e1"), e_1);
	mF1->setAttributeValue(TT("e2"), e_2);
	
	alpha = 0.589994872274064;							// these values for alpha give us a -60dB stopband
	d_0 = 1 + alpha*b*b;
	d_1 = (-2*c*(1+b)*(1+alpha*b))				/  d_0;
	d_2 = ((1+alpha)*(c*c*(1+b*b)+2*b*(1+c*c)))	/  d_0;	// This equation is wrong in the F.H. Book
	d_3 = (-2*c*(1+b)*(alpha + b))				/  d_0;	// This equation is wrong in the Safari-online version of the F.H. Book
	d_4 = (alpha + b*b)							/  d_0;
	
	mF2->setAttributeValue(TT("d1"), d_1);
	mF2->setAttributeValue(TT("d2"), d_2);
	mF2->setAttributeValue(TT("d3"), d_3);
	mF2->setAttributeValue(TT("d4"), d_4);
	
	return kTTErrNone;

}


TTErr TTMirrorBandpass10::setFrequency(const TTValue& newValue)
{
	mFrequency = newValue;
	if (mBandwidthSetWithQ)
		return setQ(mQ);
	else
		return calculateCoefficients();
}


// NOTE: if we also wanted to set bandwidth in octaves, 
// check this article: http://www.rane.com/note170.html
//
// Q = (sqrt(2^n) * f_1) / (2^n * f_1 - f_1) , n = number of octaves
//
// the reverse operation is detailed in the article

TTErr TTMirrorBandpass10::setBandwidth(const TTValue& newValue)
{
	mBandwidth = TTClip<TTFloat64>(newValue, 0.0, sr/2.0);
	mQ = mFrequency / mBandwidth;
	mBandwidthSetWithQ = NO;
	return calculateCoefficients();
}


TTErr TTMirrorBandpass10::setQ(const TTValue& newValue)
{
	mQ = newValue;
	TTLimitMin(mQ, 0.0);
	mBandwidth = mFrequency / mQ;
	mBandwidthSetWithQ = YES;
	return calculateCoefficients();
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

