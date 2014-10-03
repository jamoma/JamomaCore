/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTQuarticEaseInFunction Unit for Jamoms DSP
 *
 * @details Modeled after the quartic x^4 @n
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


#include "TTQuarticEaseInFunction.h"

#define thisTTClass			TTQuarticEaseInFunction
#define thisTTClassName		"easeInQuartic"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTQuarticEaseInFunction::~TTQuarticEaseInFunction()
{
	;
}


TTErr TTQuarticEaseInFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = x * x * x * x;
	return kTTErrNone;
}


TTErr TTQuarticEaseInFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

