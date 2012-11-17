/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Blackman Window Function Unit for Jamoma DSP
 *
 * @details Implemented according to: @n
 * http://en.wikipedia.org/wiki/File:Window_function_(blackman).png @n
 * w = 0.42 - 0.5*cos(2*pi*k/(N-1)) + 0.08*cos(4*pi*k/(N-1));
 *
 * @authors Tim Place, Nathan Wolek, Trond Lossius
 *
 * @copyright Copyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __BLACKMANWINDOW_H__
#define __BLACKMANWINDOW_H__

#include "TTDSP.h"


class BlackmanWindow : TTAudioObject {
	TTCLASS_SETUP(BlackmanWindow)

protected:

	/** Calculate y = f(x) for a single value.
	 @param x					The input value to the window function.
	 @param y					The resulting value for the window function.
	 @param data				Not used.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	
	/**	A standard audio processing method as used by TTBlue objects.
	 @param inputs				The input vector that is to be processed.
	 @param outputs				The resulting windowed vector.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

};


#endif // __BLACKMANWINDOW_H__
