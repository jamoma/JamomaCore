/* 
 * TTBlue Ramp Generator
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTRamp.h"

#define thisTTClass TTRamp
#define thisTTClassName		"ramp"
#define thisTTClassTags		"dspGeneratorLib, audio, generator"


TT_AUDIO_CONSTRUCTOR
, attrMode(TT("vector")), attrCurrentValue(0), attrDestinationValue(0), step(0), direction(0)
{
	registerAttribute(TT("rampTime"),			kTypeFloat64,	&attrRampTime,	(TTSetterMethod)&TTRamp::setRampTime);
	registerAttribute(TT("startValue"),			kTypeFloat64,	&attrCurrentValue);
	registerAttribute(TT("destinationValue"),	kTypeFloat64,	&attrDestinationValue);
	registerAttribute(TT("mode"),				kTypeSymbol,	&attrMode,		(TTSetterMethod)&TTRamp::setMode);
	
	addMessage(Stop);
	addMessage(RampTimeInSamples);

	setAttributeValue(TT("mode"), TT("vector"));
}


TTRamp::~TTRamp()
{
	;
}


TTErr TTRamp::RampTimeInSamples(const TTValue& newValue)
{
	rampSamples = newValue;
	if (rampSamples == 0) {
		step = 0;
		attrCurrentValue = attrDestinationValue;
		direction = 0;
	}
	else {
		attrRampTime = 1000.0 * (rampSamples / TTFloat32(sr));
		setStep();		
	}
	setupProcess();
	return kTTErrNone;
}


TTErr TTRamp::setRampTime(const TTValue& newValue)
{
	attrRampTime = newValue;
	if ((attrRampTime <= 0.0 + kTTAntiDenormalValue) && (attrRampTime >= 0.0 - kTTAntiDenormalValue)) {
		step = 0;
		attrCurrentValue = attrDestinationValue;
		direction = 0;
	}
	else {
		rampSamples = long((attrRampTime * 0.001) * sr);
		setStep();		
	}
	setupProcess();
	return kTTErrNone;
}


TTErr TTRamp::setMode(const TTValue& newValue)
{
	attrMode = newValue;
	setupProcess();
	return kTTErrNone;
}


TTErr TTRamp::Stop()
{
	step = 0;
	return kTTErrNone;
}


void TTRamp::setupProcess()
{
	if ((attrMode == TT("sample")) && (direction == kUP))
		setProcessMethod(processSampleAccurateUp);
	else if ((attrMode == TT("sample")) && (direction == kDOWN))
		setProcessMethod(processSampleAccurateDown);
	else if ((attrMode == TT("vector")) && (direction == kUP))
		setProcessMethod(processVectorAccurateUp);
	else
		setProcessMethod(processVectorAccurateDown);
}


void TTRamp::setStep()
{
	step = (attrDestinationValue - attrCurrentValue) / double(rampSamples - 1);
	direction = (step < 0);
}


TTErr TTRamp::processVectorAccurateDown(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue	*outSample;
	TTUInt16		numchannels = out.getNumChannelsAsInt();
	TTUInt16		channel;

	for (channel=0; channel<numchannels; channel++) {
		outSample = out.mSampleVectors[channel];
		*outSample = attrCurrentValue;
        
        if (step) {
			attrCurrentValue += (step * out.getVectorSizeAsInt());
			if (attrCurrentValue <= attrDestinationValue) {
				step = 0;
				attrCurrentValue = attrDestinationValue;	// clamp
			}
		}
		
	}
	return kTTErrNone;
}


TTErr TTRamp::processVectorAccurateUp(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue	*outSample;
	TTUInt16		numchannels = out.getNumChannelsAsInt();
	TTUInt16		channel;

	for (channel=0; channel<numchannels; channel++) {
		outSample = out.mSampleVectors[channel];
		*outSample = attrCurrentValue;
        
        if (step) {
			attrCurrentValue += (step * out.getVectorSizeAsInt());
			if (attrCurrentValue >= attrDestinationValue) {
				step = 0;
				attrCurrentValue = attrDestinationValue;	// clamp
			}
		}
		
	}
	return kTTErrNone;
}


TTErr TTRamp::processSampleAccurateDown(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue	*outSample;
	TTUInt16		numchannels = out.getNumChannelsAsInt();
	TTUInt16		channel;
	TTUInt16		vs;

	for (channel=0; channel<numchannels; channel++) {
		vs = out.getVectorSizeAsInt();
		outSample = out.mSampleVectors[channel];
		while (vs--) {
			*outSample++ = attrCurrentValue;
            
            if (step) {
				attrCurrentValue += step;
				if (attrCurrentValue <= attrDestinationValue) {
					step = 0;
					attrCurrentValue = attrDestinationValue; // clamp
				}
			}
				
		}
	}
	return kTTErrNone;
}


TTErr TTRamp::processSampleAccurateUp(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue	*outSample;
	TTUInt16		numchannels = out.getNumChannelsAsInt();
	TTUInt16		channel;
	TTUInt16		vs;

	for (channel=0; channel<numchannels; channel++) {
		vs = out.getVectorSizeAsInt();
		outSample = out.mSampleVectors[channel];
		while (vs--) {
			*outSample++ = attrCurrentValue;
            
            if (step) {
				attrCurrentValue += step;
				if (attrCurrentValue >= attrDestinationValue) {
					step = 0;
					attrCurrentValue = attrDestinationValue; // clamp
				}
			}
				
		}
	}
	return kTTErrNone;
}

