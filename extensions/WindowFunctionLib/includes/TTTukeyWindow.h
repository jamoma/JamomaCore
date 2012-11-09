/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Tukey Window Function Unit for Jamoma DSP
 *
 * @details	This implements the Tukey window function described here: @n

 * http://en.wikipedia.org/wiki/File:Window_function_(Tukey;_alpha_%3D_0.5).png @n
 * This is alternate implementation of what Roads (1996 p 170, 2001 p 88) typically refers to as a quasi-Gaussian window.
 * It is easier to ensure that x and y values will scale properly with this formula as opposed to the one given by Roads. @n
 * @n
 * Where 0. <= x <= 1. and 0. <= mAlpha <= 1.: @n
 * y	= 0.5 * (1 + cos ( pi * ((twoOverAlpha * x) - 1)))					: for the attack @n
 *      = 1																	: for the sustain @n
 *      = 0.5 * (1 + cos ( pi * ((twoOverAlpha * x) - twoOverAlpha + 1)))	: for the release @n
 *
 * @authors Nathan Wolek, Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2011 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TUKEYWINDOW_H__
#define __TUKEYWINDOW_H__

#include "TTDSP.h"


/**	This implements the Tukey window function described here:
 http://en.wikipedia.org/wiki/File:Window_function_(Tukey;_alpha_%3D_0.5).png
 This is alternate implementation of what Roads (1996 p 170, 2001 p 88) typically refers to as a quasi-Gaussian window.
 It is easier to ensure that x and y values will scale properly with this formula as opposed to the one given by Roads.
 
 Where 0. <= x <= 1. and 0. <= mAlpha <= 1.:
 y	= 0.5 * (1 + cos ( pi * ((twoOverAlpha * x) - 1)))					: for the attack
	= 1																	: for the sustain
	= 0.5 * (1 + cos ( pi * ((twoOverAlpha * x) - twoOverAlpha + 1)))	: for the release
 */
class TukeyWindow : TTAudioObject {
	TTCLASS_SETUP(TukeyWindow)
	
protected:	
	
	TTFloat64	mAlpha;				///< ratio of window fades to total window duration. 0 <= alpha <= 1., 0 = no fades, 1 = no sustain
	
	
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
	
	
	/** Unit test for the window function unit.
	 @param returnedTestInfo		The outcome from the performed unit test.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr test(TTValue& returnedTestInfo);

};


#endif // __TUKEYWINDOW_H__