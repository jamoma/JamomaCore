/* 
 * TTBlue 1st order Butterworth Highpass Filter Object
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTHighpassButterworth1.h"
#define thisTTClass TTHighpassButterworth1


TTHighpassButterworth1::TTHighpassButterworth1(TTUInt16 newMaxNumChannels)
	: TTAudioObject("filter.highpass.butterworth", newMaxNumChannels),
	xm1(NULL), ym1(NULL)
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


TTHighpassButterworth1::~TTHighpassButterworth1()
{
	delete[] xm1;
	delete[] ym1;
}


TTErr TTHighpassButterworth1::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	delete[] xm1;
	delete[] ym1;
	
	xm1 = new TTFloat64[maxNumChannels];
	ym1 = new TTFloat64[maxNumChannels];
	
	clear();
	return kTTErrNone;
}


TTErr TTHighpassButterworth1::updateSr()
{
	TTValue	v(frequency);
	return setfrequency(v);
}


TTErr TTHighpassButterworth1::clear()
{
	short i;

	for(i=0; i<maxNumChannels; i++){
		xm1[i] = 0.0;
		ym1[i] = 0.0;
	}
	return kTTErrNone;
}


TTErr TTHighpassButterworth1::setfrequency(const TTValue& newValue)
{	
	frequency = newValue;

	wc = 2*kTTPi*frequency;
	k = 2*kTTPi*frequency/tan(kTTPi*frequency/sr);

	a0 = k/(k+wc); 
	a1 = -k/(k+wc); 

	b1 = (wc-k)/(k+wc);
	
	return kTTErrNone;
}


TTErr TTHighpassButterworth1::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
			tempy = TTAntiDenormal(a0*tempx + a1*xm1[channel] - b1*ym1[channel]);
			xm1[channel] = tempx;
			ym1[channel] = tempy;
			*outSample++ = tempy;
		}
	}
	return kTTErrNone;
}
