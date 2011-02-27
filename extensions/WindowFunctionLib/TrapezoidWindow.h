/* 
 * Trapezoid Window Function Unit for Jamoma DSP
 * Copyright © 2010 by Trond Lossius; Revised 2011 by Nathan Wolek
 * 
 * License: This code is licensed under the terms of the "New BSD License"
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
class TrapezoidWindow : TTAudioObject {
	TTCLASS_SETUP(TrapezoidWindow)

	TTFloat64	mAlpha;			///< ratio of window fades to total window duration. 0 <= alpho <= 1., 0 = no fades, 1 = no sustain
	
	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

};


#endif // __TRAPEZOIDWINDOW_H__
