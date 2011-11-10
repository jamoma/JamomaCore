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
#define thisTTClassTags		"audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	// Register Attributes...
	addAttributeWithSetter(Base,	kTypeFloat64);
	
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
	// TODO: Add test to ensure that base > 0;
	mBase = newValue;

	k = 1. / log(mBase);
	l = mBase - 1.;
	
	return kTTErrNone;
}


TTErr TTLogFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	// Avoid multiplication by zero
	if (mBase == 1.0)
		y = x;
	else
		y = k * log(x*l+1.0);
	
	return kTTErrNone;
}


TTErr TTLogFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

