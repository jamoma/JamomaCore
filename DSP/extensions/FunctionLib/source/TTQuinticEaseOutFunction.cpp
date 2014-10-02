/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTQuinticEaseOutFunction Unit for Jamoms DSP
 *
 * @details Modeled after the quintic y = (x - 1)^5 + 1 @n
 * @n
 * Derived from Sam Hocevar's public domain C/C++ implementation of
 * Robert Penner easing functions
 *
 * @authors Trond Lossius
 *
 * @copyright Copyright © 2014 by Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTQuinticEaseOutFunction.h"

#define thisTTClass			TTQuinticEaseOutFunction
#define thisTTClassName		"easeOutQuintic"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTQuinticEaseOutFunction::~TTQuinticEaseOutFunction()
{
	;
}


TTErr TTQuinticEaseOutFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	TTFloat64 f = (x - 1);
	y = f * f * f * f * f + 1;
	return kTTErrNone;
}


TTErr TTQuinticEaseOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

