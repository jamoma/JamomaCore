/* 
 * TTBlue Balance Signal Amplitude
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTBalance.h"


TTBalance::TTBalance(TTUInt8 newMaxNumChannels)
	: TTAudioObject("filter.lowpass.butterworth", newMaxNumChannels),
	xm1L(NULL), xm2L(NULL), ym1L(NULL), ym2L(NULL), xm1R(NULL), xm2R(NULL), ym1R(NULL), ym2R(NULL)
{
	// register attributes
	registerAttribute(TT("frequency"),	kTypeFloat64, &attrFrequency, (TTSetterMethod)&TTBalance::setFrequency);

	// register for notifications from the parent class so we can allocate memory as required
	registerMessage(TT("updateMaxNumChannels"), (TTMethod)&TTBalance::updateMaxNumChannels);
	// register for notifications from the parent class so we can recalculate coefficients as required
	registerMessage(TT("updateSr"),	(TTMethod)&TTBalance::updateSr);
	// make the clear method available to the outside world
	registerMessage(TT("clear"), (TTMethod)&TTBalance::clear);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);			// This attribute is inherited
	setAttributeValue(TT("frequency"),		10.0);						// Default frequency is 10 Hz
	setProcess((TTProcessMethod)&TTBalance::processAudio);
}


TTBalance::~TTBalance()
{
	free(xm1L);
	free(xm2L);
	free(ym1L);
	free(ym2L);
	free(xm1R);
	free(xm2R);
	free(ym1R);
	free(ym2R);
}


TTErr TTBalance::updateMaxNumChannels()
{
	if(xm1L)
		free(xm1L);
	if(xm2L)
		free(xm2L);
	if(ym1L)
		free(ym1L);
	if(ym2L)
		free(ym2L);
	if(xm1R)
		free(xm1R);
	if(xm2R)
		free(xm2R);
	if(ym1R)
		free(ym1R);
	if(ym2R)
		free(ym2R);
	
	xm1L = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	xm2L = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	ym1L = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	ym2L = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	xm1R = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	xm2R = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	ym1R = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	ym2R = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	
	clear();
	return kTTErrNone;
}


TTErr TTBalance::updateSr()
{
	TTValue	v(attrFrequency);
	return setFrequency(v);
}


TTErr TTBalance::clear()
{
	short i;

	for(i=0; i<maxNumChannels; i++){
		xm1L[i] = 0.0;
		xm2L[i] = 0.0;
		ym1L[i] = 0.0;
		ym2L[i] = 0.0;
		xm1R[i] = 0.0;
		xm2R[i] = 0.0;
		ym1R[i] = 0.0;
		ym2R[i] = 0.0;
	}
	return kTTErrNone;
}


TTErr TTBalance::setFrequency(const TTValue& newValue)
{
	attrFrequency = TTClip((double)newValue, 10., (sr*0.45));

	c = 1 / ( tan( kTTPi*(attrFrequency/sr) ) );
	a0 = 1 / (1 + kTTSqrt2*c + c*c);
	a1 = 2*a0;
	a2 = a0;
	b1 = 2*a0*( 1 - c*c );
	b2 = a0 * (1 - kTTSqrt2*c + c*c);
	return kTTErrNone;
}


TTErr TTBalance::processAudio(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs;
	TTSampleValue	*inSampleL,
					*inSampleR,
					*outSample;
	TTFloat64		tempxL,
					tempxR,
					tempyL,
					tempyR;											
	short			i;
	short			channel;
	short			numChannels;

	// Twice as many input channels are expected as output channels
	numChannels = TTAudioSignal::getNumChannels(in) / 2;
	if ( TTAudioSignal::getNumChannels(out) < numChannels)
		numChannels = TTAudioSignal::getNumChannels(out);

	// This outside loop works through each channel one at a time
	for(channel=0; channel<numChannels; channel++){
		// Input channels are expected to come in pairs: left[0], right[0], left[1], right[1],...
		i = 2*channel;
		inSampleL = in.sampleVectors[i];
		inSampleR = in.sampleVectors[i+1];
		outSample = out.sampleVectors[channel];
		vs = in.vs;
		
		// This inner loop works through each sample within the channel one at a time
		while(vs--){
			tempxL = *inSampleL++;
			tempxR = *inSampleR++;
			// Lopass filter left and right signals
			tempyL = antiDenormal(a0*tempxL + a1*xm1L[channel] + a2*xm2L[channel] - b1*ym1L[channel] - b2*ym2L[channel]);
			tempyR = antiDenormal(a0*tempxR + a1*xm1R[channel] + a2*xm2R[channel] - b1*ym1R[channel] - b2*ym2R[channel]);		
			// Scale left input to produce output, avoid dividing by zero
			if (tempyL)
				*outSample++ = tempxL * (tempyR/tempyL);
			else
				*outSample++ = 0.;
			// Update filter values
			xm2L[channel] = xm1L[channel];
			xm1L[channel] = tempxL;
			ym2L[channel] = ym1L[channel];
			ym1L[channel] = tempyL;
			xm2R[channel] = xm1R[channel];
			xm1R[channel] = tempxR;
			ym2R[channel] = ym1R[channel];
			ym1R[channel] = tempyR;
		}
	}
	return kTTErrNone;
}
