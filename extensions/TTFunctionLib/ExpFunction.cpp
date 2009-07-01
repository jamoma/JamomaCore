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
#define thisTTClassName		"tanh"
#define thisTTClassTags		"audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	// Register Attributes...
	registerAttributeWithSetter(offset,	kTypeFloat64);
	registerAttributeWithSetter(width,	kTypeFloat64);
		
	// Set Defaults...
	setAttributeValue(TT("offset"),	0.0);
	setAttributeValue(TT("width"), 1.0);
	
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


ExpFunction::~ExpFunction()
{
	;
}


TTErr ExpFunction::setoffset(const TTValue& newValue)
{
	offset = newValue;
	b = 0.5*(offset+1);
	calculateOutputScaling();
	return kTTErrNone;
}


TTErr ExpFunction::setwidth(const TTValue& newValue)
{
	width = newValue;
	if(width <= 0)
		a = log(7.0);
	else 
		a = log(7.0)/width;
	calculateOutputScaling();
	return kTTErrNone;
}


void ExpFunction::calculateOutputScaling(void)
{
	double f0, f1;
	
	f0=tanh(a*(-b));
	f1=tanh(a*(1-b));
	// This will never be division by zero, due to the fact that we always have width > 0
	alpha = 1/(f1-f0);
	beta = f0;
}


TTErr ExpFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = alpha * (tanh(a * (x-b)) - beta);
	return kTTErrNone;
}


TTErr ExpFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

