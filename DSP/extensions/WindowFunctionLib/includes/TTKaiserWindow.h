/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Kaiser Window Function Unit for Jamoma DSP
 *
 * @details This implements a window function as described @n
 https://ccrma.stanford.edu/~jos/sasp/Kaiser_Window.html @n
 http://en.wikipedia.org/wiki/Window_function#Kaiser_windows 
 *
 * @authors Nils Peters, Trond Lossius, Tim Place, Nathan Wolek
 *
 * @copyright Copyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __KAISERWINDOW_H__
#define __KAISERWINDOW_H__

#include "TTDSP.h"


/**	This implements a window function as described @
	https://ccrma.stanford.edu/~jos/sasp/Kaiser_Window.html @n
	http://en.wikipedia.org/wiki/Window_function#Kaiser_windows
 */
class KaiserWindow : TTAudioObject {
	TTCLASS_SETUP(KaiserWindow)
	
protected:	
	
	/** 
		alpha and beta atributes are linked to allow congruence with both references above.
		setting one updates the other so that the following relationship is always true:
		beta = alpha * pi
	*/
	TTFloat64	mAlpha;				///< attribute: alpha parameter for the Kaiser function
	TTFloat64	mBeta;				///< attribute: beta parameter for the Kaiser function
	TTFloat64	mBesselIOofBeta;	///< calculated from the beta attribute
	
	
	/**	internal use: calculate zeroth-order bessel function of the first kind */
	TTFloat64 BesselFunctionI0(TTFloat64 x);
	
	
	/**	Set the alpha attribute of the Kaiser window function. 
	 @param newValue				The new value to apply.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setAlpha(const TTValue& newValue);
	
	
	/**	Set the beta attribute of the Kaiser window function.
	 @param newValue				The new value to apply.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setBeta(const TTValue& newValue);
	
	
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
	virtual TTErr test(TTValue& returnedTestInfo);
	
};


#endif // __KAISERWINDOW_H__
