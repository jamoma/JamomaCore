/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTCircularEaseInFunction Unit for Jamoms DSP
 *
 * @details
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2007 by Timothy Place @n
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
	y = x;
	return kTTErrNone;
}


TTErr TTCircularEaseInFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

