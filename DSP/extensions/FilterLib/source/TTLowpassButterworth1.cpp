/* 
 * TTBlue 1st order Butterworth Lowpass Filter Object
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTLowpassButterworth1.h"

#define thisTTClass			TTLowpassButterworth1
#define thisTTClassName		"lowpass.butterworth.1"
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


TTLowpassButterworth1::~TTLowpassButterworth1()
{
	;
}


TTErr TTLowpassButterworth1::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mX1.resize(mMaxNumChannels);
	mY1.resize(mMaxNumChannels);	
	clear();
	return kTTErrNone;
}


TTErr TTLowpassButterworth1::updateSampleRate(const TTValue& oldSampleRate, TTValue&)
{
	TTValue	v(mFrequency);
	return setFrequency(v);
}


TTErr TTLowpassButterworth1::clear()
{
	mX1.assign(mMaxNumChannels, 0.0);
	mY1.assign(mMaxNumChannels, 0.0);
	return kTTErrNone;
}


TTErr TTLowpassButterworth1::setFrequency(const TTValue& newValue)
{
	mFrequency = newValue;
	mRadians = kTTTwoPi*mFrequency;
	mK = mRadians/tan(kTTPi*mFrequency/sr);
	calculateCoefficients();
	return kTTErrNone;
}


void TTLowpassButterworth1::calculateCoefficients()
{
	mA0 = mK/(mK+mRadians); 
	//mA1 = mA0; 
	mB1 = (mRadians-mK)/(mK+mRadians);
}	


inline TTErr TTLowpassButterworth1::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	// y = mA0*x + mA1*mX1[channel] - mB1*mY1[channel];
	// since mA0 = mA1, we can simplyfy to
	y = mA0*(x + mX1[channel]) - mB1*mY1[channel];
	TTZeroDenormal(y);
	
	mX1[channel] = x;
	mY1[channel] = y;
	return kTTErrNone;
}


TTErr TTLowpassButterworth1::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}
