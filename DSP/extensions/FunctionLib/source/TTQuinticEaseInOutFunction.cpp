/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTQuinticEaseInOutFunction Unit for Jamoms DSP
 *
 * @details  Modeled after the piecewise quintic @n
 *  y = (1/2)((2x)^5)       ; [0, 0.5) @n
 *  y = (1/2)((2x-2)^5 + 2) ; [0.5, 1] @n
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


#include "TTQuinticEaseInOutFunction.h"

#define thisTTClass			TTQuinticEaseInOutFunction
#define thisTTClassName		"easeInOutQuintic"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTQuinticEaseInOutFunction::~TTQuinticEaseInOutFunction()
{
	;
}


TTErr TTQuinticEaseInOutFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	if (x < 0.5)
	{
		y = 16 * x * x * x * x * x;
	}
	else
	{
		TTFloat64 f = ((2 * x) - 2);
		y = 0.5 * f * f * f * f * f + 1;
	}
	return kTTErrNone;
}


TTErr TTQuinticEaseInOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

