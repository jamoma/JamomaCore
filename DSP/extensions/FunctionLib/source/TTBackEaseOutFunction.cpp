/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTBackEaseOutFunction Unit for Jamoms DSP
 *
 * @details Modeled after overshooting cubic y = 1-((1-x)^3-(1-x)*sin((1-x)*pi)) @n
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


#include "TTBackEaseOutFunction.h"

#define thisTTClass			TTBackEaseOutFunction
#define thisTTClassName		"easeOutBack"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTBackEaseOutFunction::~TTBackEaseOutFunction()
{
	;
}


TTErr TTBackEaseOutFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	TTFloat64 f = (1 - x);
	y = 1 - (f * f * f - f * sin(f * kTTPi));
	return kTTErrNone;
}


TTErr TTBackEaseOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

