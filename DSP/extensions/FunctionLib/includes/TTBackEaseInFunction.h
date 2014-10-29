/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTBackEaseInFunction Unit for Jamoms DSP
 *
 * @details Modeled after the overshooting cubic y = x^3-x*sin(x*pi) @n
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


#ifndef __TTBACKEASEINFUNCTION_H__
#define __TTBACKEASEINFUNCTION_H__

#include "TTDSP.h"


/**	This implements a function which basically does nothing: 
	y = f(x)
 */
class TTBackEaseInFunction : TTAudioObjectBase {
	TTCLASS_SETUP(TTBackEaseInFunction)

protected:

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	
};


#endif // __TTBACKEASEINFUNCTION_H__
