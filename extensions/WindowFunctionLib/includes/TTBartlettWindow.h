/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Bartlett Window Function Unit for Jamoma DSP
 *
 * @details The Bartlett window is a triangular window with zero-valued end-points: @n
 * 
 * @authors Trond Lossius, Tim Place, Nathan Wolek
 *
 * @copyright Copyright © 2010 by Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __BARTLETTWINDOW_H__
#define __BARTLETTWINDOW_H__

#include "TTDSP.h"


/**	The Bartlett window is a triangular window that reach 0 at the end points (x=0 and x=1)
	y = 1 - |2x-1|
 */
class BartlettWindow : TTAudioObject {
	TTCLASS_SETUP(BartlettWindow)

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


#endif // __BARTLETTWINDOW_H__
