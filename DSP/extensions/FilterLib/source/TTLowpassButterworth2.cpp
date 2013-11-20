/* 
 * TTBlue 2nd order Butterworth Lowpass Filter Object
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTLowpassButterworth2.h"

#define thisTTClass			TTLowpassButterworth2
#define thisTTClassName		"lowpass.butterworth.2"
#define thisTTClassTags		"dspFilterLib, audio, processor, filter, lowpass, butterworth"


TT_AUDIO_CONSTRUCTOR
{
	// register attributes
	addAttributeWithSetter(Frequency,		kTypeFloat64);
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
	setCalculateMethod(calculateValue);
	setProcessMethod(processAudio);
}


TTLowpassButterworth2::~TTLowpassButterworth2()
{
	;
}


TTErr TTLowpassButterworth2::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mX1.resize(mMaxNumChannels);
	mX2.resize(mMaxNumChannels);
	mY1.resize(mMaxNumChannels);
	mY2.resize(mMaxNumChannels);	
	clear();
	return kTTErrNone;
}


TTErr TTLowpassButterworth2::updateSampleRate(const TTValue& oldSampleRate, TTValue&)
{
	TTValue	v(mFrequency);
	return setFrequency(v);
}


TTErr TTLowpassButterworth2::clear()
{
	mX1.assign(mMaxNumChannels, 0.0);
	mX2.assign(mMaxNumChannels, 0.0);
	mY1.assign(mMaxNumChannels, 0.0);
	mY2.assign(mMaxNumChannels, 0.0);
	return kTTErrNone;
}


TTErr TTLowpassButterworth2::setFrequency(const TTValue& newValue)
{
	mFrequency = newValue;

	mC = 1.0 / ( tan( kTTPi*(mFrequency/sr) ) );
	mCSquared = mC * mC;
	calculateCoefficients();
	return kTTErrNone;
}


void TTLowpassButterworth2::calculateCoefficients()
{	
	mA0 = 1.0 / (1.0 + kTTSqrt2*mC + mCSquared);
	mA1 = 2.0*mA0;
	//mA2 = mA0;
	mB1 = mA1*( 1.0 - mCSquared ); //2*mA0*( 1 - mCSquared );
	mB2 = mA0 * (1.0 - kTTSqrt2*mC + mCSquared);
}


inline TTErr TTLowpassButterworth2::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	//y = TTAntiDenormal(mA0*x + mA1*mX1[channel] + mA2*mX2[channel] - mB1*mY1[channel] - mB2*mY2[channel]);
	// since mA0 = mA2, one can optimize to:
	y = mA0*(x + mX2[channel]) + mA1*mX1[channel] - mB1*mY1[channel] - mB2*mY2[channel];
	TTZeroDenormal(y);
	mX2[channel] = mX1[channel];
	mX1[channel] = x;
	mY2[channel] = mY1[channel];
	mY1[channel] = y;
	return kTTErrNone;
}


TTErr TTLowpassButterworth2::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

