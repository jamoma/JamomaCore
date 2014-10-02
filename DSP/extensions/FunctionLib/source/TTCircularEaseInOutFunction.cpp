/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTCircularEaseInOutFunction Unit for Jamoms DSP
 *
 * @details Modeled after the piecewise circular function @n
 *  y = (1/2)(1 - sqrt(1 - 4x^2))           ; [0, 0.5) @n
 *  y = (1/2)(sqrt(-(2x - 3)*(2x - 1)) + 1) ; [0.5, 1] @n
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


#include "TTCircularEaseInOutFunction.h"

#define thisTTClass			TTCircularEaseInOutFunction
#define thisTTClassName		"easeInOutCircular"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTCircularEaseInOutFunction::~TTCircularEaseInOutFunction()
{
	;
}


TTErr TTCircularEaseInOutFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	if (x < 0.5)
	{
		y = 0.5 * (1 - sqrt(1 - 4 * (x * x)));
	}
	else
	{
		y = 0.5 * (sqrt(-((2 * x) - 3) * ((2 * x) - 1)) + 1);
	}
	return kTTErrNone;
}


TTErr TTCircularEaseInOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

