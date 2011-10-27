/* 
 * Staircase
 * Extension Class for Jamoma DSP
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_STAIRCASE_H__
#define __TT_STAIRCASE_H__

#include "TTDSP.h"


/**	Convert input to an output with different block size, sample rate, or other characteristics. */
class TTStaircase : TTAudioObject {
	TTCLASS_SETUP(TTStaircase)
	
	TTSymbolPtr	mMode;
	
	TTErr setMode(const TTValue& newMode);

	TTErr processDownsample(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processUpsample(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
};


#endif // __TT_STAIRCASE_H__
