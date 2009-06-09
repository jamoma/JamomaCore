/*
 * TTBlue 3rd order Butterworth Lowpass Filter Object
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTLowpassButterworth3.h"
#define thisTTClass TTLowpassButterworth3


TTLowpassButterworth3::TTLowpassButterworth3(TTUInt16 newMaxNumChannels)
	: TTAudioObject("filter.lowpass.butterworth", newMaxNumChannels),
	xm1(NULL), xm2(NULL), xm3(NULL), ym1(NULL), ym2(NULL), ym3(NULL)
{
	// register attributes
	registerAttributeWithSetter(frequency,	kTypeFloat64);
	addAttributeProperty(frequency,			range,			TTValue(10.0, sr*0.475));
	addAttributeProperty(frequency,			rangeChecking,	TT("clip"));

	// register for notifications from the parent class so we can allocate memory as required
	registerMessageWithArgument(updateMaxNumChannels);
	// register for notifications from the parent class so we can recalculate coefficients as required
	registerMessageSimple(updateSr);
	// make the clear method available to the outside world
	registerMessageSimple(clear);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);			// This attribute is inherited
	setAttributeValue(TT("frequency"),		1000.0);
	setProcessMethod(processAudio);
}


TTLowpassButterworth3::~TTLowpassButterworth3()
{
	delete[] xm1;
	delete[] xm2;
	delete[] xm3;
	delete[] ym1;
	delete[] ym2;
	delete[] ym3;
}


TTErr TTLowpassButterworth3::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	delete[] xm1;
	delete[] xm2;
	delete[] xm3;
	delete[] ym1;
	delete[] ym2;
	delete[] ym3;
	
	xm1 = new TTFloat64[maxNumChannels];
	xm2 = new TTFloat64[maxNumChannels];
	xm3 = new TTFloat64[maxNumChannels];
	ym1 = new TTFloat64[maxNumChannels];
	ym2 = new TTFloat64[maxNumChannels];
	ym3 = new TTFloat64[maxNumChannels];
	
	clear();
	return kTTErrNone;
}


TTErr TTLowpassButterworth3::updateSr()
{
	TTValue	v(frequency);
	return setfrequency(v);
}


TTErr TTLowpassButterworth3::clear()
{
	short i;

	for(i=0; i<maxNumChannels; i++){
		xm1[i] = 0.0;
		xm2[i] = 0.0;
		xm3[i] = 0.0;
		ym1[i] = 0.0;
		ym2[i] = 0.0;
		ym3[i] = 0.0;
	}
	return kTTErrNone;
}


TTErr TTLowpassButterworth3::setfrequency(const TTValue& newValue)
{
	frequency = newValue;

	wc = 2*kTTPi*frequency;
	k = 2*kTTPi*frequency/tan(kTTPi*frequency/sr);

	a0 = (wc*wc*wc) / (wc*wc*wc + k*k*k + 2*wc*wc*k + 2*wc*k*k); 
	a1 = (3*wc*wc*wc) / (wc*wc*wc + k*k*k + 2*wc*wc*k + 2*wc*k*k); 
	a2 = (3*wc*wc*wc) / (wc*wc*wc + k*k*k + 2*wc*wc*k + 2*wc*k*k); 
	a3 = (wc*wc*wc) / (wc*wc*wc + k*k*k + 2*wc*wc*k + 2*wc*k*k); 

	b1 = (3*wc*wc*wc - 3*k*k*k + 2*wc*wc*k - 2*wc*k*k) / (wc*wc*wc + k*k*k + 2*wc*wc*k + 2*wc*k*k); 
	b2 = (3*wc*wc*wc + 3*k*k*k - 2*wc*wc*k - 2*wc*k*k) / (wc*wc*wc + k*k*k + 2*wc*wc*k + 2*wc*k*k); 
	b3 = (wc*wc*wc - k*k*k - 2*wc*wc*k + 2*wc*k*k) / (wc*wc*wc + k*k*k + 2*wc*wc*k + 2*wc*k*k);

	return kTTErrNone;
}


TTErr TTLowpassButterworth3::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
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
			tempy = TTAntiDenormal(a0*tempx + a1*xm1[channel] + a2*xm2[channel] + a3*xm3[channel]
			 	- b1*ym1[channel] - b2*ym2[channel] - b3*ym3[channel]);
			xm3[channel] = xm2[channel];
			xm2[channel] = xm1[channel];
			xm1[channel] = tempx;
			ym3[channel] = ym2[channel];
			ym2[channel] = ym1[channel];
			ym1[channel] = tempy;
			*outSample++ = tempy;
		}
	}
	return kTTErrNone;
}
