/* 
 * Jamoma DSP 1-Pole Filter
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTOnePole.h"

#define thisTTClass			TTOnePole
#define thisTTClassName		"onepole"
#define thisTTClassTags		"dspFilterLib, audio, processor, filter, lowpass, highpass"


TT_AUDIO_CONSTRUCTOR
{
	// register attributes
	addAttributeWithSetter(Mode,		kTypeSymbol);
	
	addAttributeWithSetter(Frequency,	kTypeFloat64);
	addAttributeProperty(Frequency,		range,			TTValue(2.0, sr*0.475));
	addAttributeProperty(Frequency,		rangeChecking,	TT("clip"));
	
	addAttributeWithGetterAndSetter(Coefficient, kTypeFloat64);

	// message called as a notification from the parent class so we can allocate memory as required
	addUpdates(MaxNumChannels);
	
	// message called as a notification from the parent class so we can recalculate coefficients as required
	addUpdates(SampleRate);
	
	// make the clear method available to the outside world
	addMessage(clear);

	// Set Defaults...
	setAttributeValue(TT("mode"),			TT("lowpass"));
	setAttributeValue(TT("frequency"),		1000.0);
	setAttributeValue(kTTSym_maxNumChannels,	arguments);			// This attribute is inherited
}


TTOnePole::~TTOnePole()
{
	; // Nothing to clean up for this class
}


// Messages

TTErr TTOnePole::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mFeedback.resize(mMaxNumChannels);
	clear();
	return kTTErrNone;
}


TTErr TTOnePole::updateSampleRate(const TTValue& oldSampleRate, TTValue&)
{
	TTValue	v(mFrequency);
	return setFrequency(v);
}


TTErr TTOnePole::clear()
{
	mFeedback.assign(mMaxNumChannels, 0.0);
	return kTTErrNone;
}


// A change of the mode attribute switches the process method that is called on-the-fly

TTErr TTOnePole::setMode(const TTValue& newValue)
{
	TTSymbol mode = newValue;
	
	if (mode == TT("lowpass")) {
		setProcessMethod(processLowpass);
		setCalculateMethod(calculateLowpass);	
	}
	else if (mode == TT("highpass")) {
		setProcessMethod(processHighpass);
		setCalculateMethod(calculateHighpass);			
	}
	else
		return kTTErrInvalidValue;
		
	mMode = mode;
	return kTTErrNone;
}


// Setting the frequency calculates the coefficients for both lowpass and highpass modes

TTErr TTOnePole::setFrequency(const TTValue& newValue)
{
	TTFloat64	radians;
	
	mFrequency = newValue;
	radians = hertzToRadians(mFrequency);

	mLowpassCoefficient = sin(radians);
	mOneMinusLowpassCoefficient = 1.0 - mLowpassCoefficient;
	
	mHighpassCoefficient = -mOneMinusLowpassCoefficient;
	mOneMinusHighpassCoefficient = -mLowpassCoefficient;

	return kTTErrNone;
}


TTErr TTOnePole::setCoefficient(const TTValue& newValue)
{
	TTFloat64	radians;
	
	mLowpassCoefficient = newValue;
	mOneMinusLowpassCoefficient = 1.0 - mLowpassCoefficient;
	
	mHighpassCoefficient = -mOneMinusLowpassCoefficient;
	mOneMinusHighpassCoefficient = -mLowpassCoefficient;
	
	// FIXME: this isn't really accurate -- the frequency uses a trig function
	
	radians = mLowpassCoefficient * kTTPi;
	mFrequency = radiansToHertz(radians);
	return kTTErrNone;
}


TTErr TTOnePole::getCoefficient(TTValue& returnedValue)
{
	returnedValue = mLowpassCoefficient;
	return kTTErrNone;
}


// calculate:  y = f(x)

inline TTErr TTOnePole::calculateLowpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	y = mFeedback[channel] = TTAntiDenormal((x * mLowpassCoefficient) + (mFeedback[channel] * mOneMinusLowpassCoefficient));
	return kTTErrNone;
}


inline TTErr TTOnePole::calculateHighpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	y = mFeedback[channel] = TTAntiDenormal((x * mHighpassCoefficient) + (mFeedback[channel] * mOneMinusHighpassCoefficient));
	return kTTErrNone;
}


// process: frame-processing for blocks of N samples by M channels

TTErr TTOnePole::processLowpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateLowpass);
}


TTErr TTOnePole::processHighpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateHighpass);
}
