/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTBackEaseOutFunction Unit for Jamoms DSP
 *
 * @details Modeled after overshooting cubic y = 1-((1-x)^3-(1-x)*sin((1-x)*pi))
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2007 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TTBACKEASEOUTFUNCTION_H__
#define __TTBACKEASEOUTFUNCTION_H__

#include "TTDSP.h"


/**	This implements a function which basically does nothing: 
	y = f(x)
 */
class TTBackEaseOutFunction : TTAudioObjectBase {
	TTCLASS_SETUP(TTBackEaseOutFunction)

protected:

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	
};


#endif // __TTBACKEASEOUTFUNCTION_H__
