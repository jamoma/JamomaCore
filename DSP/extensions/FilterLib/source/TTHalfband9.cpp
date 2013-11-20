/* 
 * 9-Pole Halfband filter built up from a 2-path allpass structure
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTHalfband9.h"

#define thisTTClass			TTHalfband9
#define thisTTClassName		"halfband.9"
#define thisTTClassTags		"dspFilterLib, audio, processor, filter, lowpass, highpass"

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mF0(NULL),
	mF2(NULL),
	mR0(NULL),
	mR2(NULL),
	mF1(NULL),
	mF3(NULL),
	mR1(NULL),
	mR3(NULL),
	mDelay(NULL)
{
	TTUInt16	initialMaxNumChannels = arguments;

	addAttributeWithSetter(Mode, kTypeSymbol);		
	addMessage(clear);
	addUpdates(MaxNumChannels);

	TTObjectBaseInstantiate(TT("allpass.1b"), (TTObjectBasePtr*)&mF0, initialMaxNumChannels);
	TTObjectBaseInstantiate(TT("allpass.1b"), (TTObjectBasePtr*)&mF1, initialMaxNumChannels);
	TTObjectBaseInstantiate(TT("allpass.1b"), (TTObjectBasePtr*)&mF2, initialMaxNumChannels);
	TTObjectBaseInstantiate(TT("allpass.1b"), (TTObjectBasePtr*)&mF3, initialMaxNumChannels);
	TTObjectBaseInstantiate(TT("allpass.1a"), (TTObjectBasePtr*)&mDelay, initialMaxNumChannels);

	TTObjectBaseInstantiate(TT("allpass.1a"), (TTObjectBasePtr*)&mR0, initialMaxNumChannels);
	TTObjectBaseInstantiate(TT("allpass.1a"), (TTObjectBasePtr*)&mR1, initialMaxNumChannels);
	TTObjectBaseInstantiate(TT("allpass.1a"), (TTObjectBasePtr*)&mR2, initialMaxNumChannels);
	TTObjectBaseInstantiate(TT("allpass.1a"), (TTObjectBasePtr*)&mR3, initialMaxNumChannels);
	
	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
	setAttributeValue(TT("mode"), TT("lowpass"));
		
	// for the simple 1-sample delay, we set alpha (the feedback coefficient) to zero
	mDelay->setAttributeValue(TT("alpha"), 0.0);
	
	// stopband edge (-60db) at Fs*0.284.
	// mF0->setAttributeValue(TT("alpha"), 0.101467517);
	// mF2->setAttributeValue(TT("alpha"), 0.612422841);
	// mF1->setAttributeValue(TT("alpha"), 0.342095596);
	// mF3->setAttributeValue(TT("alpha"), 0.867647439);
	
	// These yield a -113 dB stopband attenuation, with a stopband edge (w_0) at f_s * 0.37
	mF0->setAttributeValue(TT("alpha"), 0.043646929608759);
	mR0->setAttributeValue(TT("alpha"), 0.043646929608759);
	mF2->setAttributeValue(TT("alpha"), 0.399125646691078);
	mR2->setAttributeValue(TT("alpha"), 0.399125646691078);
	mF1->setAttributeValue(TT("alpha"), 0.174628080915462);
	mR1->setAttributeValue(TT("alpha"), 0.174628080915462);
	mF3->setAttributeValue(TT("alpha"), 0.749510679417446);
	mR3->setAttributeValue(TT("alpha"), 0.749510679417446);
}


TTHalfband9::~TTHalfband9()
{
	TTObjectBaseRelease((TTObjectBasePtr*)&mF0);
	TTObjectBaseRelease((TTObjectBasePtr*)&mF1);
	TTObjectBaseRelease((TTObjectBasePtr*)&mF2);
	TTObjectBaseRelease((TTObjectBasePtr*)&mF3);
	TTObjectBaseRelease((TTObjectBasePtr*)&mDelay);

	TTObjectBaseRelease((TTObjectBasePtr*)&mR0);
	TTObjectBaseRelease((TTObjectBasePtr*)&mR1);
	TTObjectBaseRelease((TTObjectBasePtr*)&mR2);
	TTObjectBaseRelease((TTObjectBasePtr*)&mR3);
}


TTErr TTHalfband9::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	// update internal filters
	mF0->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mF1->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mF2->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mF3->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mR0->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mR1->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mR2->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mR3->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	mDelay->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	
	mRSwitch.resize(mMaxNumChannels);
	mRSwitch.assign(mMaxNumChannels, 0.0);
	
	mY0.resize(mMaxNumChannels);
	mY0.assign(mMaxNumChannels, 0.0);
	mY1.resize(mMaxNumChannels);
	mY1.assign(mMaxNumChannels, 0.0);
	
	clear();
	return kTTErrNone;
}


TTErr TTHalfband9::clear()
{
	mF0->sendMessage(kTTSym_clear);
	mF1->sendMessage(kTTSym_clear);
	mF2->sendMessage(kTTSym_clear);
	mF3->sendMessage(kTTSym_clear);
	mR0->sendMessage(kTTSym_clear);
	mR1->sendMessage(kTTSym_clear);
	mR2->sendMessage(kTTSym_clear);
	mR3->sendMessage(kTTSym_clear);
	mDelay->sendMessage(kTTSym_clear);
	return kTTErrNone;
}


TTErr TTHalfband9::setMode(const TTValue& newValue)
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


inline void TTHalfband9::filterKernel(const TTFloat64& input, TTFloat64& outputPath0, TTFloat64& outputPath1, TTPtrSizedInt channel)
{
	TTFloat64 delayOutput;
	TTFloat64 temp;
	
	mF0->calculateValue(input,			temp,			channel);
	mF2->calculateValue(temp,			outputPath0,	channel);
	
	mDelay->calculateValue(input,		delayOutput,	channel);
	mF1->calculateValue(delayOutput,	temp,			channel);
	mF3->calculateValue(temp,			outputPath1,	channel);
}


TTErr TTHalfband9::calculateLowpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 outputFromPath0;
	TTFloat64 outputFromPath1;
	
	filterKernel(x, outputFromPath0, outputFromPath1, channel);
	y = (outputFromPath0 + outputFromPath1) * 0.5;
	return kTTErrNone;
}


TTErr TTHalfband9::calculateHighpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 outputFromPath0;
	TTFloat64 outputFromPath1;
	
	filterKernel(x, outputFromPath0, outputFromPath1, channel);
	y = (outputFromPath0 - outputFromPath1) * 0.5;
	return kTTErrNone;
}


// for every second input sample, we calculate an output sample
TTErr TTHalfband9::calculateDownsample(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 temp_0;
	TTFloat64 temp_1;

	if (mRSwitch[channel]) {
		mR0->calculateValue(x,		temp_0,			channel);
		mR2->calculateValue(temp_0,	temp_1,			channel);
		y = (temp_1 + mY1[channel]) * 0.5;
		mRSwitch[channel] = 0;
	}
	else {
		mR1->calculateValue(x,		temp_0,			channel);
		mR3->calculateValue(temp_0,	mY1[channel],	channel);
		mRSwitch[channel] = 1;
	}

	return kTTErrNone;
}


// for every second output sample, we calculate from a given input sample
TTErr TTHalfband9::calculateUpsample(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 temp;
	
	if (mRSwitch[channel]) {
		mR0->calculateValue(x,		temp,			channel);
		mR2->calculateValue(temp,	mY0[channel],	channel);

		mR1->calculateValue(x,		temp,			channel);
		mR3->calculateValue(temp,	mY1[channel],	channel);

		mRSwitch[channel] = 0;
	}
	else {
		mRSwitch[channel] = 1;
	}
	
	mDelay->calculateValue(mY1[channel], temp, channel);
	y = (mY0[channel] + temp) * 0.5;

	return kTTErrNone;
}


TTErr TTHalfband9::processLowpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateLowpass);
}


TTErr TTHalfband9::processHighpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateHighpass);
}


TTErr TTHalfband9::processDownsample(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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


TTErr TTHalfband9::processUpsample(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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

