/* 
 * TTBlue Cycling Ramp Generator
 * Copyright © 2003, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTPhasor.h"
#define thisTTClass TTPhasor


TTPhasor::TTPhasor(TTUInt16 newMaxNumChannels)
	: TTAudioObject("audio.phasor", newMaxNumChannels),
	phase(0.0), step(0.0), linearGain(1.0)
{
	registerAttributeWithSetter(frequency,		kTypeFloat64);
	registerAttributeWithSetterAndGetter(gain,	kTypeFloat64);
	registerAttributeSimple(phase,				kTypeFloat64);
	// TODO: More Attributes left to add...
	//	linearGain
	//	period in ms
	//	period in samples
	
	registerMessageSimple(updateSr);

	setAttributeValue(TT("frequency"), 1.0);
	setAttributeValue(TT("gain"), 0.0);
	setProcessMethod(processAudio);
}


TTPhasor::~TTPhasor()
{
	;
}


TTErr TTPhasor::updateSr()
{
	TTValue	v(frequency);
	return setfrequency(v);
}


TTErr TTPhasor::setfrequency(const TTValue& newValue)
{
	frequency = newValue;
	if(frequency == 0){
		rampSamples = 0xFFFFFFFF;
		rampMilliseconds = 0;
	}
	else{
		rampSamples = TTUInt32((1.0 / frequency) * sr);
		rampMilliseconds = 1000.0 * (rampSamples / TTFloat64(sr));
	}
	setStep();
	return kTTErrNone;
}

void TTPhasor::setStep()
{
	step = TTAntiDenormal(1.0 / TTFloat64(rampSamples));	// 1.0 is the destination
}


TTErr TTPhasor::setgain(const TTValue& newValue)
{
	linearGain = dbToLinear(newValue);
	return kTTErrNone;
}

TTErr TTPhasor::getgain(TTValue& value)
{
	value = linearToDb(linearGain);
	return kTTErrNone;
}


// TODO: add flags so that TTAudioObject can call a process method with a different number audio signals?

TTErr TTPhasor::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue	*outSample;
	TTUInt16		numchannels = out.getNumChannels();
	TTUInt16		channel;
	TTUInt16		vs;

	for(channel=0; channel<numchannels; channel++){
		outSample = out.sampleVectors[channel];
		vs = out.getVectorSize();

		while(vs--){
			phase += step;
			if(phase >= 1.0)
				phase -= 1.0;
			else if(phase < 0.0)
				phase += 1.0;
			*outSample++ = phase * linearGain;	
		}
	}
	return kTTErrNone;
}
