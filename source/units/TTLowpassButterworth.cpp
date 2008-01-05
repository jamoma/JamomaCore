/* 
 * TTBlue Butterworth Lowpass Filter Object
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTLowpassButterworth.h"


TTLowpassButterworth::TTLowpassButterworth(TTUInt8 newMaxNumChannels)
	: TTAudioObject::TTAudioObject(newMaxNumChannels)
{
	registerParameter(TT("bypass"),		kTypeInt32,		&attrBypass,	(TTGetterMethod)NULL, (TTSetterMethod)&TTLowpassButterworth::setBypass);
	registerParameter(TT("frequency"),	kTypeInt32,		&attrFrequency,	(TTGetterMethod)NULL, (TTSetterMethod)&TTLowpassButterworth::setFrequency);

	// Set Defaults...
	setParameterValue(TT("maxNumChannels"),	newMaxNumChannels);		// This parameter is not declared here because it is inherited
	setParameterValue(TT("bypass"),			kTTBoolNo);
	setParameterValue(TT("frequency"),		4000.0);
}


TTLowpassButterworth::~TTLowpassButterworth()
{
	free(xm1);
	free(xm2);
	free(ym1);
	free(ym2);
}


TTErr TTLowpassButterworth::setMaxNumChannels(const TTValue& newValue)
{
	maxNumChannels = newValue;
	xm1 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	xm2 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	ym1 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	ym2 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	clear();
	
	return kTTErrNone;
}


TTErr TTLowpassButterworth::clear()
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


TTErr TTLowpassButterworth::setBypass(TTValue& newValue)
{
	attrBypass = newValue;
	if(attrBypass)
		return setProcess((TTProcessMethod)&TTAudioObject::bypassProcess);
	else
		return setProcess((TTProcessMethod)&TTLowpassButterworth::processAudio);
}


TTErr TTLowpassButterworth::setFrequency(TTValue& newValue)
{
	attrFrequency = newValue;
	c = 1 / ( tan( kTTPi*(attrFrequency/sr) ) );
	a0 = 1 / (1 + kTTSqrt2*c + c*c);
	a1 = 2*a0;
	a2 = a0;
	b1 = 2*a0*( 1 - c*c );
	b2 = a0 * (1 - kTTSqrt2*c + c*c);
	return kTTErrNone;
}


// DSP LOOP
TTErr TTLowpassButterworth::processAudio(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs;
	TTSampleValue	*inSample,
					*outSample;
	TTFloat64		tempx,
					tempy;
	short			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	short			channel;

	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.vs;
		
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

