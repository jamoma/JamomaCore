/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Trapezoid Window Function Unit for Jamoma DSP
 *
 * @details This implements a Trapezoid window using the following algorthim: @n
 * @n
 * Where 0. <= x <= 1. and 0. <= mAlpha <= 1.: @n
 * y	= x * twoOverAlpha				: for the attack @n
 *      = 1								: for the sustain @n
 *      = (1 - x) * twoOverAlpha		: for the release @n
 *
 * @authors Trond Lossius, Nathan Wolek, Tim Place, Nils Peters, 
 *
 * @copyright Copyright © 2010 by Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TRAPEZOIDWINDOW_H__
#define __TRAPEZOIDWINDOW_H__

#include "TTDSP.h"


/**	This implements a Trapezoid window using the following algorthim:
 
 Where 0. <= x <= 1. and 0. <= mAlpha <= 1.:
 y	= x * twoOverAlpha				: for the attack
	= 1								: for the sustain
	= (1 - x) * twoOverAlpha		: for the release
 */
class TrapezoidWindow : TTAudioObjectBase {
	TTCLASS_SETUP(TrapezoidWindow)

protected:

	/**	Set the alpha attribute of the Trapezoid window function.
	 @param newValue				The new value to apply.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTFloat64	mAlpha;			///< ratio of window fades to total window duration. 0 <= alpho <= 1., 0 = no fades, 1 = no sustain
	
	
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


#endif // __TRAPEZOIDWINDOW_H__
