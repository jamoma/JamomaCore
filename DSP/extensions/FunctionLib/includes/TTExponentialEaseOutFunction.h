/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTExponentialEaseOutFunction Unit for Jamoms DSP
 *
 * @details Modeled after the exponential function y = -2^(-10x) + 1
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2007 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TTEXPONENTIALEASEOUTFUNCTION_H__
#define __TTEXPONENTIALEASEOUTFUNCTION_H__

#include "TTDSP.h"


/**	This implements a function which basically does nothing: 
	y = f(x)
 */
class TTExponentialEaseOutFunction : TTAudioObjectBase {
	TTCLASS_SETUP(TTExponentialEaseOutFunction)

protected:

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	
};


#endif // __TTEXPONENTIALEASEOUTFUNCTION_H__
