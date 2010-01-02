/* 
 * Trapezoid Window Function Unit for Jamoma DSP
 * Copyright © 2010 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TRAPEZOIDWINDOW_H__
#define __TRAPEZOIDWINDOW_H__

#include "TTDSP.h"


/**	The Trapezoid window has linear fade in and out.
	y = TTClip( (0.5/f) * (1 - |2x-1|), 0., 1 )
 */
class TrapezoidWindow : TTAudioObject {
	TTCLASS_SETUP(TrapezoidWindow)

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

};


#endif // __TRAPEZOIDWINDOW_H__
