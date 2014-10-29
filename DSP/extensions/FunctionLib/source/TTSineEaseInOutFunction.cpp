/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTSineEaseInOutFunction Unit for Jamoms DSP
 *
 * @details Modeled after half sine wave @n
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


#include "TTSineEaseInOutFunction.h"

#define thisTTClass			TTSineEaseInOutFunction
#define thisTTClassName		"easeInOutSine"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTSineEaseInOutFunction::~TTSineEaseInOutFunction()
{
	;
}


TTErr TTSineEaseInOutFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = 0.5 * (1 - cos(x * kTTPi));
	return kTTErrNone;
}


TTErr TTSineEaseInOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

