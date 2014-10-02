/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTQuarticEaseInOutFunction Unit for Jamoms DSP
 *
 * @details // Modeled after the piecewise quartic @n
 *  y = (1/2)((2x)^4)        ; [0, 0.5) @n
 *  y = -(1/2)((2x-2)^4 - 2) ; [0.5, 1] @n
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


#include "TTQuarticEaseInOutFunction.h"

#define thisTTClass			TTQuarticEaseInOutFunction
#define thisTTClassName		"easeInOutQuartic"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTQuarticEaseInOutFunction::~TTQuarticEaseInOutFunction()
{
	;
}


TTErr TTQuarticEaseInOutFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	
	if (x < 0.5)
	{
		y = 8 * x * x * x * x;
	}
	else
	{
		TTFloat64 f = (x - 1);
		y = -8 * f * f * f * f + 1;
	}
	return kTTErrNone;
}


TTErr TTQuarticEaseInOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

