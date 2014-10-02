/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTBackEaseInOutFunction Unit for Jamoms DSP
 *
 * @details Modeled after the piecewise overshooting cubic function: @n
 *  y = (1/2)*((2x)^3-(2x)*sin(2*x*pi))           ; [0, 0.5) @n
 *  y = (1/2)*(1-((1-x)^3-(1-x)*sin((1-x)*pi))+1) ; [0.5, 1] @n
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


#include "TTBackEaseInOutFunction.h"

#define thisTTClass			TTBackEaseInOutFunction
#define thisTTClassName		"easeInOutBack"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTBackEaseInOutFunction::~TTBackEaseInOutFunction()
{
	;
}


TTErr TTBackEaseInOutFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	if (x < 0.5)
	{
		TTFloat64 f = 2 * x;
		y = 0.5 * (f * f * f - f * sin(f * kTTPi));
	}
	else
	{
		TTFloat64 f = (1 - (2*x - 1));
		y = 0.5 * (1 - (f * f * f - f * sin(f * kTTPi))) + 0.5;
	}
	return kTTErrNone;
}


TTErr TTBackEaseInOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

