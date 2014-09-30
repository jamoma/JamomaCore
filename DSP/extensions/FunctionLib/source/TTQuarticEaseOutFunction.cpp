/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTQuarticEaseOutFunction Unit for Jamoms DSP
 *
 * @details
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2007 by Timothy Place @n
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
	y = x;
	return kTTErrNone;
}


TTErr TTQuarticEaseOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

