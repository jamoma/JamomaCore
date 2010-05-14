/* 
 * TTBlue 2-Pole Lowpass Filter Object
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTLowpassTwoPole.h"

#define thisTTClass			TTLowpassTwoPole
#define thisTTClassName		"lowpass.2"
#define thisTTClassTags		"audio, processor, filter, lowpass"


TT_AUDIO_CONSTRUCTOR
{
	// register attributes
	addAttributeWithSetter(Frequency,	kTypeFloat64);
	addAttributeProperty(Frequency,			range,			TTValue(2.0, sr*0.475));
	addAttributeProperty(Frequency,			rangeChecking,	TT("clip"));

	addAttributeWithSetter(Resonance,	kTypeFloat64);

	// register methods
	addMessage(Clear);

	// register for notifications
	addMessageWithArgument(updateMaxNumChannels);
	addMessage(updateSr);

	// Set Defaults...
	setAttributeValue(TT("MaxNumChannels"),	arguments);			// This attribute is inherited
	setAttributeValue(TT("Frequency"),		1000.0);
	setAttributeValue(TT("Resonance"),		1.0);

	setCalculateMethod(calculateValue);
	setProcessMethod(processAudio);
}


TTLowpassTwoPole::~TTLowpassTwoPole()
{
	;
}


TTErr TTLowpassTwoPole::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	mFeedback1.resize(maxNumChannels);
	mFeedback2.resize(maxNumChannels);
	Clear();
	return kTTErrNone;
}


TTErr TTLowpassTwoPole::updateSr()
{
	TTValue	v(mFrequency);
	return setFrequency(v);
}


TTErr TTLowpassTwoPole::Clear()
{   
	mFeedback1.assign(maxNumChannels, 0.0);
	mFeedback2.assign(maxNumChannels, 0.0);
	return kTTErrNone;
}


TTErr TTLowpassTwoPole::setFrequency(const TTValue& newValue)
{	
	
	mFrequency = newValue;
	mRadians = hertzToRadians(mFrequency);	
	calculateCoefficients();
	return kTTErrNone;
}


TTErr TTLowpassTwoPole::setResonance(const TTValue& newValue)
{
	mResonance = TTClip(TTFloat64(newValue), 0.001, 100.0);
	mNegOneOverResonance = -1.0/mResonance;
	calculateCoefficients();
	
	return kTTErrNone;
}


void TTLowpassTwoPole::calculateCoefficients()
{
	mCoefficientA = 2.0 * cos(mRadians) * exp(0.5 * mRadians * mNegOneOverResonance);
	mCoefficientB = exp(mRadians * mNegOneOverResonance);
	mCoefficientC = 1.0 - mCoefficientA + mCoefficientB;
}


inline TTErr TTLowpassTwoPole::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	y = TTAntiDenormal((mFeedback1[channel] * mCoefficientA) - (mFeedback2[channel] * mCoefficientB) + (x * mCoefficientC));
	mFeedback2[channel] = mFeedback1[channel];
	mFeedback1[channel] = y;
	return kTTErrNone;
}


TTErr TTLowpassTwoPole::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

