/* 
 * CosineFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2007 by Dave Watson
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "CosineFunction.h"
#include <math.h>

#define thisTTClass			CosineFunction
#define thisTTClassName		"cosine"
#define thisTTClassTags		"audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


CosineFunction::~CosineFunction()
{
	;
}


TTErr CosineFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = -0.5 * cos(x * kTTPi) + 0.5;
	return kTTErrNone;
}


TTErr CosineFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}


