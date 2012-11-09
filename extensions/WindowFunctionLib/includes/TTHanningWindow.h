/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Hanning Window Function Unit for Jamoma DSP
 *
 * @details This implements a window function as described at @n
 http://local.wasp.uwa.edu.au/~pbourke/miscellaneous/windows/ @n
 hanning(x) = 0.5 + 0.5*cos(2*PI*(x-0.5)) @n
 *
 * @authors Nils Peters, Trond Lossius, Tim Place, Nathan Wolek
 *
 * @copyright Copyright © 2010 by Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __HANNINGWINDOW_H__
#define __HANNINGWINDOW_H__

#include "TTDSP.h"


/**	This implements a window function as described @
	http://local.wasp.uwa.edu.au/~pbourke/miscellaneous/windows/
	hanning(x) = 0.5 + 0.5*cos(2*PI*(x-0.5))
 */
class HanningWindow : TTAudioObject {
	TTCLASS_SETUP(HanningWindow)

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


#endif // __HANNINGWINDOW_H__
