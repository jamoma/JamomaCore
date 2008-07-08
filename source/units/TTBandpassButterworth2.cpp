/* 
 * TTBlue 2nd order Butterworth Bandpass Filter Object
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTBandpassButterworth2.h"
#define thisTTClass TTBandpassButterworth2


TTBandpassButterworth2::TTBandpassButterworth2(TTUInt16 newMaxNumChannels)
	: TTAudioObject("filter.bandpass.butterworth", newMaxNumChannels),
	xm1(NULL), xm2(NULL), ym1(NULL), ym2(NULL)
{
	// register attributes
	registerAttributeWithSetter(frequency,	kTypeFloat64);
	registerAttributeWithSetter(q,			kTypeFloat64);

	// register for notifications from the parent class so we can allocate memory as required
	registerMessageWithArgument(updateMaxNumChannels);
	// register for notifications from the parent class so we can recalculate coefficients as required
	registerMessageSimple(updateSr);
	// make the clear method available to the outside world
	registerMessageSimple(clear);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);			// This attribute is inherited
	setAttributeValue(TT("frequency"),		1000.0);
	setAttributeValue(TT("q"),				50.0);
	setProcessMethod(processAudio);
}


TTBandpassButterworth2::~TTBandpassButterworth2()
{
	free(xm1);
	free(xm2);
	free(ym1);
	free(ym2);
}


TTErr TTBandpassButterworth2::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
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
	TTValue	v(frequency);
	return setfrequency(v);
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


TTErr TTBandpassButterworth2::setfrequency(const TTValue& newValue)
{
	frequency = TTClip((double)newValue, 10., (sr*0.45));
	
	return calculateCoefficients();
}


TTErr TTBandpassButterworth2::setq(const TTValue& newValue)
{

	q = newValue;
	
	return calculateCoefficients();
}


TTErr TTBandpassButterworth2::calculateCoefficients()
{	
	// Avoid dividing by 0
	if(q < 0.1)
		bw = frequency;
	else
		bw = frequency/q;
	c = 1. / tan( kTTPi*(bw/sr) );
	d = 2. * cos( 2*kTTPi*(frequency/sr) );
	a0 = 1. / (1. + c);
	// a1 = 0.
	a2 = -a0;
	b1 = -1. * a0 * c * d;
	b2 = a0 * (c - 1.);
	
	return kTTErrNone;
}

TTErr TTBandpassButterworth2::processAudio(TTAudioSignal& in, TTAudioSignal& out)
{
	TTUInt16		vs;
	TTSampleValue	*inSample,
					*outSample;
	TTFloat64		tempx,
					tempy;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;

	// This outside loop works through each channel one at a time
	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
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

