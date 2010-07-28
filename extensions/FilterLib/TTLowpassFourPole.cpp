/* 
 * TTBlue 4-Pole Lowpass Filter Object
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTLowpassFourPole.h"

#define thisTTClass			TTLowpassFourPole
#define thisTTClassName		"lowpass.4"
#define thisTTClassTags		"audio, processor, filter, lowpass"


TT_AUDIO_CONSTRUCTOR
{
	// register attributes
	addAttributeWithSetter(Frequency,	kTypeFloat64);
	addAttributeProperty(Frequency,			range,			TTValue(2.0, sr*0.475));
	addAttributeProperty(Frequency,			rangeChecking,	TT("clip"));

	addAttributeWithSetter(Resonance,	kTypeFloat64);
	addAttributeProperty(Resonance,			range,			TTValue(0.01, 100.0));
	addAttributeProperty(Resonance,			rangeChecking,	TT("cliplow"));

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


TTLowpassFourPole::~TTLowpassFourPole()
{
	;
}


TTErr TTLowpassFourPole::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	mX1.resize(maxNumChannels);
	mX2.resize(maxNumChannels);
	mX3.resize(maxNumChannels);
	mX4.resize(maxNumChannels);
	mY1.resize(maxNumChannels);
	mY2.resize(maxNumChannels);
	mY3.resize(maxNumChannels);
	mY4.resize(maxNumChannels);
	Clear();
	return kTTErrNone;
}


TTErr TTLowpassFourPole::updateSr()
{
	TTValue	v(mFrequency);
	return setFrequency(v);
}


TTErr TTLowpassFourPole::Clear()
{
	mX1.assign(maxNumChannels, 0.0);
	mX2.assign(maxNumChannels, 0.0);
	mX3.assign(maxNumChannels, 0.0);
	mX4.assign(maxNumChannels, 0.0);
	mY1.assign(maxNumChannels, 0.0);
	mY2.assign(maxNumChannels, 0.0);
	mY3.assign(maxNumChannels, 0.0);
	mY4.assign(maxNumChannels, 0.0);
	return kTTErrNone;
}


TTErr TTLowpassFourPole::setFrequency(const TTValue& newValue)
{	
	TTFloat64	radians;

	mFrequency = newValue;
	radians = hertzToRadians(mFrequency);
	mCoefficientF = radians * 1.16;
	mCoefficientSquaredF = mCoefficientF * mCoefficientF;
	mOneMinusCoefficientF = 1.0 - mCoefficientF;
	calculateCoefficients();
	return kTTErrNone;
}


TTErr TTLowpassFourPole::setResonance(const TTValue& newValue)
{
	mResonance = newValue;
	mDeciResonance = mResonance * 0.1;
	calculateCoefficients();
	return kTTErrNone;
}


void TTLowpassFourPole::calculateCoefficients()
{
	mCoefficientFB = mDeciResonance * (1.0 - 0.15 * mCoefficientSquaredF);
	mCoefficientG = TTAntiDenormal(0.35013 * (mCoefficientSquaredF * mCoefficientSquaredF)); 
}


inline TTErr TTLowpassFourPole::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTSampleValue tempSample = x;

	tempSample -= mY4[channel] * mCoefficientFB;
	TTZeroDenormal(tempSample);
	tempSample *= mCoefficientG;
	
	mY1[channel] = tempSample + 0.3 * mX1[channel] + mOneMinusCoefficientF * mY1[channel];
	TTZeroDenormal(mY1[channel]);
	mX1[channel] = tempSample;
	mY2[channel] = mY1[channel] + 0.3 * mX2[channel] + mOneMinusCoefficientF * mY2[channel];
	TTZeroDenormal(mY2[channel]);
	mX2[channel] = mY1[channel];
	mY3[channel] = mY2[channel] + 0.3 * mX3[channel] + mOneMinusCoefficientF * mY3[channel];
	TTZeroDenormal(mY3[channel] );
	mX3[channel] = mY2[channel];
	mY4[channel] = mY3[channel] + 0.3 * mX4[channel] + mOneMinusCoefficientF * mY4[channel];
	TTZeroDenormal(mY4[channel]);
	mX4[channel] = mY3[channel];
	tempSample = mY4[channel];
	
	y = tempSample;
	return kTTErrNone;
}


TTErr TTLowpassFourPole::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

