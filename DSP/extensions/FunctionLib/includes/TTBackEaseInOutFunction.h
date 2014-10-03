/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTBackEaseInOutFunction Unit for Jamoms DSP
 *
 * @details Modeled after the piecewise overshooting cubic function: @n
 *  y = (1/2)*((2x)^3-(2x)*sin(2*x*pi))           ; [0, 0.5) @n
 *  y = (1/2)*(1-((1-x)^3-(1-x)*sin((1-x)*pi))+1) ; [0.5, 1] @n
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


#ifndef __TTBACKEASEINOUTFUNCTION_H__
#define __TTBACKEASEINOUTFUNCTION_H__

#include "TTDSP.h"


/**	This implements a function which basically does nothing: 
	y = f(x)
 */
class TTBackEaseInOutFunction : TTAudioObjectBase {
	TTCLASS_SETUP(TTBackEaseInOutFunction)

protected:

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	
};


#endif // __TTBACKEASEINOUTFUNCTION_H__
