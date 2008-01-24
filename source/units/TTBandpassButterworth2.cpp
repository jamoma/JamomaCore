/* 
 * TTBlue 2nd order Butterworth Bandpass Filter Object
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTBandpassButterworth2.h"


TTBandpassButterworth2::TTBandpassButterworth2(TTUInt8 newMaxNumChannels)
	: TTAudioObject(newMaxNumChannels),
	xm1(NULL), xm2(NULL), ym1(NULL), ym2(NULL)
{
	// register attributes
	registerAttribute(TT("frequency"),	kTypeFloat64, &attrFrequency, 	(TTSetterMethod)&TTBandpassButterworth2::setFrequency);
	registerAttribute(TT("q"),			kTypeFloat64, &attrQ, 			(TTSetterMethod)&TTBandpassButterworth2::setQ);

	// register for notifications from the parent class so we can allocate memory as required
	registerMessage(TT("updateMaxNumChannels"), (TTMethod)&TTBandpassButterworth2::updateMaxNumChannels);
	// register for notifications from the parent class so we can recalculate coefficients as required
	registerMessage(TT("updateSr"),	(TTMethod)&TTBandpassButterworth2::updateSr);
	// make the clear method available to the outside world
	registerMessage(TT("clear"), (TTMethod)&TTBandpassButterworth2::clear);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);			// This attribute is inherited
	setAttributeValue(TT("frequency"),		1000.0);
	setAttributeValue(TT("q"),				50.0);
	setProcess((TTProcessMethod)&TTBandpassButterworth2::processAudio);
}


TTBandpassButterworth2::~TTBandpassButterworth2()
{
	free(xm1);
	free(xm2);
	free(ym1);
	free(ym2);
}


TTErr TTBandpassButterworth2::updateMaxNumChannels()
{
	if(xm1)
		free(xm1);
	if(xm2)
		free(xm2);
	if(ym1)
		free(ym1);
	if(ym2)
		free(ym2);
	
	xm1 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	xm2 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	ym1 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	ym2 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	
	clear();
	return kTTErrNone;
}


TTErr TTBandpassButterworth2::updateSr()
{
	TTValue	v(attrFrequency);
	return setFrequency(v);
}


TTErr TTBandpassButterworth2::clear()
{
	short i;

	for(i=0; i<maxNumChannels; i++){
		xm1[i] = 0.0;
		xm2[i] = 0.0;
		ym1[i] = 0.0;
		ym2[i] = 0.0;
	}
	return kTTErrNone;
}


TTErr TTBandpassButterworth2::setFrequency(const TTValue& newValue)
{
	attrFrequency = TTClip((double)newValue, 10., (sr*0.45));
	
	return calculateCoefficients();
}


TTErr TTBandpassButterworth2::setQ(const TTValue& newValue)
{

	attrQ = newValue;
	
	return calculateCoefficients();
}


TTErr TTBandpassButterworth2::calculateCoefficients()
{	
	// Avoid dividing by 0
	if (attrQ < 0.1)
		bw = attrFrequency;
	else
		bw = attrFrequency/attrQ;
	c = 1. / tan( kTTPi*(bw/sr) );
	d = 2. * cos( 2*kTTPi*(attrFrequency/sr) );
	a0 = 1. / (1. + c);
	// a1 = 0.
	a2 = -a0;
	b1 = -1. * a0 * c * d;
	b2 = a0 * (c - 1.);
	
	return kTTErrNone;
}

TTErr TTBandpassButterworth2::processAudio(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs;
	TTSampleValue	*inSample,
					*outSample;
	TTFloat64		tempx,
					tempy;
	short			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	short			channel;

	// This outside loop works through each channel one at a time
	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.vs;
		
		// This inner loop works through each sample within the channel one at a time
		while(vs--){
			tempx = *inSample++;
			tempy = antiDenormal(a0*tempx + a2*xm2[channel] - b1*ym1[channel] - b2*ym2[channel]);
			xm2[channel] = xm1[channel];
			xm1[channel] = tempx;
			ym2[channel] = ym1[channel];
			ym1[channel] = tempy;
			*outSample++ = tempy;
		}
	}
	return kTTErrNone;
}

