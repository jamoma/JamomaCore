/* 
 * TTBlue 4th order Linkwitz Riley Lowpass filter
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTLowpassLinkwitzRiley2.h"
#define thisTTClass TTLowpassLinkwitzRiley2


TTLowpassLinkwitzRiley2::TTLowpassLinkwitzRiley2(TTUInt16 newMaxNumChannels)
	: TTAudioObject("filter.lowpass.linkwitzRiley4", newMaxNumChannels),
	xm1(NULL), xm2(NULL), ym1(NULL), ym2(NULL)
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


TTLowpassLinkwitzRiley2::~TTLowpassLinkwitzRiley2()
{
	delete[] xm1;
	delete[] xm2;
	delete[] ym1;
	delete[] ym2;
}


TTErr TTLowpassLinkwitzRiley2::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	delete[] xm1;
	delete[] xm2;
	delete[] ym1;
	delete[] ym2;
	
	xm1 = new TTFloat64[maxNumChannels];
	xm2 = new TTFloat64[maxNumChannels];
	ym1 = new TTFloat64[maxNumChannels];
	ym2 = new TTFloat64[maxNumChannels];
	
	clear();
	return kTTErrNone;
}


TTErr TTLowpassLinkwitzRiley2::updateSr()
{
	TTValue	v(frequency);
	return setfrequency(v);
}


TTErr TTLowpassLinkwitzRiley2::clear()
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


TTErr TTLowpassLinkwitzRiley2::setfrequency(const TTValue& newValue)
{
	frequency = newValue;

	wc = 2*kTTPi*frequency;
	k = 2*kTTPi*frequency/tan(kTTPi*frequency/sr);

	a0 = (wc*wc)/(k*k+wc*wc+2*wc*k); 
	a1 = (2*wc*wc)/(k*k+wc*wc+2*wc*k); 
	a2 = (wc*wc)/(k*k+wc*wc+2*wc*k); 

	b1 = (-2*k*k+2*wc*wc)/(k*k+wc*wc+2*wc*k); 
	b2 = (-2*wc*k+k*k+wc*wc)/(k*k+wc*wc+2*wc*k);
	
	return kTTErrNone;
}


TTErr TTLowpassLinkwitzRiley2::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
			tempy = TTAntiDenormal(a0*tempx + a1*xm1[channel] + a2*xm2[channel] - b1*ym1[channel] - b2*ym2[channel]);
			xm2[channel] = xm1[channel];
			xm1[channel] = tempx;
			ym2[channel] = ym1[channel];
			ym1[channel] = tempy;
			*outSample++ = tempy;
		}
	}
	return kTTErrNone;
}

