/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTElasticEaseOutFunction Unit for Jamoms DSP
 *
 * @details Modeled after the damped sine wave y = sin(-13pi/2*(x + 1))*pow(2, -10x) + 1 @n
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


#ifndef __TTELASTICEASEOUTFUNCTION_H__
#define __TTELASTICEASEOUTFUNCTION_H__

#include "TTDSP.h"


/**	This implements a function which basically does nothing: 
	y = f(x)
 */
class TTElasticEaseOutFunction : TTAudioObjectBase {
	TTCLASS_SETUP(TTElasticEaseOutFunction)

protected:

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	
};


#endif // __TTELASTICEASEOUTFUNCTION_H__
