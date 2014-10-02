/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTElasticEaseInOutFunction Unit for Jamoms DSP
 *
 * @details Modeled after the piecewise exponentially-damped sine wave: @n
 *  y = (1/2)*sin(13pi/2*(2*x))*pow(2, 10 * ((2*x) - 1))      ; [0,0.5) @n
 *  y = (1/2)*(sin(-13pi/2*((2x-1)+1))*pow(2,-10(2*x-1)) + 2) ; [0.5, 1] @n
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


#include "TTElasticEaseInOutFunction.h"

#define thisTTClass			TTElasticEaseInOutFunction
#define thisTTClassName		"easeInOutElastic"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTElasticEaseInOutFunction::~TTElasticEaseInOutFunction()
{
	;
}


TTErr TTElasticEaseInOutFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	if (x < 0.5)
	{
		y = 0.5 * sin(6.5 * kTTPi * (2 * x)) * pow(2, 10 * ((2 * x) - 1));
	}
	else
	{
		y = 0.5 * (sin(-6.5 * kTTPi * ((2 * x - 1) + 1)) * pow(2, -10 * (2 * x - 1)) + 2);
	}
	return kTTErrNone;
}


TTErr TTElasticEaseInOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

