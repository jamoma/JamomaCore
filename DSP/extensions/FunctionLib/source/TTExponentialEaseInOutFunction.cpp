/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTExponentialEaseInOutFunction Unit for Jamoms DSP
 *
 * @details Modeled after the piecewise exponential @n
 *  y =  (1/2)2^(10(2x - 1))        ; [0,0.5) @n
 *  y = -(1/2)*2^(-10(2x - 1))) + 1 ; [0.5,1] @n
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


#include "TTExponentialEaseInOutFunction.h"

#define thisTTClass			TTExponentialEaseInOutFunction
#define thisTTClassName		"easeInOutExponential"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTExponentialEaseInOutFunction::~TTExponentialEaseInOutFunction()
{
	;
}


TTErr TTExponentialEaseInOutFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	if (x == 0.0 || x == 1.0)
		y = x;
	else if(x < 0.5)
	{
		y = 0.5 * pow(2, (20 * x) - 10);
	}
	else
	{
		y = -0.5 * pow(2, (-20 * x) + 10) + 1;
	}
	return kTTErrNone;
}


TTErr TTExponentialEaseInOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

