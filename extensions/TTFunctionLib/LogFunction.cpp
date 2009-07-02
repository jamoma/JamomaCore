/* 
 * LogFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2007 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "LogFunction.h"
#include <math.h>

#define thisTTClass LogFunction
#define thisTTClassName		"logarithm"
#define thisTTClassTags		"audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	// Register Attributes...
	registerAttributeWithSetter(base,	kTypeFloat64);
	
	// Set Defaults (should be sufficient resolution for a while):
	setAttributeValue(TT("base"),	2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059921817413596629043572900334295260595630738132328627943490763);
	
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


LogFunction::~LogFunction()
{
	;
}


TTErr LogFunction::setbase(const TTValue& newValue)
{
	// TODO: Add test to ensure that base > 0;
	base = newValue;

	invLogBase = 1. / log(base);
	invBaseMinusOne = 1. / (base - 1.);
	
	return kTTErrNone;
}


TTErr LogFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	// Avoid division by zero
	//if (base==1.)
	//	y = x;
	//else
	//	y = outScale * (log(inScale * x - 1.) - 1.);
	//y = ( log(x) * invLogBase - 1. ) * invBaseMinusOne;
	//y = invLogBase * (log(x*(base-1)) + 1);
	//y = (log(x)/log(base) - 1) / (base - 1);
	
	y = invLogBase * log(x*(base-1.)+1.);
	
	return kTTErrNone;
}


TTErr LogFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

