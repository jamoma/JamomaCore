/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTSmoothPolynomialFunction Unit for Jamoms DSP
 *
 * @details This function has the following properties: @n
 *  - It ramps from 0 to 1 @n
 *	- The 1st and 2nd derivate equals 0 at x=0 and x=1, giving a smooth start and end to the ramp @n
 *	- The start and end of the ramp should be more smooth than for cosine in #TTCosineFunction, as the 2nd order derivative of cosine do not equal 0 @n
 *	- The function is symmetrical around the point x=0.5, y=0.5 
 *
 * @authors Trond Lossius
 *
 * @copyright Copyright © 2011 by Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTSmoothPolynomialFunction.h"
#include <math.h>

#define thisTTClass			TTSmoothPolynomialFunction
#define thisTTClassName		"smoothPolynomial"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTSmoothPolynomialFunction::~TTSmoothPolynomialFunction()
{
	;
}


TTErr TTSmoothPolynomialFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	//y = 6*pow(x, 5.) - 15*pow(x, 4.) + 10*pow(x, 3.0);

	// This is an optimised version of the same:
	y = x*x*x*(x*(6*x-15)+10);
	
	return kTTErrNone;
}


TTErr TTSmoothPolynomialFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

