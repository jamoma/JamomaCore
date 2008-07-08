/* 
 * TTBlue 3rd order Butterworth Highpass Filter Object
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTHighpassButterworth3.h"
#define thisTTClass TTHighpassButterworth3


TTHighpassButterworth3::TTHighpassButterworth3(TTUInt16 newMaxNumChannels)
	: TTAudioObject("filter.highpass.butterworth", newMaxNumChannels),
	xm1(NULL), xm2(NULL), xm3(NULL), ym1(NULL), ym2(NULL), ym3(NULL)
{
	// register attributes
	registerAttribute(TT("frequency"),	kTypeFloat64, &attrFrequency, (TTSetterMethod)&TTHighpassButterworth3::setFrequency);

	// register for notifications from the parent class so we can allocate memory as required
	registerMessageWithArgument(updateMaxNumChannels);
	// register for notifications from the parent class so we can recalculate coefficients as required
	registerMessageSimple(updateSr);
	// make the clear method available to the outside world
	registerMessageSimple(clear);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);			// This attribute is inherited
	setAttributeValue(TT("frequency"),		1000.0);
	setProcess((TTProcessMethod)&TTHighpassButterworth3::processAudio);
}


TTHighpassButterworth3::~TTHighpassButterworth3()
{
	free(xm1);
	free(xm2);
	free(xm3);
	free(ym1);
	free(ym2);
	free(ym3);
}


TTErr TTHighpassButterworth3::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	if(xm1)
		free(xm1);
	if(xm2)
		free(xm2);
	if(xm3)
		free(xm3);
	if(ym1)
		free(ym1);
	if(ym2)
		free(ym2);
	if(ym3)
		free(ym3);

	
	xm1 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	xm2 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	xm3 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	ym1 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	ym2 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	ym3 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	
	clear();
	return kTTErrNone;
}


TTErr TTHighpassButterworth3::updateSr()
{
	TTValue	v(attrFrequency);
	return setFrequency(v);
}


TTErr TTHighpassButterworth3::clear()
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


TTErr TTHighpassButterworth3::setFrequency(const TTValue& newValue)
{	
	attrFrequency = TTClip((double)newValue, 10., (sr*0.475));

	wc = 2*kTTPi*attrFrequency;
	k = 2*kTTPi*attrFrequency/tan(kTTPi*attrFrequency/sr);

	a0 = (k*k*k) / (wc*wc*wc + k*k*k + 2*wc*wc*k + 2*wc*k*k); 
	a1 = (-3*k*k*k) / (wc*wc*wc + k*k*k + 2*wc*wc*k + 2*wc*k*k); 
	a2 = (3*k*k*k) / (wc*wc*wc + k*k*k + 2*wc*wc*k + 2*wc*k*k); 
	a3 =  (-k*k*k) / (wc*wc*wc + k*k*k + 2*wc*wc*k + 2*wc*k*k); 

	b1 = (3*wc*wc*wc - 3*k*k*k + 2*wc*wc*k - 2*wc*k*k) / (wc*wc*wc + k*k*k + 2*wc*wc*k + 2*wc*k*k); 
	b2 = (3*wc*wc*wc + 3*k*k*k - 2*wc*wc*k - 2*wc*k*k) / (wc*wc*wc + k*k*k + 2*wc*wc*k + 2*wc*k*k); 
	b3 = (wc*wc*wc - k*k*k - 2*wc*wc*k + 2*wc*k*k) / (wc*wc*wc + k*k*k + 2*wc*wc*k + 2*wc*k*k);
	
	return kTTErrNone;
}


TTErr TTHighpassButterworth3::processAudio(TTAudioSignal& in, TTAudioSignal& out)
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
			tempy = antiDenormal(a0*tempx + a1*xm1[channel] + a2*xm2[channel] + a3*xm3[channel]
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
