/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTCubicEaseInFunction Unit for Jamoms DSP
 *
 * @details Modeled after the cubic y = x^3
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2007 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTCubicEaseInFunction.h"

#define thisTTClass			TTCubicEaseInFunction
#define thisTTClassName		"easeInCubic"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTCubicEaseInFunction::~TTCubicEaseInFunction()
{
	;
}


TTErr TTCubicEaseInFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = x * x * x;
	return kTTErrNone;
}


TTErr TTCubicEaseInFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

