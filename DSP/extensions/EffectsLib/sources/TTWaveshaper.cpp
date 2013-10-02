/* 
 * simple waveshaper
 * Copyright © 2011, Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTWaveshaper.h"

#define thisTTClass			TTWaveshaper
#define thisTTClassName		"waveshaper"
#define thisTTClassTags		"dspEffectsLib, audio, processor, distortion"


TT_AUDIO_CONSTRUCTOR,
mStrength(1),
mSigmoidGainCorrection(1),
mPoly1GainCorrection(1)
{
	addAttributeWithSetter(Strength,			kTypeFloat64);
		addAttributeProperty(Strength,			range,			TTValue(kTTEpsilon, 100000.0));
		addAttributeProperty(Strength,			rangeChecking,	TT("clip"));
	addAttributeWithSetter(Shape,	kTypeSymbol);
	setProcessMethod(processAudioSin);
	setAttributeValue(TT("strength"), kTTEpsilon);
	setAttributeValue(TT("shape"), TT("sin"));
}


TTWaveshaper::~TTWaveshaper()
{
	;
}

TTErr TTWaveshaper::setStrength(const TTValue& newValue)
{
	mStrength = newValue;
	mInvStrength = 1.0/mStrength;
	mSigmoidGainCorrection = 1.0 / (2.0/(1.0+exp(-5. * mStrength))-1.0);
	mPoly1GainCorrection = 1.0 /(mStrength + mStrength*mStrength*mStrength);
	return kTTErrNone; 	
}


TTErr TTWaveshaper::setShape(const TTValue& newValue)
{
	mShape = newValue;
	if (mShape == TT("atan"))
		setProcessMethod(processAudioAtan);
	else if (mShape == TT("sin"))
		setProcessMethod(processAudioSin);
	else if (mShape == TT("sigmoid"))
		setProcessMethod(processAudioSigmoid);
	else
		setProcessMethod(processAudioPoly1);
		
	//TODO: we could use the entire function lib to drive the waveshaping based on a lookup table.
	return kTTErrNone; 	
}

TTErr TTWaveshaper::processAudioSin(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValueSin);
	return kTTErrNone;	
}

inline TTErr TTWaveshaper::calculateValueSin(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	y = sin(x * mStrength) * mInvStrength;
	return kTTErrNone;
}


TTErr TTWaveshaper::processAudioSigmoid(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValueSigmoid);
	return kTTErrNone;	
}

inline TTErr TTWaveshaper::calculateValueSigmoid(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	y = (2.0/(1.0+exp(-5. * mStrength * x))-1.0) * mSigmoidGainCorrection;
	return kTTErrNone;
}


TTErr TTWaveshaper::processAudioAtan(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValueAtan);
	return kTTErrNone;	
}

inline TTErr TTWaveshaper::calculateValueAtan(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	y = atan(x * mStrength) * mInvStrength;
	return kTTErrNone;
}

TTErr TTWaveshaper::processAudioPoly1(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValuePoly1);
	return kTTErrNone;
}

inline TTErr TTWaveshaper::calculateValuePoly1(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{   
	//wawveshaping example by http://www.music.mcgill.ca/~gary/307/week12/node2.html
	y = x * mStrength;
	y = (y + y*y*y) * mPoly1GainCorrection;	
	return kTTErrNone;
}