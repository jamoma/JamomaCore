/* 
 * Generalized Window Function Wrapper for Jamoma DSP
 * Copyright © 2010 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */
#if 0
#ifndef __RECTANGULARWINDOW_H__
#define __RECTANGULARWINDOW_H__

#include "TTDSP.h"


/**	This implements a window function which basically does nothing: 
	y = 1.0
 */
class RectangularWindow : TTAudioObject {
	TTCLASS_SETUP(RectangularWindow)

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

};


#endif // __RECTANGULARWINDOW_H__
#endif // 0