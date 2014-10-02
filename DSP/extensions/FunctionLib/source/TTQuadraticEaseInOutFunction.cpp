/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTQuadraticEaseInOutFunction Unit for Jamoms DSP
 *
 * @details Modeled after the piecewise quadratic @n
   y = (1/2)((2x)^2)             ; [0, 0.5) @n
   y = -(1/2)((2x-1)*(2x-3) - 1) ; [0.5, 1] @n
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


#include "TTQuadraticEaseInOutFunction.h"

#define thisTTClass			TTQuadraticEaseInOutFunction
#define thisTTClassName		"easeInOutQuadratic"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTQuadraticEaseInOutFunction::~TTQuadraticEaseInOutFunction()
{
	;
}


TTErr TTQuadraticEaseInOutFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	if (x < 0.5)
	{
		y = 2 * x * x;
	}
	else
	{
		y = (-2 * x * x) + (4 * x) - 1;
	}
	return kTTErrNone;
}


TTErr TTQuadraticEaseInOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

