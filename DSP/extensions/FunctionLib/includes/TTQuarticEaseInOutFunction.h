/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTQuarticEaseInOutFunction Unit for Jamoms DSP
 *
 * @details // Modeled after the piecewise quartic @n
 *  y = (1/2)((2x)^4)        ; [0, 0.5) @n
 *  y = -(1/2)((2x-2)^4 - 2) ; [0.5, 1] @n
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


#ifndef __TTQUARTICEASEINOUTFUNCTION_H__
#define __TTQUARTICEASEINOUTFUNCTION_H__

#include "TTDSP.h"


/**	This implements a function which basically does nothing: 
	y = f(x)
 */
class TTQuarticEaseInOutFunction : TTAudioObjectBase {
	TTCLASS_SETUP(TTQuarticEaseInOutFunction)

protected:

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	
};


#endif // __TTQUARTICEASEINOUTFUNCTION_H__
