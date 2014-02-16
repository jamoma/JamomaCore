/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTCrossFadeInFunction Unit for Jamoms DSP
 *
 * @details This can be used with audio gains to create the curve needed for a fade in as part of a cross fade.
 *
 * @authors Trond Lossius
 *
 * @copyright Copyright © 2012 by Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTCrossFadeInFunction.h"
#include <math.h>

#define thisTTClass			TTCrossFadeInFunction
#define thisTTClassName		"crossFadeIn"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTCrossFadeInFunction::~TTCrossFadeInFunction()
{
	;
}


TTErr TTCrossFadeInFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = sin(x * kTTPi * 0.5);
	return kTTErrNone;
}


TTErr TTCrossFadeInFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}


