/* 
 * SmoothPolynomialFunction Unit for TTBlue
 *
 * - This function ramps from 0 to 1
 * - The 1st and 2nd derivate equals 0 at x=0 and x=1, giving a smooth start and end to the ramp
 * - The start and end of the ramp should be more smooth than for cosine, as the 2nd order derivative of cosine do not equal 0
 * - The function is symmetrical around the point x=0.5, y=0.5
 *
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2011 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTSMOOTHPOLYNOMIALFUNCTION_H__
#define __TTSMOOTHPOLYNOMIALFUNCTION_H__

#include "TTDSP.h"


/**	This implements a function which basically does nothing: 
	y = f(x)
 */
class TTSmoothPolynomialFunction : TTAudioObject {
	TTCLASS_SETUP(TTSmoothPolynomialFunction)

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __SMOOTHPOLYNOMIALFUNCTION_H__
