/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Nuttall Window Function Unit for Jamoma DSP
 *
 * @details This implements a window function as described at
 http://en.wikipedia.org/wiki/Window_function#Nuttall_window.2C_continuous_first_derivative @n
 *
 * @authors Nils Peters, Nathan Wolek, Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __NUTTALLWINDOW_H__
#define __NUTTALLWINDOW_H__

#include "TTDSP.h"


/**	This implements a window function as described at
	http://en.wikipedia.org/wiki/Window_function#Nuttall_window.2C_continuous_first_derivative
 */
class NuttallWindow : TTAudioObject {
	TTCLASS_SETUP(NuttallWindow)

protected:

	/** Calculate y = f(x) for a single value.
	 @param x					The input value to the window function.
	 @param y					The resulting value for the window function.
	 @param data				Not used.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	
	/**	A standard audio processing method as used by TTBlue objects.
	 @param inputs				The input vector that is to be processed.
	 @param outputs				The resulting windowed vector.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

};


#endif // __NUTTALLWINDOW_H__
