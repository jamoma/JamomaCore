/* 
 * TTBlue 2-Pole Lowpass Filter Object
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTLowpassTwoPole.h"
#define thisTTClass TTLowpassTwoPole


TTLowpassTwoPole::TTLowpassTwoPole(TTUInt16 newMaxNumChannels)
	: TTAudioObject("filter.lowpass.twopole", newMaxNumChannels),
	feedback1(NULL), feedback2(NULL)
{
	// register attributes
	registerAttributeWithSetter(frequency,	kTypeFloat64);
	addAttributeProperty(frequency,			range,			TTValue(2.0, sr*0.475));
	addAttributeProperty(frequency,			rangeChecking,	TT("clip"));

	registerAttributeWithSetter(resonance,	kTypeFloat64);

	// register methods
	registerMessageSimple(clear);

	// register for notifications
	registerMessageWithArgument(updateMaxNumChannels);
	registerMessageSimple(updateSr);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);			// This attribute is inherited
	setAttributeValue(TT("frequency"),		1000.0);
	setAttributeValue(TT("resonance"),		1.0);
	setProcessMethod(processAudio);
}


TTLowpassTwoPole::~TTLowpassTwoPole()
{
	delete[] feedback1;
	delete[] feedback2;
}


TTErr TTLowpassTwoPole::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	delete[] feedback1;
	delete[] feedback2;
	feedback1 = new TTFloat64[maxNumChannels];
	feedback2 = new TTFloat64[maxNumChannels];

	clear();
	return kTTErrNone;
}


TTErr TTLowpassTwoPole::updateSr()
{
	TTValue	v(frequency);
	return setfrequency(v);
}


TTErr TTLowpassTwoPole::clear()
{
	memset(feedback1, 0, sizeof(TTFloat64) * maxNumChannels);
	memset(feedback2, 0, sizeof(TTFloat64) * maxNumChannels);
	return kTTErrNone;
}


TTErr TTLowpassTwoPole::setfrequency(const TTValue& newValue)
{	
	frequency = newValue;
	radians = hertzToRadians(frequency);	
	calculateCoefficients();
	return kTTErrNone;
}


TTErr TTLowpassTwoPole::setresonance(const TTValue& newValue)
{
	resonance = TTClip(TTFloat64(newValue), 0.001, 100.0);
	negOneOverResonance = -1.0/resonance;
	calculateCoefficients();
	
	return kTTErrNone;
}


void TTLowpassTwoPole::calculateCoefficients()
{
	coefficientA = 2.0 * cos(radians) * exp(0.5 * radians * negOneOverResonance);
	coefficientB = exp(radians * negOneOverResonance);
	coefficientC = 1.0 - coefficientA + coefficientB;
}


TTErr TTLowpassTwoPole::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	TTSampleValue	tempSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;

	// This outside loop works through each channel one at a time
	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		// This inner loop works through each sample within the channel one at a time
		while(vs--){
			tempSample = *inSample++;
			tempSample = TTAntiDenormal((feedback1[channel] * coefficientA) - (feedback2[channel] * coefficientB) + (tempSample * coefficientC));
			*outSample++ = tempSample;
			feedback2[channel] = feedback1[channel];
			feedback1[channel] = tempSample;
		}
	}
	return kTTErrNone;
}

