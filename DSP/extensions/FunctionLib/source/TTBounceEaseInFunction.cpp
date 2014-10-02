/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTBounceEaseInFunction Unit for Jamoms DSP
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


#include "TTBounceEaseInFunction.h"

#define thisTTClass			TTBounceEaseInFunction
#define thisTTClassName		"easeInBounce"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTBounceEaseInFunction::~TTBounceEaseInFunction()
{
	;
}


TTErr TTBounceEaseInFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	// y = 1 - BounceEaseOut(1 - x);
	
	TTFloat64 f = 1 - x;
	if (f < 4/11.0)
	{
		y = (121 * f * f)/16.0;
	}
	else if (f < 8/11.0)
	{
		y = (363/40.0 * f * f) - (99/10.0 * f) + 17/5.0;
	}
	else if (f < 9/10.0)
	{
		y = (4356/361.0 * f * f) - (35442/1805.0 * f) + 16061/1805.0;
	}
	else
	{
		y = (54/5.0 * f * f) - (513/25.0 * f) + 268/25.0;
	}
	
	y = 1 - y;
	
	
	return kTTErrNone;
}


TTErr TTBounceEaseInFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

