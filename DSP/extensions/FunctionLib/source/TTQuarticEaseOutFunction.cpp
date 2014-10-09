/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTQuarticEaseOutFunction Unit for Jamoms DSP
 *
 * @details Modeled after the quartic y = 1 - (x - 1)^4 @n
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


#include "TTQuarticEaseOutFunction.h"

#define thisTTClass			TTQuarticEaseOutFunction
#define thisTTClassName		"easeOutQuartic"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTQuarticEaseOutFunction::~TTQuarticEaseOutFunction()
{
	;
}


TTErr TTQuarticEaseOutFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	TTFloat64 f = (x - 1);
	y = f * f * f * (1 - x) + 1;
	return kTTErrNone;
}


TTErr TTQuarticEaseOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

