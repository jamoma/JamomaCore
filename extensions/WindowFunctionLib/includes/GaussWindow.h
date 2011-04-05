/*
 * Gauss Window Function Unit for Jamoma DSP
 * Copyright © 2011 by Nathan Wolek
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __GAUSSWINDOW_H__
#define __GAUSSWINDOW_H__

#include "TTDSP.h"


/**	This implements the Gauss window function described here:
 http://en.wikipedia.org/wiki/File:Window_function_(gauss).png
 Be aware that when higher values are used for mSigma, minimum sample value will approach -17 dB
 
 Where 0. <= x <= 1. and 0. <= mSigma <= 0.5:
 superscript = -0.5 * ( ( (2 * x) - 1 ) / mSigma )^2
 y = e^ superscript
*/
 
class GaussWindow : TTAudioObject {
	TTCLASS_SETUP(GaussWindow)
	
	TTFloat64	mSigma;			///< sigma effects the width of the Gaussion window.  0. <= sigma <= 0.5
	
	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	TTErr test(TTValue& returnedTestInfo);
	
};

#endif // __GAUSSWINDOW_H__