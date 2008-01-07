/* 
 * TTBlue Butterworth Band Reject Filter Object
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTBandRejectButterworth.h"


TTBandRejectButterworth::TTBandRejectButterworth(TTUInt8 newMaxNumChannels)
	: TTAudioObject::TTAudioObject(newMaxNumChannels),
	xm1(NULL), xm2(NULL), ym1(NULL), ym2(NULL)
{
	// register parameters
	registerParameter(TT("frequency"),	kTypeFloat64, &attrFrequency, (TTSetterMethod)&TTBandRejectButterworth::setFrequency);

	// register for notifications from the parent class so we can allocate memory as required
	registerMessage(TT("updateMaxNumChannels"), (TTMethod)&TTBandRejectButterworth::updateMaxNumChannels);
	// register for notifications from the parent class so we can recalculate coefficients as required
	registerMessage(TT("updateSr"),	(TTMethod)&TTBandRejectButterworth::updateSr);
	// make the clear method available to the outside world
	registerMessage(TT("clear"), (TTMethod)&TTBandRejectButterworth::clear);

	// Set Defaults...
	setParameterValue(TT("maxNumChannels"),	newMaxNumChannels);			// This parameter is inherited
	setParameterValue(TT("frequency"),		4000.0);
	setProcess((TTProcessMethod)&TTBandRejectButterworth::processAudio);
}


TTBandRejectButterworth::~TTBandRejectButterworth()
{
	free(xm1);
	free(xm2);
	free(ym1);
	free(ym2);
}


TTErr TTBandRejectButterworth::updateMaxNumChannels()
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


TTErr TTBandRejectButterworth::updateSr()
{
	TTValue	v(attrFrequency);
	return setFrequency(v);
}


TTErr TTBandRejectButterworth::clear()
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


TTErr TTBandRejectButterworth::setFrequency(TTValue& newValue)
{
	attrFrequency = newValue;
	
	return calculateCoefficients();
}


TTErr TTBandRejectButterworth::setQ(TTValue& newValue)
{
	attrQ = newValue;
	
	return calculateCoefficients();
}


TTErr TTBandRejectButterworth::calculateCoefficients()
{
	c = tan( kTTPi*((attrFrequency/attrQ)/sr) );
	d = 2.0 * cos( 2.0*kTTPi*(attrFrequency/sr) );
	a0 = 1.0 / (1.0 + c);
	a1 = -1.0 * a0 * d;
	a2 = a0;
	b1 = a1;
	b2 = a0 * (1.0 - c);
	
	return kTTErrNone;
}


TTErr TTBandRejectButterworth::processAudio(TTAudioSignal& in, TTAudioSignal& out)
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
			tempy = antiDenormal(a0*tempx + a1*xm1[channel] + a2*xm2[channel] - b1*ym1[channel] - b2*ym2[channel]);
			xm2[channel] = xm1[channel];
			xm1[channel] = tempx;
			ym2[channel] = ym1[channel];
			ym1[channel] = tempy;
			*outSample++ = tempy;
		}
	}
	return kTTErrNone;
}

