/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTBounceEaseInOutFunction Unit for Jamoms DSP
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


#include "TTBounceEaseInOutFunction.h"

#define thisTTClass			TTBounceEaseInOutFunction
#define thisTTClassName		"easeInOutBounce"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTBounceEaseInOutFunction::~TTBounceEaseInOutFunction()
{
	;
}


TTErr TTBounceEaseInOutFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	/*
	 if(x < 0.5)
	 {
		y = 0.5 * BounceEaseIn(x*2);
	 }
	 else
	 {
		y = 0.5 * BounceEaseOut(x * 2 - 1) + 0.5;
	 }
	 */
	
	if(x < 0.5)
	{
		TTFloat64 f = 1 - 2 * x;
		
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
		
		y = 0.5 * (1 - y);
	}
	else
	{
		TTFloat64 f = x * 2 - 1;
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
		y = 0.5 * y + 0.5;
	}
	return kTTErrNone;
}


TTErr TTBounceEaseInOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

