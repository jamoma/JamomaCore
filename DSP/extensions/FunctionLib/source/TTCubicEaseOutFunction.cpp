/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTCubicEaseOutFunction Unit for Jamoms DSP
 *
 * @details Modeled after the cubic y = (x - 1)^3 + 1 @n
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


#include "TTCubicEaseOutFunction.h"

#define thisTTClass			TTCubicEaseOutFunction
#define thisTTClassName		"easeOutCubic"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTCubicEaseOutFunction::~TTCubicEaseOutFunction()
{
	;
}


TTErr TTCubicEaseOutFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	TTFloat64 f = (x - 1);
	
	y = f * f * f + 1;
	return kTTErrNone;
}


TTErr TTCubicEaseOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

