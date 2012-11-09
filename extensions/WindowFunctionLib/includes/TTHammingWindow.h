/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Hamming Window Function Unit for Jamoma DSP
 *
 * @details The Hamming window is optimized to minimize the maximum (nearest) side lobe, giving it a height of about one-fifth that of the Hanning window.@n
 *
 * Implementation is according to @
 * http://local.wasp.uwa.edu.au/~pbourke/miscellaneous/windows/ @n
 * hamming(x) = 0.54 + 0.46*cos(2*PI*(x-0.5))
 *
 * @authors Trond Lossius, Tim Place, Nathan Wolek
 *
 * @copyright Copyright © 2010 by Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __HAMMINGWINDOW_H__
#define __HAMMINGWINDOW_H__

#include "TTDSP.h"


/**	This implements a window function as described @
	http://local.wasp.uwa.edu.au/~pbourke/miscellaneous/windows/
	hamming(x) = 0.54 + 0.46*cos(2*PI*(x-0.5))
 */
class HammingWindow : TTAudioObject {
	TTCLASS_SETUP(HammingWindow)

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

	
	/** Unit test for the window function unit.
	 @param returnedTestInfo	The outcome from the performed unit test.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);	
};


#endif // __HAMMINGWINDOW_H__
