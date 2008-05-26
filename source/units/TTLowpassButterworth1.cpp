/* 
 * TTBlue 1st order Butterworth Lowpass Filter Object
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTLowpassButterworth1.h"


TTLowpassButterworth1::TTLowpassButterworth1(TTUInt8 newMaxNumChannels)
	: TTAudioObject("filter.lowpass.butterworth", newMaxNumChannels),
	xm1(NULL), ym1(NULL)
{
	// register attributes
	registerAttribute(TT("frequency"),	kTypeFloat64, &attrFrequency, (TTSetterMethod)&TTLowpassButterworth1::setFrequency);

	// register for notifications from the parent class so we can allocate memory as required
	registerMessage(TT("updateMaxNumChannels"), (TTMethod)&TTLowpassButterworth1::updateMaxNumChannels, kTTMessagePassNone);
	// register for notifications from the parent class so we can recalculate coefficients as required
	registerMessage(TT("updateSr"),	(TTMethod)&TTLowpassButterworth1::updateSr, kTTMessagePassNone);
	// make the clear method available to the outside world
	registerMessage(TT("clear"), (TTMethod)&TTLowpassButterworth1::clear, kTTMessagePassNone);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);			// This attribute is inherited
	setAttributeValue(TT("frequency"),		1000.0);
	setProcess((TTProcessMethod)&TTLowpassButterworth1::processAudio);
}


TTLowpassButterworth1::~TTLowpassButterworth1()
{
	free(xm1);
	free(ym1);
}


TTErr TTLowpassButterworth1::updateMaxNumChannels()
{
	if(xm1)
		free(xm1);
	if(ym1)
		free(ym1);
	
	xm1 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	ym1 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	
	clear();
	return kTTErrNone;
}


TTErr TTLowpassButterworth1::updateSr()
{
	TTValue	v(attrFrequency);
	return setFrequency(TTATTR, v);
}


TTErr TTLowpassButterworth1::clear()
{
	short i;

	for(i=0; i<maxNumChannels; i++){
		xm1[i] = 0.0;
		ym1[i] = 0.0;
	}
	return kTTErrNone;
}


TTErr TTLowpassButterworth1::setFrequency(const TTAttribute&, const TTValue& newValue)
{
	attrFrequency = TTClip((double)newValue, 10., (sr*0.475));

	wc = 2*kTTPi*attrFrequency;
	k = 2*kTTPi*attrFrequency/tan(kTTPi*attrFrequency/sr);

	a0 = wc/(k+wc); 
	a1 = wc/(k+wc);  

	b1 = (wc-k)/(k+wc); 

	return kTTErrNone;
}


TTErr TTLowpassButterworth1::processAudio(TTAudioSignal& in, TTAudioSignal& out)
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
		vs = in.getVectorSize();
		
		// This inner loop works through each sample within the channel one at a time
		while(vs--){
			tempx = *inSample++;
			tempy = antiDenormal(a0*tempx + a1*xm1[channel] - b1*ym1[channel]);
			xm1[channel] = tempx;
			ym1[channel] = tempy;
			*outSample++ = tempy;
		}
	}
	return kTTErrNone;
}
