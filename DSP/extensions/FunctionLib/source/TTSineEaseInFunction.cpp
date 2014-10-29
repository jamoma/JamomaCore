/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTSineEaseInFunction Unit for Jamoms DSP
 *
 * @details Modeled after quarter-cycle of sine wave @n
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


#include "TTSineEaseInFunction.h"

#define thisTTClass			TTSineEaseInFunction
#define thisTTClassName		"easeInSine"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTSineEaseInFunction::~TTSineEaseInFunction()
{
	;
}


TTErr TTSineEaseInFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = sin((x - 1) * kTTPi * 0.5) + 1;;
	return kTTErrNone;
}


TTErr TTSineEaseInFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

