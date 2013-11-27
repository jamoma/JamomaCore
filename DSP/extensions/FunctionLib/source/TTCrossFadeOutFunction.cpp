/* 
 * TTCrossFadeOutFunction Unit for Jamoms DSP
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2012 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTCrossFadeOutFunction.h"
#include <math.h>

#define thisTTClass			TTCrossFadeOutFunction
#define thisTTClassName		"crossFadeOut"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTCrossFadeOutFunction::~TTCrossFadeOutFunction()
{
	;
}


TTErr TTCrossFadeOutFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = 1.0 - sin((1.0-x) * kTTPi * 0.5);
	return kTTErrNone;
}


TTErr TTCrossFadeOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}


