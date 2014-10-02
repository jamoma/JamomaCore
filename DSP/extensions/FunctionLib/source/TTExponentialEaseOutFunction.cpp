/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTExponentialEaseOutFunction Unit for Jamoms DSP
 *
 * @details Modeled after the exponential function y = -2^(-10x) + 1 @
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


#include "TTExponentialEaseOutFunction.h"

#define thisTTClass			TTExponentialEaseOutFunction
#define thisTTClassName		"easeOutExponential"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTExponentialEaseOutFunction::~TTExponentialEaseOutFunction()
{
	;
}


TTErr TTExponentialEaseOutFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	(x == 1.0) ? (y = x) : (y = 1 - pow(2, -10 * x));
	return kTTErrNone;
}


TTErr TTExponentialEaseOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

