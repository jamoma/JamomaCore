/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTQuadraticEaseInFunction Unit for Jamoms DSP
 *
 * @details Modeled after the parabola y = x^2.
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2007 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTQuadraticEaseInFunction.h"

#define thisTTClass			TTQuadraticEaseInFunction
#define thisTTClassName		"easeInQuadratic"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTQuadraticEaseInFunction::~TTQuadraticEaseInFunction()
{
	;
}


TTErr TTQuadraticEaseInFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = x * x;
	return kTTErrNone;
}


TTErr TTQuadraticEaseInFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

