/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTBounceEaseOutFunction Unit for Jamoms DSP
 *
 * @details @n
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


#include "TTBounceEaseOutFunction.h"

#define thisTTClass			TTBounceEaseOutFunction
#define thisTTClassName		"easeOutBounce"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTBounceEaseOutFunction::~TTBounceEaseOutFunction()
{
	;
}


TTErr TTBounceEaseOutFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	if (x < 4/11.0)
	{
		y = (121 * x * x)/16.0;
	}
	else if (x < 8/11.0)
	{
		y = (363/40.0 * x * x) - (99/10.0 * x) + 17/5.0;
	}
	else if (x < 9/10.0)
	{
		y = (4356/361.0 * x * x) - (35442/1805.0 * x) + 16061/1805.0;
	}
	else
	{
		y = (54/5.0 * x * x) - (513/25.0 * x) + 268/25.0;
	}
	return kTTErrNone;
}


TTErr TTBounceEaseOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

