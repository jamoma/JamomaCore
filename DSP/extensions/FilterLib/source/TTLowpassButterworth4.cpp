/*
 * 4th order Butterworth Lowpass Filter Object
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTLowpassButterworth4.h"

#define thisTTClass			TTLowpassButterworth4
#define thisTTClassName		"lowpass.butterworth.4"
#define thisTTClassTags		"dspFilterLib, audio, processor, filter, lowpass, butterworth"


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


TTLowpassButterworth4::~TTLowpassButterworth4()
{
	;
}


TTErr TTLowpassButterworth4::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mX1.resize(mMaxNumChannels);
	mX2.resize(mMaxNumChannels);
	mX3.resize(mMaxNumChannels);
	mX4.resize(mMaxNumChannels);
	mY1.resize(mMaxNumChannels);
	mY2.resize(mMaxNumChannels);
	mY3.resize(mMaxNumChannels);
	mY4.resize(mMaxNumChannels);
	clear();
	return kTTErrNone;
}


TTErr TTLowpassButterworth4::updateSampleRate(const TTValue& oldSampleRate, TTValue&)
{
	TTValue	v(mFrequency);
	return setFrequency(v);
}


TTErr TTLowpassButterworth4::clear()
{
	mX1.assign(mMaxNumChannels, 0.0);
	mX2.assign(mMaxNumChannels, 0.0);
	mX3.assign(mMaxNumChannels, 0.0);
	mX4.assign(mMaxNumChannels, 0.0);
	mY1.assign(mMaxNumChannels, 0.0);
	mY2.assign(mMaxNumChannels, 0.0);
	mY3.assign(mMaxNumChannels, 0.0);
	mY4.assign(mMaxNumChannels, 0.0);
	return kTTErrNone;
}


TTErr TTLowpassButterworth4::setFrequency(const TTValue& newValue)
{	
	mFrequency = newValue;

	mRadians = kTTTwoPi*mFrequency;
	mRadians2 = mRadians*mRadians;
	mRadians3 = mRadians2*mRadians;
	mRadians4 = mRadians3*mRadians;
	
	mK = mRadians/tan(kTTPi*mFrequency/sr); // kTTTwoPi*frequency/tan(kTTPi*frequency/sr);
	mK2 = mK*mK;
	mK3 = mK2 * mK;
	mK4 = mK3 * mK;
	calculateCoefficients();
	return kTTErrNone;
}


void TTLowpassButterworth4::calculateCoefficients()
{   
	TTFloat64 a,b,temp;

	a = 2*(cos(kTTPi/8)+cos(3*kTTPi/8)); 
	b = 2*(1+2*cos(kTTPi/8)*cos(3*kTTPi/8)); 
	temp = (mK4 + a*mRadians*mK3 + b*mRadians2*mK2 + a*mRadians3*mK + mRadians4);

	mA0 = (mRadians4) /	temp;
	mA1 = (4*mRadians4) / temp;
	mA2 = (6*mRadians4) / temp;
//	mA3 = mA1; //mA3 = (4*mRadians4) / temp ;
//	mA4 = mA0;//mA4 = (mRadians4) / temp ;

	mB1 = (-4*mK4 - 2*a*mRadians*mK3 + 2*a*mRadians3*mK + 4*mRadians4)			/ temp;
	mB2 = (6*mK4 - 2*b*mRadians2*mK2 + 6*mRadians4)								/ temp;
	mB3 = (-4*mK4 + 2*a*mRadians*mK3 - 2*a*mRadians3*mK + 4*mRadians4)			/ temp;
	mB4 = (mK4 - a*mRadians*mK3 + b*mRadians2*mK2 - a*mRadians3*mK + mRadians4) / temp;
}


inline TTErr TTLowpassButterworth4::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	//y = TTAntiDenormal(mA0*x + mA1*mX1[channel] + mA2*mX2[channel] + mA3*mX3[channel] + mA4*mX4[channel] - mB1*mY1[channel] - mB2*mY2[channel] -mB3*mY3[channel] - mB4*mY4[channel]);
    // since mA3 = mA1 and mA0 =  mA4, we can simplyfy to
	y = mA0*(x + mX4[channel]) + mA1*( mX1[channel] + mX3[channel] ) + mA2*mX2[channel] - mB1*mY1[channel] - mB2*mY2[channel] -mB3*mY3[channel] - mB4*mY4[channel];
	TTZeroDenormal(y);

	
	mX4[channel] = mX3[channel];
	mX3[channel] = mX2[channel];
	mX2[channel] = mX1[channel];
	mX1[channel] = x;
	mY4[channel] = mY3[channel];
	mY3[channel] = mY2[channel];
	mY2[channel] = mY1[channel];
	mY1[channel] = y;
	return kTTErrNone;
}


TTErr TTLowpassButterworth4::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}
