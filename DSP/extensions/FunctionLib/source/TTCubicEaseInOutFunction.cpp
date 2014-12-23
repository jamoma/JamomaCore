/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTCubicEaseInOutFunction Unit for Jamoms DSP
 *
 * @details Modeled after the piecewise cubic @n
    y = (1/2)((2x)^3)       ; [0, 0.5) @n
    y = (1/2)((2x-2)^3 + 2) ; [0.5, 1] @n
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


#include "TTCubicEaseInOutFunction.h"

#define thisTTClass			TTCubicEaseInOutFunction
#define thisTTClassName		"easeInOutCubic"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTCubicEaseInOutFunction::~TTCubicEaseInOutFunction()
{
	;
}


TTErr TTCubicEaseInOutFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	if (x < 0.5)
	{
		y = 4 * x * x * x;
	}
	else
	{
		TTFloat64 f = ((2 * x) - 2);
		y = 0.5 * f * f * f + 1;
	}
	return kTTErrNone;
}


TTErr TTCubicEaseInOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

