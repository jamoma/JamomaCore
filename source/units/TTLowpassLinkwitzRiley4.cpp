/* 
 * TTBlue 4th order Linkwitz Riley Lowpass filter
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTLowpassLinkwitzRiley4.h"
#define thisTTClass TTLowpassLinkwitzRiley4


TTLowpassLinkwitzRiley4::TTLowpassLinkwitzRiley4(TTUInt16 newMaxNumChannels)
	: TTAudioObject("filter.lowpass.linkwitzRiley4", newMaxNumChannels),
	xm1(NULL), xm2(NULL), xm3(NULL), xm4(NULL), ym1(NULL), ym2(NULL), ym3(NULL), ym4(NULL)
{
	// register attributes
	registerAttribute(TT("frequency"),	kTypeFloat64, &attrFrequency, (TTSetterMethod)&TTLowpassLinkwitzRiley4::setFrequency);

	// register for notifications from the parent class so we can allocate memory as required
	registerMessage(TT("updateMaxNumChannels"), (TTMethod)&TTLowpassLinkwitzRiley4::updateMaxNumChannels);
	// register for notifications from the parent class so we can recalculate coefficients as required
	registerMessage(TT("updateSr"),	(TTMethod)&TTLowpassLinkwitzRiley4::updateSr, kTTMessagePassNone);
	// make the clear method available to the outside world
	registerMessage(TT("clear"), (TTMethod)&TTLowpassLinkwitzRiley4::clear, kTTMessagePassNone);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);			// This attribute is inherited
	setAttributeValue(TT("frequency"),		1000.0);
	setProcess((TTProcessMethod)&TTLowpassLinkwitzRiley4::processAudio);
}


TTLowpassLinkwitzRiley4::~TTLowpassLinkwitzRiley4()
{
	free(xm1);
	free(xm2);
	free(xm3);
	free(xm4);
	free(ym1);
	free(ym2);
	free(ym3);
	free(ym4);
}


TTErr TTLowpassLinkwitzRiley4::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	if(xm1)
		free(xm1);
	if(xm2)
		free(xm2);
	if(xm3)
		free(xm3);
	if(xm4)
		free(xm4);
	if(ym1)
		free(ym1);
	if(ym2)
		free(ym2);
	if(ym3)
		free(ym3);
	if(ym4)
		free(ym4);
	
	xm1 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	xm2 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	xm3 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	xm4 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	ym1 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	ym2 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	ym3 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	ym4 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	
	clear();
	return kTTErrNone;
}


TTErr TTLowpassLinkwitzRiley4::updateSr()
{
	TTValue	v(attrFrequency);
	return setFrequency(v);
}


TTErr TTLowpassLinkwitzRiley4::clear()
{
	short i;

	for(i=0; i<maxNumChannels; i++){
		xm1[i] = 0.0;
		xm2[i] = 0.0;
		xm3[i] = 0.0;
		xm4[i] = 0.0;
		ym1[i] = 0.0;
		ym2[i] = 0.0;
		ym3[i] = 0.0;
		ym4[i] = 0.0;
	}
	return kTTErrNone;
}


TTErr TTLowpassLinkwitzRiley4::setFrequency(const TTValue& newValue)
{
	attrFrequency = TTClip((double)newValue, 10., (sr*0.475));

	wc = 2*kTTPi*attrFrequency;
	k = 2*kTTPi*attrFrequency/tan(kTTPi*attrFrequency/sr);

	a0 = pow(wc,4)/(4*pow(wc,2)*pow(k,2)+2*sqrt(2.)*pow(wc,3)*k+pow(k,4)+2*sqrt(2.)*wc*pow(k,3)+pow(wc,4));	
	a1 = 4*pow(wc,4)/(4*pow(wc,2)*pow(k,2)+2*sqrt(2.)*pow(wc,3)*k+pow(k,4)+2*sqrt(2.)*wc*pow(k,3)+pow(wc,4));
	a2 = 6*pow(wc,4)/(4*pow(wc,2)*pow(k,2)+2*sqrt(2.)*pow(wc,3)*k+pow(k,4)+2*sqrt(2.)*wc*pow(k,3)+pow(wc,4));
	a3 = 4*pow(wc,4)/(4*pow(wc,2)*pow(k,2)+2*sqrt(2.)*pow(wc,3)*k+pow(k,4)+2*sqrt(2.)*wc*pow(k,3)+pow(wc,4));
	a4 = pow(wc,4)/(4*pow(wc,2)*pow(k,2)+2*sqrt(2.)*pow(wc,3)*k+pow(k,4)+2*sqrt(2.)*wc*pow(k,3)+pow(wc,4));
	
	b1 = (4*pow(wc,4)+4*sqrt(2.)*pow(wc,3)*k-4*pow(k,4)-4*sqrt(2.)*wc*pow(k,3))/(4*pow(wc,2)*pow(k,2)+2*sqrt(2.)*pow(wc,3)*k+pow(k,4)+2*sqrt(2.)*wc*pow(k,3)+pow(wc,4));
	b2 = (6*pow(wc,4)-8*pow(wc,2)*pow(k,2)+6*pow(k,4))/(4*pow(wc,2)*pow(k,2)+2*sqrt(2.)*pow(wc,3)*k+pow(k,4)+2*sqrt(2.)*wc*pow(k,3)+pow(wc,4));
	b3 = (-4*sqrt(2.)*pow(wc,3)*k+4*pow(wc,4)+4*sqrt(2.)*wc*pow(k,3)-4*pow(k,4))/(4*pow(wc,2)*pow(k,2)+2*sqrt(2.)*pow(wc,3)*k+pow(k,4)+2*sqrt(2.)*wc*pow(k,3)+pow(wc,4));
	b4 = (pow(k,4)-2*sqrt(2.)*pow(wc,3)*k+pow(wc,4)-2*sqrt(2.)*wc*pow(k,3)+4*pow(wc,2)*pow(k,2))/(4*pow(wc,2)*pow(k,2)+2*sqrt(2.)*pow(wc,3)*k+pow(k,4)+2*sqrt(2.)*wc*pow(k,3)+pow(wc,4));	
	
	return kTTErrNone;
}


TTErr TTLowpassLinkwitzRiley4::processAudio(TTAudioSignal& in, TTAudioSignal& out)
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
			tempy = antiDenormal(a0*tempx + a1*xm1[channel] + a2*xm2[channel] + a3*xm3[channel] + a4*xm4[channel]
				- b1*ym1[channel] - b2*ym2[channel] -b3*ym3[channel] - b4*ym4[channel]);
			xm4[channel] = xm3[channel];
			xm3[channel] = xm2[channel];
			xm2[channel] = xm1[channel];
			xm1[channel] = tempx;
			ym4[channel] = ym3[channel];
			ym3[channel] = ym2[channel];
			ym2[channel] = ym1[channel];
			ym1[channel] = tempy;
			*outSample++ = tempy;
		}
	}
	return kTTErrNone;
}

