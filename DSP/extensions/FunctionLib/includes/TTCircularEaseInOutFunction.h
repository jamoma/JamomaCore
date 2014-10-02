/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTCircularEaseInOutFunction Unit for Jamoms DSP
 *
 * @details Modeled after the piecewise circular function @n
 *  y = (1/2)(1 - sqrt(1 - 4x^2))           ; [0, 0.5) @n
 *  y = (1/2)(sqrt(-(2x - 3)*(2x - 1)) + 1) ; [0.5, 1] @n
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


#ifndef __TTCIRCULAREASEINOUTFUNCTION_H__
#define __TTCIRCULAREASEINOUTFUNCTION_H__

#include "TTDSP.h"


/**	This implements a function which basically does nothing: 
	y = f(x)
 */
class TTCircularEaseInOutFunction : TTAudioObjectBase {
	TTCLASS_SETUP(TTCircularEaseInOutFunction)

protected:

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	
};


#endif // __TTCIRCULAREASEINOUTFUNCTION_H__
