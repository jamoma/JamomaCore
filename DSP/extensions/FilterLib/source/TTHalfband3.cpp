/* 
 * 1st-order up/down-sampling filter built up from a 2-path allpass structure
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTHalfband3.h"

#define thisTTClass			TTHalfband3
#define thisTTClassName		"halfband.3"
#define thisTTClassTags		"dspFilterLib, audio, processor, filter, lowpass, highpass, resampling"

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mF0(NULL),
	mDelay(NULL),
	mR0(NULL)	
{
	TTUInt16	initialMaxNumChannels = arguments;

	addAttributeWithSetter(Mode, kTypeSymbol);		
	addUpdates(MaxNumChannels);

	TTObjectBaseInstantiate(TT("allpass.1b"), (TTObjectBasePtr*)&mF0, initialMaxNumChannels);
	TTObjectBaseInstantiate(TT("allpass.1a"), (TTObjectBasePtr*)&mR0, initialMaxNumChannels);
	TTObjectBaseInstantiate(TT("allpass.1a"), (TTObjectBasePtr*)&mDelay, initialMaxNumChannels);

	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
	setAttributeValue(TT("mode"), TT("lowpass"));
	
	// this coefficient gives w0 (stopband edge) at 0.48 * F_nyquist, with an attentuation of -85dB
	mF0->setAttributeValue(TT("alpha"), 0.334654061320571);
	mR0->setAttributeValue(TT("alpha"), 0.334654061320571);
	
	// this coefficient gives w0 (stopband edge) at 0.45 * F_nyquist, with an attentuation of -60dB
	//mF0->setAttributeValue(TT("alpha"), 0.341748648258737);
	//mR0->setAttributeValue(TT("alpha"), 0.341748648258737);
	
	mDelay->setAttributeValue(TT("alpha"), 0.0);
}


TTHalfband3::~TTHalfband3()
{
	TTObjectBaseRelease((TTObjectBasePtr*)&mF0);
	TTObjectBaseRelease((TTObjectBasePtr*)&mR0);
	TTObjectBaseRelease((TTObjectBasePtr*)&mDelay);
}


TTErr TTHalfband3::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	// update internal filters
	mF0->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mR0->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	
	// update ourselves
	mX1.resize(mMaxNumChannels);
	mX1.assign(mMaxNumChannels, 0.0);

	return kTTErrNone;
}


TTErr TTHalfband3::setMode(const TTValue& newValue)
{
	TTSymbol newMode = newValue;

	if (newMode == mMode)
		return kTTErrNone;
	
	if (newMode == TT("upsample")) {
		mMode = TT("upsample");
		setCalculateMethod(calculateUpsample);
		setProcessMethod(processUpsample);
	}
	else if (newMode == TT("downsample")) { // downsample
		mMode = TT("downsample");
		setCalculateMethod(calculateDownsample);
		setProcessMethod(processDownsample);
	}
	else if (newMode == TT("highpass")) {
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


TTErr TTHalfband3::calculateLowpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 outputFromTopPath;
	TTFloat64 outputFromBottomPathDelay;
	
	mF0->calculateValue(x, outputFromTopPath, channel);
	mDelay->calculateValue(x, outputFromBottomPathDelay, channel);
	y = (outputFromTopPath + outputFromBottomPathDelay) * 0.5;
	return kTTErrNone;
}


TTErr TTHalfband3::calculateHighpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 outputFromTopPath;
	TTFloat64 outputFromBottomPathDelay;
	
	mF0->calculateValue(x, outputFromTopPath, channel);
	mDelay->calculateValue(x, outputFromBottomPathDelay, channel);
	y = (outputFromTopPath - outputFromBottomPathDelay) * 0.5;
	return kTTErrNone;
}


// for every second input sample, we calculate an output sample
// see TTHalfband5 for more details
TTErr TTHalfband3::calculateDownsample(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	if (mX1[channel]) {
		TTFloat64 temp;

		mR0->calculateValue(x, temp, channel);
		y = (temp + mX1[channel]) * 0.5;
		mX1[channel] = 0;
	}
	else
		mX1[channel] = x;
	
	return kTTErrNone;
}


// for every second output sample, we calculate from a given input sample
TTErr TTHalfband3::calculateUpsample(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 temp;
	
	mDelay->calculateValue(x, temp, channel);
	if (mX1[channel]) {
		y = (temp + mX1[channel]) * 0.5;
		mX1[channel] = 0;
	}
	else {
		mR0->calculateValue(x, mX1[channel], channel);
		y = (temp + mX1[channel]) * 0.5;
	}
	return kTTErrNone;
}



TTErr TTHalfband3::processLowpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateLowpass);
}


TTErr TTHalfband3::processHighpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateHighpass);
}


TTErr TTHalfband3::processDownsample(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTPtrSizedInt	channel;
	TTUInt16		targetVectorSize = in.getVectorSizeAsInt() / 2;
	//TTErr			err;
	
	out.changeVectorSize(targetVectorSize);
	out.setSampleRate(in.getSampleRate() / 2);
	for (channel=0; channel<numchannels; channel++) {
		TTUInt16 n = targetVectorSize;

		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel];

		while (n--) {
			calculateDownsample(*inSample, *outSample, channel);
			inSample++;
			calculateDownsample(*inSample, *outSample, channel);
			inSample++;
			outSample++;
		}
	}
	return kTTErrNone;
}


TTErr TTHalfband3::processUpsample(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTPtrSizedInt	channel;
	TTUInt16		targetVectorSize = in.getVectorSizeAsInt() * 2;
	TTErr			err;
	
	err = out.changeVectorSize(targetVectorSize);
	if (!err) {
		out.setSampleRate(in.getSampleRate() / 2);
		for (channel=0; channel<numchannels; channel++) {
			TTUInt16 n = in.getVectorSizeAsInt();
			
			inSample = in.mSampleVectors[channel];
			outSample = out.mSampleVectors[channel];
			
			while (n--) {
				calculateUpsample(*inSample, *outSample, channel);
				outSample++;
				calculateUpsample(*inSample, *outSample, channel);
				outSample++;
				inSample++;
			}
		}
	}
	return kTTErrNone;
}

