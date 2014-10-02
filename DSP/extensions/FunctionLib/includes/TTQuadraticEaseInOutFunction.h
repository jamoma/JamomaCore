/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTQuadraticEaseInOutFunction Unit for Jamoms DSP
 *
 * @details Modeled after the piecewise quadratic @n
   y = (1/2)((2x)^2)             ; [0, 0.5) @n
   y = -(1/2)((2x-1)*(2x-3) - 1) ; [0.5, 1] @n
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


#ifndef __TTQUADRATICEASEINOUTFUNCTION_H__
#define __TTQUADRATICEASEINOUTFUNCTION_H__

#include "TTDSP.h"


/**	This implements a function which basically does nothing: 
	y = f(x)
 */
class TTQuadraticEaseInOutFunction : TTAudioObjectBase {
	TTCLASS_SETUP(TTQuadraticEaseInOutFunction)

protected:

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	
};


#endif // __TTQUADRATICEASEINOUTFUNCTION_H__
