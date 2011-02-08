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


/**	The Gauss window is ...
 y = ??
 */
class GaussWindow : TTAudioObject {
	TTCLASS_SETUP(GaussWindow)
	
	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
};


#endif // __GAUSSWINDOW_H__