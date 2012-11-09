/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Rectangular Window Function Unit for Jamomoma DSP
 *
 * @details This implements a window function which basically does nothing:
 y = 1.0 @n
 * @n
 * It is the same as the Matlab function: @n
 * w=rectwin(L) @n
 * Which is an alias for: @n
 * w = ones(L,1); @n
 * http://www.mathworks.com/help/toolbox/signal/ref/rectwin.html @n
 * @n
 * This can be expressed also as: @n
 * w(n) = 1, 0 <= n <= N-1 @n
 * @n
 * Values outside of this range could be set to zero, though (at least in theory)
 * we should never receive a request for out-of-range values. @n
 *
 * @authors Trond Lossius, Tim Place, Nathan Wolek, Nils Peters
 *
 * @copyright Copyright © 2009 by Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __RECTANGULARWINDOW_H__
#define __RECTANGULARWINDOW_H__

#include "TTDSP.h"


/**	This implements a window function which basically does nothing: 
	y = 1.0
	
	It is the same as the Matlab function:
		w=rectwin(L)
	Which is an alias for:
		w = ones(L,1);
	http://www.mathworks.com/help/toolbox/signal/ref/rectwin.html
	
	This can be expressed also as:
		w(n) = 1, 0 <= n <= N-1
		
	Values outside of this range could be set to zero, though (at least in theory) 
	we should never receive a request for out-of-range values.
 */
			
class RectangularWindow : TTAudioObject {
	TTCLASS_SETUP(RectangularWindow)

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
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr test(TTValue& returnedTestInfo);
	
};


#endif // __RECTANGULARWINDOW_H__
