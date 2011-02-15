/* 
 * Tukey Window Function Unit for Jamoma DSP
 * Copyright © 2011 by Nathan Wolek
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TUKEYWINDOW_H__
#define __TUKEYWINDOW_H__

#include "TTDSP.h"


/**	This implements the Tukey window function described here:
 http://en.wikipedia.org/wiki/File:Window_function_(Tukey;_alpha_%3D_0.5).png
 This is alternate implementation of what Roads (1996 p 170, 2001 p 88) typically refers to as a Gaussian window.
 It is easier to ensure that x and y values will scale properly with this formula as opposed to the one given by Roads.
 
 Where 0. <= x <= 1. and 0. <= alpha <= 1:
 y	= 0.5 * (1 + cos ( pi * (((2 / alpha) * x) - 1)))				: for the attack
	= 1																: for the sustain
	= 0.5 * (1 + cos ( pi * (((2 / alpha) * x) - (2 / alpha) + 1)))	: for the release
 */
class TukeyWindow : TTAudioObject {
	TTCLASS_SETUP(TukeyWindow)
	
	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
};


#endif // __TUKEYWINDOW_H__