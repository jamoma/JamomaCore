/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTCircularEaseInFunction Unit for Jamoms DSP
 *
 * @details Modeled after shifted quadrant IV of unit circle @n
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


#include "TTCircularEaseInFunction.h"

#define thisTTClass			TTCircularEaseInFunction
#define thisTTClassName		"easeInCircular"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTCircularEaseInFunction::~TTCircularEaseInFunction()
{
	;
}


TTErr TTCircularEaseInFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = 1 - sqrt(1 - (x * x));;
	return kTTErrNone;
}


TTErr TTCircularEaseInFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

