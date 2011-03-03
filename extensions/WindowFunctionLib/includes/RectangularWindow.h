/* 
 * Rectangular Window Function Unit for Jamomoma DSP
 * Copyright © 2009 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

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
