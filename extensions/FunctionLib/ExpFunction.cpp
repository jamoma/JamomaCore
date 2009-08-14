/* 
 * ExpFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2007 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ExpFunction.h"
#include <math.h>

#define thisTTClass ExpFunction
#define thisTTClassName		"exponential"
#define thisTTClassTags		"audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	// Register Attributes...
	registerAttributeWithSetter(base,	kTypeFloat64);
	
	// Set Defaults (should be sufficient resolution for a while):
#ifdef TT_PLATFORM_MAC
	setAttributeValue(TT("base"),	2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059921817413596629043572900334295260595630738132328627943490763);
#else
	setAttributeValue(TT("base"),	2.718281828459045235360287471352662497757247093699959574);
#endif

	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


ExpFunction::~ExpFunction()
{
	;
}


TTErr ExpFunction::setbase(const TTValue& newValue)
{
	// TODO: Add test to ensure that base > 0;
	base = newValue;
	k = log(base);
	return kTTErrNone;
}


TTErr ExpFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	// Avoid division by zero
	if (base==1.)
		y = x;
	else
		y = (exp(k*x) - 1.) / (base - 1.);
	
	return kTTErrNone;
}


TTErr ExpFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

