/* 
 * TTBlue Running Average Filter Object
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTAverage.h"
#define thisTTClass TTAverage

/*
TTAverage::TTAverage(TTUInt16 newMaxNumChannels)
	: TTAudioObject("filter.runningAverage", newMaxNumChannels),
	accumulator(NULL), bins(NULL), binsIn(NULL), binsOut(NULL), binsEnd(NULL)
{
	// register attributes
	registerAttributeWithSetter(maxInterval,	kTypeUInt16);
	registerAttributeWithSetter(interval,		kTypeUInt16);
	registerAttributeWithSetter(mode,			kTypeSymbol);
	
	// register methods
	registerMessageSimple(clear);

	// register for notifications
	registerMessageWithArgument(updateMaxNumChannels);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);			// This attribute is inherited
	setAttributeValue(TT("maxInterval"),	256);
	setAttributeValue(TT("interval"),		100);
	setAttributeValue(TT("mode"),			TT("absolute"));
}


TTAverage::~TTAverage()
{
	delete[] accumulator;
	delete[] bins;
	delete[] binsIn;
	delete[] binsOut;
	delete[] binsEnd;
}


TTErr TTAverage::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
// FIXME: There is a problem here -- has the maxNumChannels changed?  If so, then we can't iterate like this because we will be freeing the wrong number
// of channels, given that a different number was allocated the last time through !!!
	for(TTUInt8 i=0; i<maxNumChannels; i++)
		delete[] bins[i];

	delete[] accumulator;
	delete[] bins;
	delete[] binsIn;
	delete[] binsOut;
	delete[] binsEnd;

	accumulator = new TTFloat64[maxNumChannels];
	bins = new TTSampleVector[maxNumChannels];
	binsIn = new TTSampleVector[maxNumChannels];
	binsOut = new TTSampleVector[maxNumChannels];
	binsEnd = new TTSampleVector[maxNumChannels];

	for(TTUInt8 i=0; i<maxNumChannels; i++)
		bins[i] = new TTSampleValue[attrMaxInterval];

	clear();
	return kTTErrNone;
}


TTErr TTAverage::clear()
{
	memset(x1, 0.0, sizeof(TTFloat64) * maxNumChannels);
	memset(x2, 0.0, sizeof(TTFloat64) * maxNumChannels);
	memset(x3, 0.0, sizeof(TTFloat64) * maxNumChannels);
	memset(x4, 0.0, sizeof(TTFloat64) * maxNumChannels);
	memset(y1, 0.0, sizeof(TTFloat64) * maxNumChannels);
	memset(y2, 0.0, sizeof(TTFloat64) * maxNumChannels);
	memset(y3, 0.0, sizeof(TTFloat64) * maxNumChannels);
	memset(y4, 0.0, sizeof(TTFloat64) * maxNumChannels);
	return kTTErrNone;
}


TTErr TTAverage::setfrequency(const TTValue& newValue)
{	
	TTFloat64	radians;

	frequency = newValue;
	radians = hertzToRadians(frequency);
	coefficientF = radians * 1.16;
	calculateCoefficients();
	return kTTErrNone;
}


TTErr TTAverage::setmode(const TTValue& newValue)
{
	mode = newValue;
	
	if(mode == TT("absolute"))
		return setProcessMethod(processAbsolute);
	else if(mode == TT("bipolar"))
		return setProcessMethod(processBipolar);
	else if(mode == TT("rms"))
		return setProcessMethod(processRms);
	
	return kTTErrGeneric;
}


void TTAverage::calculateCoefficients()
{
	coefficientFB = deciResonance * (1.0 - 0.15 * (coefficientF * coefficientF));
	coefficientG = antiDenormal(0.35013 * ((coefficientF * coefficientF) * (coefficientF * coefficientF))); 
}


TTErr TTAverage::processBipolar(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs;
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	TTSampleValue	tempSample;
	short			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	short			channel;

	// This outside loop works through each channel one at a time
	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		// This inner loop works through each sample within the channel one at a time
		while(vs--){
			if(binsOut[channel] > binsEnd[channel])
				binsOut[channel] = bins[channel];
			if(binsIn[channel] > binsEnd[channel])
				binsIn[channel] = bins[channel];
			accumulator[channel] -= *binsOut[channel]++;
			
			accumulator[channel] += *binsIn[channel]++ = *inSample[channel]++;
			*outSample++ = accumulator[channel] * invInterval;
		}
	}
	return kTTErrNone;
}
*/
