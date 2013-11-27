/* 
 * TTExpFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2007 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTExpFunction.h"
#include <math.h>

#define thisTTClass			TTExpFunction
#define thisTTClassName		"exponential"
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


TTExpFunction::~TTExpFunction()
{
	;
}


TTErr TTExpFunction::setBase(const TTValue& newValue)
{
	mBase = newValue;	
	k = log(mBase);
	if (mBase != 1.0){
		setProcessMethod(processAudio);
		setCalculateMethod(calculateValue);
	}
	else {
		setProcessMethod(processAudioBypass); // Avoid division by zero 
		setCalculateMethod(calculateValueBypass);
	}
		
	return kTTErrNone;
}


TTErr TTExpFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = (exp(k*x) - 1.) / (mBase - 1.);	
	return kTTErrNone;
}


TTErr TTExpFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}


TTErr TTExpFunction::calculateValueBypass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = x;	
	return kTTErrNone;
}


TTErr TTExpFunction::processAudioBypass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}