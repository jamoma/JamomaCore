/* 
 * TTBlue 4th order Linkwitz Riley Lowpass filter
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTLowpassLinkwitzRiley2.h"

#define thisTTClass			TTLowpassLinkwitzRiley2
#define thisTTClassName		"lowpass.linkwitzriley.2"
#define thisTTClassTags		"dspFilterLib, audio, processor, filter, lowpass"


TT_AUDIO_CONSTRUCTOR
{
	// register attributes
	addAttributeWithSetter(Frequency,	kTypeFloat64);
	addAttributeProperty(Frequency,			range,			TTValue(10.0, sr*0.475));
	addAttributeProperty(Frequency,			rangeChecking,	TT("clip"));

	// register for notifications from the parent class so we can allocate memory as required
	addUpdates(MaxNumChannels);
	// register for notifications from the parent class so we can recalculate coefficients as required
	addUpdates(SampleRate);
	// make the clear method available to the outside world
	addMessage(clear);

	// Set Defaults...
	setAttributeValue(kTTSym_maxNumChannels,	arguments);			// This attribute is inherited
	setAttributeValue(TT("frequency"),		1000.0);
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);

}


TTLowpassLinkwitzRiley2::~TTLowpassLinkwitzRiley2()
{
	;
}


TTErr TTLowpassLinkwitzRiley2::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mX1.resize(mMaxNumChannels);
	mX2.resize(mMaxNumChannels);
	mY1.resize(mMaxNumChannels);
	mY2.resize(mMaxNumChannels);
	clear();
	return kTTErrNone;
}


TTErr TTLowpassLinkwitzRiley2::updateSampleRate(const TTValue& oldSampleRate, TTValue&)
{
	TTValue	v(mFrequency);
	return setFrequency(v);
}


TTErr TTLowpassLinkwitzRiley2::clear()
{
	mX1.assign(mMaxNumChannels, 0.0);
	mX2.assign(mMaxNumChannels, 0.0);
	mY1.assign(mMaxNumChannels, 0.0);
	mY2.assign(mMaxNumChannels, 0.0);
	return kTTErrNone;
	
}


TTErr TTLowpassLinkwitzRiley2::setFrequency(const TTValue& newValue)
{
	mFrequency = newValue;
    
	mRadians = kTTTwoPi*mFrequency;
	mK =  mRadians/tan(kTTPi*mFrequency/sr); // kTTTwoPi*frequency/tan(kTTPi*frequency/sr);
    mRadiansSquared = mRadians * mRadians;
	mKSquared = mK * mK;
	calculateCoefficients();
	return kTTErrNone;
}	

void TTLowpassLinkwitzRiley2::calculateCoefficients()
{   
	TTFloat64 temp = 2*mRadians*mK;
	
	mA0 = (mRadiansSquared)/(mKSquared+mRadiansSquared+temp); 
	mA1 = (2*mRadiansSquared)/(mKSquared+mRadiansSquared+temp); 
	//mA2 = mA0; //mA2 = (mRadiansSquared)/(mKSquared+mRadiansSquared+temp); 

	mB1 = (-2*mKSquared+2*mRadiansSquared)/(mKSquared+mRadiansSquared+temp); 
	mB2 = (-temp+mKSquared+mRadiansSquared)/(mKSquared+mRadiansSquared+temp);	
}


inline TTErr TTLowpassLinkwitzRiley2::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	//y = TTAntiDenormal(mA0*x + mA1*mX1[channel] + mA2*mX2[channel] - mB1*mY1[channel] - mB2*mY2[channel]);
	//since mA2 = mA0, we write
	y = mA0* (x + mX2[channel]) + mA1*mX1[channel] - mB1*mY1[channel] - mB2*mY2[channel];
	TTZeroDenormal(y);
	mX2[channel] = mX1[channel];
	mX1[channel] = x;
	mY2[channel] = mY1[channel];
	mY1[channel] = y;
	return kTTErrNone;
}



TTErr TTLowpassLinkwitzRiley2::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}
