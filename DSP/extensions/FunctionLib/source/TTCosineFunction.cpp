/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTCosineFunction Unit for Jamoma DSP
 *
 * @details
 *
 * @authors Dave Watson, Trond Lossius
 *
 * @copyright Copyright © 2007 by Dave Watson @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTCosineFunction.h"
#include <math.h>

#define thisTTClass			TTCosineFunction
#define thisTTClassName		"cosine"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTCosineFunction::~TTCosineFunction()
{
	;
}


TTErr TTCosineFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = -0.5 * cos(x * kTTPi) + 0.5;
	return kTTErrNone;
}


TTErr TTCosineFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}


