/* 
 * Blackman-Harris Window Function Unit for Jamoma DSP
 * Copyright © 2011 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __BLACKMANHARRISWINDOW_H__
#define __BLACKMANHARRISWINDOW_H__

#include "TTDSP.h"


/**	This implements a window function as described at
	http://en.wikipedia.org/wiki/Blackman-Harris_window
 */
class BlackmanHarrisWindow : TTAudioObject {
	TTCLASS_SETUP(BlackmanHarrisWindow)

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by Jamoma DSP objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

};


#endif // __BLACKMANHARRISWINDOW_H__
