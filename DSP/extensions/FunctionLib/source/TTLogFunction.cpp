/* 
 * TTLogFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2007 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTLogFunction.h"
#include <math.h>

#define thisTTClass			TTLogFunction
#define thisTTClassName		"logarithm"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	// Register Attributes...
	addAttributeWithSetter(Base,	kTypeFloat64);
		addAttributeProperty(Base,			range,			TTValue(kTTEpsilon, 100000.0));
		addAttributeProperty(Base,			rangeChecking,	TT("cliplow")); // options are "clip" "cliphigh" "cliplow"

	
	// Set Defaults (should be sufficient resolution for a while):
#ifdef TT_PLATFORM_MAC
	setAttributeValue(TT("base"),	2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059921817413596629043572900334295260595630738132328627943490763);
#else
	setAttributeValue(TT("base"),	2.718281828459045235360287471352662497757247093699959574);
#endif
	
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTLogFunction::~TTLogFunction()
{
	;
}


TTErr TTLogFunction::setBase(const TTValue& newValue)
{
	mBase = newValue;
	k = 1. / log(mBase);
	l = mBase - 1.;
	if (mBase == 1) {
		setProcessMethod(processAudioBypass);
		setCalculateMethod(calculateValueBypass);
	}
	else{ 
		setProcessMethod(processAudio);
		setCalculateMethod(calculateValue);
	}
	return kTTErrNone;
}


TTErr TTLogFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	/*double temp = x*l+1.0;  
	if (temp > 0.0) {
		y = k * log(temp); //avoiding nan and -inf
		return kTTErrNone;
	}
	else 
		return kTTErrInvalidValue;*/
	
	y = k * log(x*l+1.0);  //TODO: we need to make sure that log10() is not -inf or nan
	return kTTErrNone;
}

TTErr TTLogFunction::calculateValueBypass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	// Avoid multiplication by zero	
	y = x;	
	return kTTErrNone;
}

TTErr TTLogFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}


TTErr TTLogFunction::processAudioBypass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValueBypass);
}
