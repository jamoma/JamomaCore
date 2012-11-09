/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Blackman-Harris Window Function Unit for Jamoma DSP
 *
 * @details The Blackman-Harris is a generalization of the Hamming family, produced by adding more shifted sinc functions, meant to minimize side-lobe levels. @n
 *
 * @authors Nils Peters, Trond Lossius, Tim Place, Nathan Wolek
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __BLACKMANHARRISWINDOW_H__
#define __BLACKMANHARRISWINDOW_H__

#include "TTDSP.h"


/**	This implements a window function as described at
	http://en.wikipedia.org/wiki/Blackman-Harris_window
 */
class BlackmanHarrisWindow : TTAudioObject {
	TTCLASS_SETUP(BlackmanHarrisWindow)

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


#endif // __BLACKMANHARRISWINDOW_H__
