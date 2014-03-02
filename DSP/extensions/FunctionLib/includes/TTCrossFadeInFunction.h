/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTCrossFadeInFunction Unit for Jamoms DSP
 *
 * @details This can be used with audio gains to create the curve needed for a fade in as part of a cross fade.
 *
 * @authors Trond Lossius
 *
 * @copyright Copyright © 2012 by Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TTCROSSFADEINFUNCTION_H__
#define __TTCROSSFADEINFUNCTION_H__

#include "TTDSP.h"


/**	A simple function unit the implements the following:
	y = sin(x*PI*0.5)
 */
class TTCrossFadeInFunction : TTAudioObjectBase {
	TTCLASS_SETUP(TTCrossFadeInFunction)

protected:

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	

};


#endif // __TTCROSSFADEINFUNCTION_H__
