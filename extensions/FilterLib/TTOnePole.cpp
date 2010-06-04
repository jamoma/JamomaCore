/* 
 * Jamoma DSP 1-Pole Filter
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTOnePole.h"

#define thisTTClass			TTOnePole
#define thisTTClassName		"onepole"
#define thisTTClassTags		"audio, processor, filter, lowpass, highpass"


TT_AUDIO_CONSTRUCTOR
{
	// register attributes
	addAttributeWithSetter(Mode,		kTypeSymbol);
	
	addAttributeWithSetter(Frequency,	kTypeFloat64);
	addAttributeProperty(Frequency,		range,			TTValue(2.0, sr*0.475));
	addAttributeProperty(Frequency,		rangeChecking,	TT("clip"));

	// message called as a notification from the parent class so we can allocate memory as required
	addMessageWithArgument(updateMaxNumChannels);
	
	// message called as a notification from the parent class so we can recalculate coefficients as required
	addMessage(updateSr);
	
	// make the clear method available to the outside world
	addMessage(Clear);

	// Set Defaults...
	setAttributeValue(TT("Mode"),			TT("lowpass"));
	setAttributeValue(TT("Frequency"),		1000.0);
	setAttributeValue(TT("MaxNumChannels"),	arguments);			// This attribute is inherited
}


TTOnePole::~TTOnePole()
{
	; // Nothing to clean up for this class
}


// Messages

TTErr TTOnePole::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	mFeedback.resize(maxNumChannels);
	Clear();
	return kTTErrNone;
}


TTErr TTOnePole::updateSr()
{
	TTValue	v(mFrequency);
	return setFrequency(v);
}


TTErr TTOnePole::Clear()
{
	mFeedback.assign(maxNumChannels, 0.0);
	return kTTErrNone;
}


// A change of the mode attribute switches the process method that is called on-the-fly

TTErr TTOnePole::setMode(const TTValue& newValue)
{
	TTSymbolPtr mode = newValue;
	
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

	mLowpassCoefficient = TTClip(radians / kTTPi, 0.0, 1.0);	
	mOneMinusLowpassCoefficient = 1.0 - mLowpassCoefficient;
	
	mHighpassCoefficient = -mOneMinusLowpassCoefficient;
	mOneMinusHighpassCoefficient = -mLowpassCoefficient;

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
