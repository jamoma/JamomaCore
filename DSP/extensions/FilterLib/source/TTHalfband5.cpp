/* 
 * 5-Pole Halfband filter built up from a 2-path allpass structure
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTHalfband5.h"

#define thisTTClass			TTHalfband5
#define thisTTClassName		"halfband.5"
#define thisTTClassTags		"dspFilterLib, audio, processor, filter, lowpass, highpass"

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mF0(NULL),
	mF1(NULL),
	mDelay(NULL),
	mR0(NULL),
	mR1(NULL)
{
	TTUInt16	initialMaxNumChannels = arguments;

	addAttributeWithSetter(Mode, kTypeSymbol);		
	addMessage(clear);
	addUpdates(MaxNumChannels);

	TTObjectBaseInstantiate(TT("allpass.1b"), (TTObjectBasePtr*)&mF0, initialMaxNumChannels);
	TTObjectBaseInstantiate(TT("allpass.1b"), (TTObjectBasePtr*)&mF1, initialMaxNumChannels);
	TTObjectBaseInstantiate(TT("allpass.1a"), (TTObjectBasePtr*)&mDelay, initialMaxNumChannels);
	TTObjectBaseInstantiate(TT("allpass.1a"), (TTObjectBasePtr*)&mR0, initialMaxNumChannels);
	TTObjectBaseInstantiate(TT("allpass.1a"), (TTObjectBasePtr*)&mR1, initialMaxNumChannels);

	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
	setAttributeValue(TT("mode"), TT("lowpass"));
		
	// for the simple 1-sample delay, we set alpha (the feedback coefficient) to zero
	mDelay->setAttributeValue(TT("alpha"), 0.0);
	
	// -60 db attenuation, stopband starts at fs * 0.37
	//mF0->setAttributeValue(TT("alpha"), 0.1413486);
	//mF1->setAttributeValue(TT("alpha"), 0.5899948);
	//mR0->setAttributeValue(TT("alpha"), 0.1413486);
	//mR1->setAttributeValue(TT("alpha"), 0.5899948);
	
	// -83 db attenuation, stopband starts at f_s * 0.42
	mF0->setAttributeValue(TT("alpha"), 0.117266261862726);
	mF1->setAttributeValue(TT("alpha"), 0.549470222366184);
	mR0->setAttributeValue(TT("alpha"), 0.117266261862726);
	mR1->setAttributeValue(TT("alpha"), 0.549470222366184);
}


TTHalfband5::~TTHalfband5()
{
	TTObjectBaseRelease((TTObjectBasePtr*)&mF0);
	TTObjectBaseRelease((TTObjectBasePtr*)&mF1);
	TTObjectBaseRelease((TTObjectBasePtr*)&mDelay);
	TTObjectBaseRelease((TTObjectBasePtr*)&mR0);
	TTObjectBaseRelease((TTObjectBasePtr*)&mR1);
}


TTErr TTHalfband5::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mRSwitch.resize(mMaxNumChannels);
	mRSwitch.assign(mMaxNumChannels, 0.0);

	mY0.resize(mMaxNumChannels);
	mY0.assign(mMaxNumChannels, 0.0);
	mY1.resize(mMaxNumChannels);
	mY1.assign(mMaxNumChannels, 0.0);

	// update internal filters
	mF0->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mF1->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mR0->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mR1->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mDelay->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);

	clear();
	return kTTErrNone;
}


TTErr TTHalfband5::clear()
{
	mF0->sendMessage(kTTSym_clear);
	mF1->sendMessage(kTTSym_clear);
	mR0->sendMessage(kTTSym_clear);
	mR1->sendMessage(kTTSym_clear);
	mDelay->sendMessage(kTTSym_clear);
	return kTTErrNone;
}


TTErr TTHalfband5::setMode(const TTValue& newValue)
{
	TTSymbol newMode = newValue;
	
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


TTErr TTHalfband5::calculateLowpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 outputFromTopPath;
	TTFloat64 outputFromBottomPathDelay;
	TTFloat64 outputFromBottomPath;
	
	mF0->calculateValue(x, outputFromTopPath, channel);
	
	mDelay->calculateValue(x, outputFromBottomPathDelay, channel);
	mF1->calculateValue(outputFromBottomPathDelay, outputFromBottomPath, channel);

	y = (outputFromTopPath + outputFromBottomPath) * 0.5;
	return kTTErrNone;
}


TTErr TTHalfband5::calculateHighpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 outputFromTopPath;
	TTFloat64 outputFromBottomPathDelay;
	TTFloat64 outputFromBottomPath;
	
	mF0->calculateValue(x, outputFromTopPath, channel);
	
	mDelay->calculateValue(x, outputFromBottomPathDelay, channel);
	mF1->calculateValue(outputFromBottomPathDelay, outputFromBottomPath, channel);
	
	// the only difference between the lowpass and highpass is the sign of the bottom path in this calculation
	y = (outputFromTopPath - outputFromBottomPath) * 0.5;
	return kTTErrNone;
}


// for every second input sample, we calculate an output sample
TTErr TTHalfband5::calculateDownsample(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
#define VERSION_WITH_DELAY_FACTORED_OUT 1
#if VERSION_WITH_DELAY_FACTORED_OUT
	if (mRSwitch[channel]) {
		TTFloat64 temp;
		
		mR0->calculateValue(x, temp, channel);
		y = (temp + mY1[channel]) * 0.5;
		mRSwitch[channel] = 0;
	}
	else {
		mR1->calculateValue(x, mY1[channel], channel);
		mRSwitch[channel] = 1;
	}
#else
	// This version has the delay in place, but tests in Max/AudioGraph show that both
	// versions of this algorithm work equally well, as stated by the F.H. book
	// (and unlike my findings for the upsampling algorithm which requires the delay).

	mDelay->calculateValue(x, mY1[channel], channel);
	if (mRSwitch[channel]) {
		TTFloat64 outputFromTopPath;
		TTFloat64 outputFromBottomPath;
		
		mR0->calculateValue(x, outputFromTopPath, channel);
		mR1->calculateValue(mY1[channel], outputFromBottomPath, channel);
		mY0[channel] = (outputFromTopPath + outputFromBottomPath) * 0.5;
		
		mRSwitch[channel] = 0;
	}
	else
		mRSwitch[channel] = 1;
	
	y = mY0[channel];
#endif	
	return kTTErrNone;
}


// for every second output sample, we calculate from a given input sample
TTErr TTHalfband5::calculateUpsample(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 temp;
	
	if (mRSwitch[channel]) {
		mR0->calculateValue(x, mY0[channel], channel);
		mR1->calculateValue(x, mY1[channel], channel);	
		mRSwitch[channel] = 0;
	}
	else {
		mRSwitch[channel] = 1;
	}
	
	mDelay->calculateValue(mY1[channel], temp, channel);
	y = (mY0[channel] + temp) * 0.5;
	
	return kTTErrNone;
}


TTErr TTHalfband5::processLowpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateLowpass);
}


TTErr TTHalfband5::processHighpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateHighpass);
}


TTErr TTHalfband5::processDownsample(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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


TTErr TTHalfband5::processUpsample(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
		out.setSampleRate(in.getSampleRate() * 2);
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

