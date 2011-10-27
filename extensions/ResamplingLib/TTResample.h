/* 
 * Resample
 * Extension Class for Jamoma DSP
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_RESAMPLE_H__
#define __TT_RESAMPLE_H__

#include "TTDSP.h"


/**	Convert input to an output with different block size, sample rate, or other characteristics. */
class TTResample : TTAudioObject {
	TTCLASS_SETUP(TTResample)
	
	TTAudioObjectPtr	mResamplingFilter;
	TTSymbolPtr			mDirection;	// up or down
	TTSymbolPtr			mMode;		// staircase, third, fifth
	
	
	TTErr setDirection(const TTValue& newDirection);
	TTErr setMode(const TTValue& newMode);
	
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);
	
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
};


#endif // __TT_RESAMPLE_H__
