/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTQuinticEaseInFunction Unit for Jamoms DSP
 *
 * @details Modeled after the quintic y = x^5 @n
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


#include "TTQuinticEaseInFunction.h"

#define thisTTClass			TTQuinticEaseInFunction
#define thisTTClassName		"easeInQuintic"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTQuinticEaseInFunction::~TTQuinticEaseInFunction()
{
	;
}


TTErr TTQuinticEaseInFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = x * x * x * x * x;
	return kTTErrNone;
}


TTErr TTQuinticEaseInFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

