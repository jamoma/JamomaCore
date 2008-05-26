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
	xm1A(NULL), xm2A(NULL), ym1A(NULL), ym2A(NULL), xm1B(NULL), xm2B(NULL), ym1B(NULL), ym2B(NULL)
{
	// register attributes
	registerAttribute(TT("frequency"),	kTypeFloat64, &attrFrequency, (TTSetterMethod)&TTBalance::setFrequency);

	// register for notifications from the parent class so we can allocate memory as required
	registerMessage(TT("updateMaxNumChannels"), (TTMethod)&TTBalance::updateMaxNumChannels, kTTMessagePassNone);
	// register for notifications from the parent class so we can recalculate coefficients as required
	registerMessage(TT("updateSr"),	(TTMethod)&TTBalance::updateSr, kTTMessagePassNone);
	// make the clear method available to the outside world
	registerMessage(TT("clear"), (TTMethod)&TTBalance::clear, kTTMessagePassNone);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);			// This attribute is inherited
	setAttributeValue(TT("frequency"),		10.0);						// Default frequency is 10 Hz
	setProcess((TTProcessMethod)&TTBalance::processAudio);
}


TTBalance::~TTBalance()
{
	free(xm1A);
	free(xm2A);
	free(ym1A);
	free(ym2A);
	free(xm1B);
	free(xm2B);
	free(ym1B);
	free(ym2B);
}


TTErr TTBalance::updateMaxNumChannels()
{
	if(xm1A)
		free(xm1A);
	if(xm2A)
		free(xm2A);
	if(ym1A)
		free(ym1A);
	if(ym2A)
		free(ym2A);
	if(xm1B)
		free(xm1B);
	if(xm2B)
		free(xm2B);
	if(ym1B)
		free(ym1B);
	if(ym2B)
		free(ym2B);
	
	xm1A = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	xm2A = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	ym1A = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	ym2A = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	xm1B = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	xm2B = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	ym1B = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	ym2B = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	
	clear();
	return kTTErrNone;
}


TTErr TTBalance::updateSr()
{
	TTValue	v(attrFrequency);
	return setFrequency(TTATTR, v);
}


TTErr TTBalance::clear()
{
	short i;

	for(i=0; i<maxNumChannels; i++){
		xm1A[i] = 0.0;
		xm2A[i] = 0.0;
		ym1A[i] = 0.0;
		ym2A[i] = 0.0;
		xm1B[i] = 0.0;
		xm2B[i] = 0.0;
		ym1B[i] = 0.0;
		ym2B[i] = 0.0;
	}
	return kTTErrNone;
}


TTErr TTBalance::setFrequency(const TTAttribute&, const TTValue& newValue)
{
	attrFrequency = TTClip((double)newValue, 1., (sr*0.45));

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
	TTSampleValue	*inSampleA,
					*inSampleB,
					*outSample;
	TTFloat64		tempxA,
					absTempxA,
					tempxB,
					absTempxB,
					tempyA,
					tempyB;											
	short			channel;
	short			numChannels;

	// Twice as many input channels are expected as output channels
	numChannels = TTAudioSignal::getNumChannels(in) / 2;
	if ( TTAudioSignal::getNumChannels(out) < numChannels)
		numChannels = TTAudioSignal::getNumChannels(out);

	// This outside loop works through each channel one at a time
	for(channel=0; channel<numChannels; channel++){
		// We first expect all channels of inputSignalA, then all channels of inputSignalB
		inSampleA = in.sampleVectors[channel];
		inSampleB = in.sampleVectors[channel+numChannels];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		// This inner loop works through each sample within the channel one at a time
		while(vs--){
			tempxA = *inSampleA++;
			absTempxA = fabs(tempxA);
			tempxB = *inSampleB++;
			absTempxB = fabs(tempxB);
			// Lopass filter left and right signals
			tempyA = antiDenormal(a0*absTempxA + a1*xm1A[channel] + a2*xm2A[channel] - b1*ym1A[channel] - b2*ym2A[channel]);
			tempyB = antiDenormal(a0*absTempxB + a1*xm1B[channel] + a2*xm2B[channel] - b1*ym1B[channel] - b2*ym2B[channel]);		
			// Scale left input to produce output, avoid dividing by zero
			if (tempyA)
				*outSample++ = tempxA * (tempyB/tempyA);
			else
				*outSample++ = 0.;
			// Update filter values
			xm2A[channel] = xm1A[channel];
			xm1A[channel] = absTempxA;
			ym2A[channel] = ym1A[channel];
			ym1A[channel] = tempyA;
			xm2B[channel] = xm1B[channel];
			xm1B[channel] = absTempxB;
			ym2B[channel] = ym1B[channel];
			ym1B[channel] = tempyB;
		}
	}
	return kTTErrNone;
}
