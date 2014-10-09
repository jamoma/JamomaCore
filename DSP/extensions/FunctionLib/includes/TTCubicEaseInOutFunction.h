/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTCubicEaseInOutFunction Unit for Jamoms DSP
 *
 * @details @details Modeled after the piecewise cubic @n
    y = (1/2)((2x)^3)       ; [0, 0.5) @n
    y = (1/2)((2x-2)^3 + 2) ; [0.5, 1] @n
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


#ifndef __TTCUBICEASEINOUTFUNCTION_H__
#define __TTCUBICEASEINOUTFUNCTION_H__

#include "TTDSP.h"


/**	This implements a function which basically does nothing: 
	y = f(x)
 */
class TTCubicEaseInOutFunction : TTAudioObjectBase {
	TTCLASS_SETUP(TTCubicEaseInOutFunction)

protected:

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	
};


#endif // __TTCUBICEASEINOUTFUNCTION_H__
