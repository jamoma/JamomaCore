/* 
 * Kaiser Window Function Unit for Jamoma DSP
 * Copyright © 2010 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __KAISERWINDOW_H__
#define __KAISERWINDOW_H__

#include "TTDSP.h"


/**	This implements a window function as described @
	https://ccrma.stanford.edu/~jos/sasp/Kaiser_Window.html
	http://en.wikipedia.org/wiki/Window_function#Kaiser_windows
 */
class KaiserWindow : TTAudioObject {
	TTCLASS_SETUP(KaiserWindow)
	
	/* 
		alpha and beta atributes are linked to allow congruence with both references above.
		setting one updates the other so that the following relationship is always true:
		beta = alpha * pi
	*/
	TTFloat64	mAlpha;				///< attribute: alpha parameter for the Kaiser function
	TTFloat64	mBeta;				///< attribute: beta parameter for the Kaiser function
	TTFloat64	mBesselIOofBeta;	///< calculated from the beta attribute
	
	/**	internal use: calculate zeroth-order bessel function of the first kind */
	TTFloat64 BesselFunctionI0(TTFloat64 x);
	
	/**	attribute accessor */	
	TTErr setAlpha(const TTValue& newValue);
	TTErr setBeta(const TTValue& newValue);
	
	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by Jamoma DSP objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	
};


#endif // __KAISERWINDOW_H__
