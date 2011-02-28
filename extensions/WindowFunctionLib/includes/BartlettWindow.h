/* 
 * Bartlett Window Function Unit for Jamoma DSP
 * Copyright © 2010 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __BARTLETTWINDOW_H__
#define __BARTLETTWINDOW_H__

#include "TTDSP.h"


/**	The Bartlett window is a triangular window that reach 0 at the end points (x=0 and x=1)
	y = 1 - |2x-1|
 */
class BartlettWindow : TTAudioObject {
	TTCLASS_SETUP(BartlettWindow)

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

};


#endif // __BARTLETTWINDOW_H__
