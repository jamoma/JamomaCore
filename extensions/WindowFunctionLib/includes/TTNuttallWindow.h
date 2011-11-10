/* 
 * Nuttall Window Function Unit for Jamoma DSP
 * Copyright © 2011 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __NUTTALLWINDOW_H__
#define __NUTTALLWINDOW_H__

#include "TTDSP.h"


/**	This implements a window function as described at
	http://en.wikipedia.org/wiki/Window_function#Nuttall_window.2C_continuous_first_derivative
 */
class NuttallWindow : TTAudioObject {
	TTCLASS_SETUP(NuttallWindow)

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by Jamoma DSP objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

};


#endif // __NUTTALLWINDOW_H__
