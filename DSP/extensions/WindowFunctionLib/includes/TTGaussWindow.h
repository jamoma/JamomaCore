/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Gauss Window Function Unit for Jamoma DSP
 *
 * @details This implements the Gauss window function described here: @n
 http://en.wikipedia.org/wiki/File:Window_function_(gauss).png @n
 Be aware that when higher values are used for mSigma, minimum sample value will approach -17 dB @n
 @n
 Where 0. <= x <= 1. and 0. <= mSigma <= 0.5: @n
 superscript = -0.5 * ( ( (2 * x) - 1 ) / mSigma )^2 @n
 y = e^ superscript @n
 *
 * @authors Nathan Wolek, Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2011 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __GAUSSWINDOW_H__
#define __GAUSSWINDOW_H__

#include "TTDSP.h"


/**	This implements the Gauss window function described here: @n
 http://en.wikipedia.org/wiki/File:Window_function_(gauss).png @n
 Be aware that when higher values are used for mSigma, minimum sample value will approach -17 dB @n
 @n
 Where 0. <= x <= 1. and 0. <= mSigma <= 0.5: @n
 superscript = -0.5 * ( ( (2 * x) - 1 ) / mSigma )^2 @n
 y = e^ superscript @n
*/
 
class GaussWindow : TTAudioObjectBase {
	TTCLASS_SETUP(GaussWindow)
	
protected:
	
	TTFloat64	mSigma;			///< sigma effects the width of the Gaussion window.  0. <= sigma <= 0.5
	
	
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
	
	
	/** Unit test for the window function unit.
	 @param returnedTestInfo	The outcome from the performed unit test.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr test(TTValue& returnedTestInfo);
	
};

#endif // __GAUSSWINDOW_H__