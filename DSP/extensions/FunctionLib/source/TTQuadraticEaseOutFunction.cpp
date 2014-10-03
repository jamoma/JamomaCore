/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTQuadraticEaseOutFunction Unit for Jamoms DSP
 *
 * @details Modeled after the parabola y = -x^2 + 2x @n
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


#include "TTQuadraticEaseOutFunction.h"

#define thisTTClass			TTQuadraticEaseOutFunction
#define thisTTClassName		"easeOutQuadratic"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTQuadraticEaseOutFunction::~TTQuadraticEaseOutFunction()
{
	;
}


TTErr TTQuadraticEaseOutFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = -(x * (x - 2));
	return kTTErrNone;
}


TTErr TTQuadraticEaseOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

