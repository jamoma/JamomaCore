/* 
 * TTBlue Cycling Ramp Generator
 * Copyright © 2003, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTPhasor.h"

#define thisTTClass TTPhasor
#define thisTTClassName		"phasor"
#define thisTTClassTags		"dspGeneratorLib, audio, generator, oscillator"


TT_AUDIO_CONSTRUCTOR
, mFrequency(1.0), mPhase(0.0), mOffset(0.0), step(0.0), linearGain(1.0)
{
	addAttributeWithSetter(			Frequency,	kTypeFloat64);
	addAttributeWithGetterAndSetter(Gain,		kTypeFloat64);
	addAttributeWithSetter(			Phase,		kTypeFloat64);
	addAttribute(					Offset,		kTypeFloat64);
	// TODO: More Attributes left to add...
	//	linearGain
	//	period in ms
	//	period in samples
	
	addUpdates(SampleRate);

	setAttributeValue(TT("frequency"), 1.0);
	setAttributeValue(TT("gain"), 0.0);
	setProcessMethod(processAudio);
}


TTPhasor::~TTPhasor()
{
	;
}


TTErr TTPhasor::updateSampleRate(const TTValue&, TTValue&)
{
	TTValue	v(mFrequency);
	return setFrequency(v);
}


TTErr TTPhasor::setFrequency(const TTValue& newValue)
{
	mFrequency = newValue;
	if (mFrequency == 0) {
		rampSamples = 0xFFFFFFFF;
		rampMilliseconds = 0;
	}
	else {
		rampSamples = TTUInt32(sr / fabs(mFrequency));
		// FIXME: we never use rampMilliseconds, so why computing this?
		rampMilliseconds = 1000.0 * (rampSamples / TTFloat64(sr));
	}
	setStep();
	return kTTErrNone;
}

void TTPhasor::setStep()
{
	step = 1.0 / TTFloat64(rampSamples - 1.0);	// 1.0 is the destination 
	if (mFrequency < 0){
		step = -step;
	}
	TTZeroDenormal(step); 
}


TTErr TTPhasor::setPhase(const TTValue& newValue)
{
	mPhase = newValue;
	phaseInternal = mPhase;
	if (mFrequency < 0)
		phaseInternal += 1.0;
	
	return kTTErrNone;
}


TTErr TTPhasor::setGain(const TTValue& newValue)
{
	linearGain = TTDecibelsToLinearGain(newValue);
	return kTTErrNone;
}

TTErr TTPhasor::getGain(TTValue& value)
{
	value = TTLinearGainToDecibels(linearGain);
	return kTTErrNone;
}


// TODO: add flags so that TTAudioObjectBase can call a process method with a different number audio signals?

TTErr TTPhasor::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue	*outSample;
	TTUInt16		numchannels = out.getNumChannelsAsInt();
	TTUInt16		channel;
	TTUInt16		vs;

	for (channel=0; channel<numchannels; channel++) {
		outSample = out.mSampleVectors[channel];
		vs = out.getVectorSizeAsInt();

		while (vs--) {
			if (phaseInternal > 1.0)
				phaseInternal = 0.0;
			else if (phaseInternal < 0.0)
				phaseInternal = 1.0;
			
			*outSample++ = (phaseInternal * linearGain) + mOffset;	
			phaseInternal += step;
		}
	}
	return kTTErrNone;
}
