/* 
 * TTBlue 2nd order Butterworth Band Reject Filter Object
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTBandRejectButterworth2.h"

#define thisTTClass			TTBandrejectButterworth2
#define thisTTClassName		"bandreject.butterworth.2"
#define thisTTClassTags		"dspFilterLib, audio, processor, filter, notch, butterworth"


TT_AUDIO_CONSTRUCTOR
{
	// register attributes
	addAttributeWithSetter(Frequency,	kTypeFloat64);
	addAttributeProperty(Frequency,			range,			TTValue(10.0, sr*0.45));
	addAttributeProperty(Frequency,			rangeChecking,	TT("clip"));

	addAttributeWithSetter(Q,			kTypeFloat64);

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


TTBandrejectButterworth2::~TTBandrejectButterworth2()
{
	;
}


TTErr TTBandrejectButterworth2::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mX1.resize(mMaxNumChannels);
	mX2.resize(mMaxNumChannels);
	mY1.resize(mMaxNumChannels);
	mY2.resize(mMaxNumChannels);	
	clear();
	return kTTErrNone;
}


TTErr TTBandrejectButterworth2::updateSampleRate(const TTValue& oldSampleRate, TTValue&)
{
	TTValue	v(mFrequency);
	return setFrequency(v);
}


TTErr TTBandrejectButterworth2::clear()
{
	mX1.assign(mMaxNumChannels, 0.0);
	mX2.assign(mMaxNumChannels, 0.0);
	mY1.assign(mMaxNumChannels, 0.0);
	mY2.assign(mMaxNumChannels, 0.0);
	return kTTErrNone;
}


TTErr TTBandrejectButterworth2::setFrequency(const TTValue& newValue)
{
	mFrequency = newValue;
	calculateCoefficients();
	return kTTErrNone;
}


TTErr TTBandrejectButterworth2::setQ(const TTValue& newValue)
{
	mQ = newValue;
	calculateCoefficients();
	return kTTErrNone;
}


void TTBandrejectButterworth2::calculateCoefficients()
{
	// Avoid dividing by zero
	if (mQ > 0.1)
		mBw = mFrequency/mQ;
	else
		mBw = mFrequency/0.1;
	mC = tan( kTTPi*(mBw/sr) );
	mD = cos( kTTTwoPi*(mFrequency/sr) );
	mA0 = 1.0 / (1.0 + mC);
	mA1 = -2.0 * mA0 * mD;
	//mA2 = mA0;
	//mB1 = mA1;
	mB2 = mA0 * (1.0 - mC);
}

inline TTErr TTBandrejectButterworth2::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	//y = TTAntiDenormal(mA0*x + mA1*mX1[channel] + mA2*mX2[channel] - mB1*mY1[channel] - mB2*mY2[channel]);
	// since mA0 = mA2 nd mB1 = mA1, one can optimize to:
	 y = mA0*(x + mX2[channel]) + mA1*(mX1[channel] - mY1[channel]) - mB2*mY2[channel];
	TTZeroDenormal(y);
	mX2[channel] = mX1[channel];
	mX1[channel] = x;
	mY2[channel] = mY1[channel];
	mY1[channel] = y;
	return kTTErrNone;
}


TTErr TTBandrejectButterworth2::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}
