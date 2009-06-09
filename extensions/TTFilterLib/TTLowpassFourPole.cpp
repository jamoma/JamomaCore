/* 
 * TTBlue 4-Pole Lowpass Filter Object
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTLowpassFourPole.h"
#define thisTTClass TTLowpassFourPole


TTLowpassFourPole::TTLowpassFourPole(TTUInt16 newMaxNumChannels)
	: TTAudioObject("filter.lowpass.fourpole", newMaxNumChannels),
	x1(NULL), x2(NULL), x3(NULL), x4(NULL), y1(NULL), y2(NULL), y3(NULL), y4(NULL)
{
	// register attributes
	registerAttributeWithSetter(frequency,	kTypeFloat64);
	addAttributeProperty(frequency,			range,			TTValue(2.0, sr*0.475));
	addAttributeProperty(frequency,			rangeChecking,	TT("clip"));

	registerAttributeWithSetter(resonance,	kTypeFloat64);
	addAttributeProperty(resonance,			range,			TTValue(0.01, 100.0));
	addAttributeProperty(resonance,			rangeChecking,	TT("cliplow"));

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


TTLowpassFourPole::~TTLowpassFourPole()
{
	delete[] x1;
	delete[] x2;
	delete[] x3;
	delete[] x4;
	delete[] y1;
	delete[] y2;
	delete[] y3;
	delete[] y4;
}


TTErr TTLowpassFourPole::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	delete[] x1;
	delete[] x2;
	delete[] x3;
	delete[] x4;
	delete[] y1;
	delete[] y2;
	delete[] y3;
	delete[] y4;

	x1 = new TTFloat64[maxNumChannels];
	x2 = new TTFloat64[maxNumChannels];
	x3 = new TTFloat64[maxNumChannels];
	x4 = new TTFloat64[maxNumChannels];
	y1 = new TTFloat64[maxNumChannels];
	y2 = new TTFloat64[maxNumChannels];
	y3 = new TTFloat64[maxNumChannels];
	y4 = new TTFloat64[maxNumChannels];

	clear();
	return kTTErrNone;
}


TTErr TTLowpassFourPole::updateSr()
{
	TTValue	v(frequency);
	return setfrequency(v);
}


TTErr TTLowpassFourPole::clear()
{
	memset(x1, 0, sizeof(TTFloat64) * maxNumChannels);
	memset(x2, 0, sizeof(TTFloat64) * maxNumChannels);
	memset(x3, 0, sizeof(TTFloat64) * maxNumChannels);
	memset(x4, 0, sizeof(TTFloat64) * maxNumChannels);
	memset(y1, 0, sizeof(TTFloat64) * maxNumChannels);
	memset(y2, 0, sizeof(TTFloat64) * maxNumChannels);
	memset(y3, 0, sizeof(TTFloat64) * maxNumChannels);
	memset(y4, 0, sizeof(TTFloat64) * maxNumChannels);
	return kTTErrNone;
}


TTErr TTLowpassFourPole::setfrequency(const TTValue& newValue)
{	
	TTFloat64	radians;

	frequency = newValue;
	radians = hertzToRadians(frequency);
	coefficientF = radians * 1.16;
	calculateCoefficients();
	return kTTErrNone;
}


TTErr TTLowpassFourPole::setresonance(const TTValue& newValue)
{
	resonance = newValue;
	deciResonance = resonance * 0.1;
	calculateCoefficients();
	return kTTErrNone;
}


void TTLowpassFourPole::calculateCoefficients()
{
	coefficientFB = deciResonance * (1.0 - 0.15 * (coefficientF * coefficientF));
	coefficientG = TTAntiDenormal(0.35013 * ((coefficientF * coefficientF) * (coefficientF * coefficientF))); 
}


TTErr TTLowpassFourPole::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
			tempSample -= TTAntiDenormal(y4[channel] * coefficientFB);
			tempSample *= coefficientG;
			
			y1[channel] = TTAntiDenormal(tempSample + 0.3 * x1[channel] + (1 - coefficientF) * y1[channel]);
			x1[channel] = tempSample;
			y2[channel] = TTAntiDenormal(y1[channel] + 0.3 * x2[channel] + (1 - coefficientF) * y2[channel]);
			x2[channel] = y1[channel];
			y3[channel] = TTAntiDenormal(y2[channel] + 0.3 * x3[channel] + (1 - coefficientF) * y3[channel]);
			x3[channel] = y2[channel];
			y4[channel] = TTAntiDenormal(y3[channel] + 0.3 * x4[channel] + (1 - coefficientF) * y4[channel]);
			x4[channel] = y3[channel];
			tempSample = y4[channel];
			
			*outSample++ = tempSample;
		}
	}
	return kTTErrNone;
}

