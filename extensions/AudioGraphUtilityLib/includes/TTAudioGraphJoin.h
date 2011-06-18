/* 
 * TTAudioGraphJoin Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_JOIN_H__
#define __TT_JOIN_H__

#include "TTDSP.h"


/**	The join≈ object takes N input signals and combines them
 into a single signal with all of the channels present.
 */
class TTAudioGraphJoin : public TTAudioObject {
	TTCLASS_SETUP(TTAudioGraphJoin)
	
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
	{
		TTUInt16		numSignals = inputs->numAudioSignals;
		TTUInt16		numAccumulatedChannels = 0;
		TTAudioSignal&	out = outputs->getSignal(0);
		
		// 1. figure out our total number of channels
		for (TTUInt16 i=0; i<numSignals; i++) {
			TTAudioSignal&	in = inputs->getSignal(i);
			numAccumulatedChannels += in.getNumChannelsAsInt(); 
		}
		
		// 2. setup our output buffer for the correct number of channels
		// TODO: check if a resize is necessary
		out.setMaxNumChannels(numAccumulatedChannels);
		out.setNumChannels(numAccumulatedChannels);
				
		// 3. copy the data to the output buffer
		numAccumulatedChannels = 0;
		for (TTUInt16 i=0; i<numSignals; i++) {
			TTAudioSignal&	in = inputs->getSignal(i);
			TTAudioSignal::copyDirty(in, out, numAccumulatedChannels);
			numAccumulatedChannels += in.getNumChannelsAsInt();
		}
		return kTTErrNone;
	}
	
};




#endif // __TT_JOIN_H__
