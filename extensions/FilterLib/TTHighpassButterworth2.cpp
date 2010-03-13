/* 
 * TTBlue 2nd order Butterworth Highpass Filter Object
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTHighpassButterworth2.h"

#define thisTTClass			TTHighpassButterworth2
#define thisTTClassName		"highpass.butterworth.2"
#define thisTTClassTags		"audio, processor, filter, highpass, butterworth"


TT_AUDIO_CONSTRUCTOR
{
	// register attributes
	addAttributeWithSetter(Frequency,	kTypeFloat64);
	addAttributeProperty(Frequency,			range,			TTValue(10.0, sr*0.475));
	addAttributeProperty(Frequency,			rangeChecking,	TT("clip"));

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


TTHighpassButterworth2::~TTHighpassButterworth2()
{
	;
}


TTErr TTHighpassButterworth2::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	mX1.resize(maxNumChannels);
	mX2.resize(maxNumChannels);
	mY1.resize(maxNumChannels);
	mY2.resize(maxNumChannels);		
	Clear();
	return kTTErrNone;
}


TTErr TTHighpassButterworth2::updateSr()
{
	TTValue	v(mFrequency);
	return setFrequency(v);
}


TTErr TTHighpassButterworth2::Clear()
{
	mX1.assign(maxNumChannels, 0.0);
	mX2.assign(maxNumChannels, 0.0);
	mY1.assign(maxNumChannels, 0.0);
	mY2.assign(maxNumChannels, 0.0);
	return kTTErrNone;
}


TTErr TTHighpassButterworth2::setFrequency(const TTValue& newValue)
{	
	mFrequency = newValue;

	mC = tan( kTTPi*(mFrequency/sr ) );
	mCSquared = mC * mC;
	calculateCoefficients();	
	return kTTErrNone;
}


void TTHighpassButterworth2::calculateCoefficients()
{   
	mA0 = 1 / (1 + kTTSqrt2*mC + mCSquared);
	mA1 = -2*mA0;
	//mA2 = mA0;
	mB1 = 2*mA0*( mCSquared - 1 );
	mB2 = mA0 * (1 - kTTSqrt2*mC + mCSquared);
}


inline TTErr TTHighpassButterworth2::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	//y = TTAntiDenormal(mA0*x + mA1*mX1[channel] + mA2*mX2[channel] - mB1*mY1[channel] - mB2*mY2[channel]);
	// since mA0 = mA2, one can optimize to:
	y = TTAntiDenormal(mA0*(x + mX2[channel])+ mA1*mX1[channel] - mB1*mY1[channel] - mB2*mY2[channel]);
	mX2[channel] = mX1[channel];
	mX1[channel] = x;
	mY2[channel] = mY1[channel];
	mY1[channel] = y;
	return kTTErrNone;
}


TTErr TTHighpassButterworth2::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}
