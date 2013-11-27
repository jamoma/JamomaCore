/* 
 * TTBlue 2nd order Butterworth Bandpass Filter Object
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTBandpassButterworth2.h"

#define thisTTClass			TTBandpassButterworth2
#define thisTTClassName		"bandpass.butterworth.2"
#define thisTTClassTags		"dspFilterLib, audio, processor, filter, bandpass, butterworth"


TT_AUDIO_CONSTRUCTOR
{
	// register attributes
	addAttributeWithSetter(Frequency,		kTypeFloat64);
	addAttributeProperty(Frequency,			range,			TTValue(10.0, sr*0.45));
	addAttributeProperty(Frequency,			rangeChecking,	TT("clip"));

	addAttributeWithSetter(Q,				kTypeFloat64);

	// register for notifications from the parent class so we can allocate memory as required
	addUpdates(MaxNumChannels);
	// register for notifications from the parent class so we can recalculate coefficients as required
	addUpdates(SampleRate);
	// make the clear method available to the outside world
	addMessage(clear);

	// Set Defaults...
	setAttributeValue(kTTSym_maxNumChannels,	arguments);			// This attribute is inherited
	setAttributeValue(TT("frequency"),		1000.0);
	setAttributeValue(TT("q"),				50.0);
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);

}


TTBandpassButterworth2::~TTBandpassButterworth2()
{
	;
}


TTErr TTBandpassButterworth2::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mX1.resize(mMaxNumChannels);
	mX2.resize(mMaxNumChannels);
	mY1.resize(mMaxNumChannels);
	mY2.resize(mMaxNumChannels);	
	clear();
	return kTTErrNone;
}


TTErr TTBandpassButterworth2::updateSampleRate(const TTValue& oldSampleRate, TTValue&)
{
	TTValue	v(mFrequency);
	return setFrequency(v);
}


TTErr TTBandpassButterworth2::clear()
{
	mX1.assign(mMaxNumChannels, 0.0);
	mX2.assign(mMaxNumChannels, 0.0);
	mY1.assign(mMaxNumChannels, 0.0);
	mY2.assign(mMaxNumChannels, 0.0);
	return kTTErrNone;
}


TTErr TTBandpassButterworth2::setFrequency(const TTValue& newValue)
{
	mFrequency = newValue;
	calculateCoefficients();
	return kTTErrNone;
}


TTErr TTBandpassButterworth2::setQ(const TTValue& newValue)
{
	mQ = newValue;	
	calculateCoefficients();
	return kTTErrNone;
}


void TTBandpassButterworth2::calculateCoefficients()
{	
	 
	// Avoid dividing by 0
	if (mQ > 0.1)
		mBw = mFrequency/mQ;
	else
		mBw = mFrequency;
		
	mC = 1. / tan( kTTPi*(mBw/sr) );
	mD = 2. * cos( kTTTwoPi*(mFrequency/sr) );
	mA0 = 1. / (1. + mC);
	// a1 = 0.
	mA2 = -mA0;
	mB1 = mA2 * mC * mD;
	mB2 = mA0 * (mC - 1.);
}


inline TTErr TTBandpassButterworth2::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	y = mA0*x + mA2*mX2[channel] - mB1*mY1[channel] - mB2*mY2[channel];
	TTZeroDenormal(y);
	mX2[channel] = mX1[channel];
	mX1[channel] = x;
	mY2[channel] = mY1[channel];
	mY1[channel] = y;
	return kTTErrNone;
}


TTErr TTBandpassButterworth2::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

