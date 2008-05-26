/* 
 * TTBlue Cycling Ramp Generator
 * Copyright © 2003, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTPhasor.h"


TTPhasor::TTPhasor(TTUInt8 newMaxNumChannels)
	: TTAudioObject("audio.phasor", newMaxNumChannels),
	attrPhase(0.0), step(0.0), linearGain(1.0)
{
	registerAttribute(TT("frequency"),	kTypeFloat64,	&attrFrequency,	(TTSetterMethod)&TTPhasor::setFrequency);
	registerAttribute(TT("gain"),		kTypeFloat64,	&attrGain,		(TTGetterMethod)&TTPhasor::getGain, (TTSetterMethod)&TTPhasor::setGain);
	registerAttribute(TT("phase"),		kTypeFloat64,	&attrPhase);
	// TODO: More Attributes left to add...
	//	linearGain
	//	period in ms
	//	period in samples
	
	registerMessage(TT("updateSr"),	(TTMethod)&TTPhasor::updateSr, kTTMessagePassNone);

	setAttributeValue(TT("frequency"), 1.0);
	setAttributeValue(TT("gain"), 0.0);
	setProcess((TTProcessMethod)&TTPhasor::processAudio);
}


TTPhasor::~TTPhasor()
{
	;
}


TTErr TTPhasor::updateSr()
{
	TTValue	v(attrFrequency);
	return setFrequency(v);
}


TTErr TTPhasor::setFrequency(const TTValue& newValue)
{
	attrFrequency = newValue;
	if(attrFrequency == 0){
		rampSamples = 0xFFFFFFFF;
		rampMilliseconds = 0;
	}
	else{
		rampSamples = TTUInt32((1.0 / attrFrequency) * sr);
		rampMilliseconds = 1000.0 * (rampSamples / TTFloat64(sr));
	}
	setStep();
	return kTTErrNone;
}

void TTPhasor::setStep()
{
	step = antiDenormal(1.0 / TTFloat64(rampSamples));	// 1.0 is the destination
}


TTErr TTPhasor::setGain(const TTValue& newValue)
{
	attrGain = newValue;
	linearGain = dbToLinear(attrGain);
	return kTTErrNone;
}

TTErr TTPhasor::getGain(TTValue& value)
{
	value = linearToDb(linearGain);
	return kTTErrNone;
}


// TODO: add flags so that TTAudioObject can call a process method with a different number audio signals?

TTErr TTPhasor::processAudio(TTAudioSignal& in, TTAudioSignal& out)
{
	TTSampleValue	*outSample;
	TTUInt8			numchannels = out.getNumChannels();
	TTUInt8			channel;
	TTUInt16		vs;

	for(channel=0; channel<numchannels; channel++){
		outSample = out.sampleVectors[channel];
		vs = out.getVectorSize();

		while(vs--){
			attrPhase += step;
			if(attrPhase >= 1.0)
				attrPhase -= 1.0;
			else if(attrPhase < 0.0)
				attrPhase += 1.0;
			*outSample++ = attrPhase * linearGain;	
		}
	}
	return kTTErrNone;
}
