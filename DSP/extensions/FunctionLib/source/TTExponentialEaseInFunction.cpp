/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTExponentialEaseInFunction Unit for Jamoms DSP
 *
 * @details Modeled after the exponential function y = 2^(10(x - 1)) @n
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


#include "TTExponentialEaseInFunction.h"

#define thisTTClass			TTExponentialEaseInFunction
#define thisTTClassName		"easeInExponential"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTExponentialEaseInFunction::~TTExponentialEaseInFunction()
{
	;
}


TTErr TTExponentialEaseInFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	(x == 0.0) ? (y = x) : (y = pow(2, 10 * (x - 1)));
	return kTTErrNone;
}


TTErr TTExponentialEaseInFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

