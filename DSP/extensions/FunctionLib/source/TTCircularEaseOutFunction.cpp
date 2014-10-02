/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTCircularEaseOutFunction Unit for Jamoms DSP
 *
 * @details Modeled after shifted quadrant II of unit circle @n
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


#include "TTCircularEaseOutFunction.h"

#define thisTTClass			TTCircularEaseOutFunction
#define thisTTClassName		"easeOutCircular"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTCircularEaseOutFunction::~TTCircularEaseOutFunction()
{
	;
}


TTErr TTCircularEaseOutFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = sqrt((2 - x) * x);
	return kTTErrNone;
}


TTErr TTCircularEaseOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

