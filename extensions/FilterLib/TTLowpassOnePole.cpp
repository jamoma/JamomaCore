/* 
 * Jamoma DSP 1-Pole Lowpass Filter Object
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTLowpassOnePole.h"

#define thisTTClass			TTLowpassOnePole
#define thisTTClassName		"lowpass.1"
#define thisTTClassTags		"audio, processor, filter, lowpass"


TT_AUDIO_CONSTRUCTOR
{
	// register attributes
	addAttributeWithSetter(Frequency,	kTypeFloat64);
	addAttributeProperty(Frequency,		range,			TTValue(2.0, sr*0.475));
	addAttributeProperty(Frequency,		rangeChecking,	TT("clip"));

	// register for notifications from the parent class so we can allocate memory as required
	addMessageWithArgument(updateMaxNumChannels);
	// register for notifications from the parent class so we can recalculate coefficients as required
	addMessage(updateSr);
	// make the clear method available to the outside world
	addMessage(Clear);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	arguments);			// This attribute is inherited
	setAttributeValue(TT("Frequency"),		1000.0);
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);

}


TTLowpassOnePole::~TTLowpassOnePole()
{
	; // Nothing special to do for this class
}


TTErr TTLowpassOnePole::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	mFeedback.resize(maxNumChannels);
	Clear();
	return kTTErrNone;
}


TTErr TTLowpassOnePole::updateSr()
{
	TTValue	v(mFrequency);
	return setFrequency(v);
}


TTErr TTLowpassOnePole::Clear()
{
	mFeedback.assign(maxNumChannels, 0.0);
	return kTTErrNone;
}


TTErr TTLowpassOnePole::setFrequency(const TTValue& newValue)
{
	TTFloat64	radians;
	
	mFrequency = newValue;
	radians = hertzToRadians(mFrequency);
	mCoefficient = TTClip(radians / kTTPi, 0.0, 1.0);
	mOneMinusCoefficient = 1.0 - mCoefficient;
	return kTTErrNone;
}


inline TTErr TTLowpassOnePole::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	y = mFeedback[channel] = TTAntiDenormal((x * mCoefficient) + (mFeedback[channel] * mOneMinusCoefficient));
	return kTTErrNone;
}


TTErr TTLowpassOnePole::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}
