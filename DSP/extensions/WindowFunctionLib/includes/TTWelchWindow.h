/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Welch Window Function Unit for Jamoma DSP
 *
 * @details This implements a window function as described @n
 * http://local.wasp.uwa.edu.au/~pbourke/miscellaneous/windows/ @n
 * welch(i) = 1.0 - ((i-n/2)/(n/2)) * ((i-n/2)/(n/2))
 *
 * @authors Tim Place, Nathan Wolek, Trond Lossius
 *
 * @copyrightCopyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __WELCHWINDOW_H__
#define __WELCHWINDOW_H__

#include "TTDSP.h"


/**	This implements a window function as described @
	http://local.wasp.uwa.edu.au/~pbourke/miscellaneous/windows/
	welch(i) = 1.0 - ((i-n/2)/(n/2)) * ((i-n/2)/(n/2))
 */
class WelchWindow : TTAudioObjectBase {
	TTCLASS_SETUP(WelchWindow)

protected:

	/** Calculate y = f(x) for a single value.
	 @param x						The input value to the window function.
	 @param y						The resulting value for the window function.
	 @param data					Not used.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	
	/**	A standard audio processing method as used by TTBlue objects.
	 @param inputs					The input vector that is to be processed.
	 @param outputs					The resulting windowed vector.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

};


#endif // __WELCHWINDOW_H__
