/* 
 * Welch Window Function Unit for Jamoma DSP
 * Copyright © 2010 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __WELCHWINDOW_H__
#define __WELCHWINDOW_H__

#include "TTDSP.h"


/**	This implements a window function as described @
	http://local.wasp.uwa.edu.au/~pbourke/miscellaneous/windows/
	welch(i) = 1.0 - ((i-n/2)/(n/2)) * ((i-n/2)/(n/2))
 */
class WelchWindow : TTAudioObject {
	TTCLASS_SETUP(WelchWindow)

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by Jamoma DSP objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

};


#endif // __WELCHWINDOW_H__
