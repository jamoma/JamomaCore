/* 
 * SmoothPolynomialFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2011 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __SMOOTHPOLYNOMIALFUNCTION_H__
#define __SMOOTHPOLYNOMIALFUNCTION_H__

#include "TTDSP.h"


/**	This implements a function which basically does nothing: 
	y = f(x)
 */
class SmoothPolynomialFunction : TTAudioObject {
	TTCLASS_SETUP(SmoothPolynomialFunction)

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

};


#endif // __SMOOTHPOLYNOMIALFUNCTION_H__
