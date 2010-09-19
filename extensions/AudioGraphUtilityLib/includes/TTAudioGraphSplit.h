/* 
 * DSP Matrix Mixer Object
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_SPLIT_H__
#define __TT_SPLIT_H__

#include "TTDSP.h"


/**	The split≈ object takes a single input signal and splits it out	into N output signals */
class TTAudioGraphSplit : public TTAudioObject {
	TTCLASS_SETUP(TTAudioGraphSplit)
	
	vector<TTUInt16>	mSplitChannels;	///< The number of channels in each of N groups of signals
	
	TTErr setGroups(const TTValueRef args)
	{
		TTUInt16 numArgs = args.getSize();
		
		mSplitChannels.resize(numArgs);
		for (TTUInt16 i=0; i<numArgs; i++) 
			args.get(i, mSplitChannels[i]);
		return kTTErrNone;
	}
	
	TTErr getGroups(TTValueRef args)
	{
		TTUInt16 numArgs = mSplitChannels.size();
		
		args.setSize(numArgs);
		for (TTUInt16 i=0; i<numArgs; i++)
			args.set(i, mSplitChannels[i]);
		return kTTErrNone;
	}
	
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
	{
		TTAudioSignal&	in = inputs->getSignal(0);
		TTUInt16		channelOffset = 0;
		
		for (TTUInt16 i=0; i < outputs->numAudioSignals; i++) {
			TTAudioSignal&	out = outputs->getSignal(i);
			TTUInt16		numChannels = mSplitChannels[i];
			
			// TODO: we don't really want to alloc this memory every time!
			out.setMaxNumChannels(numChannels);
			out.setNumChannels(numChannels);
			TTAudioSignal::copySubset(in, out, channelOffset, channelOffset+numChannels-1);
			channelOffset += numChannels;
		}
		return kTTErrNone;
	}
	
};



#endif // __TT_SPLIT_H__
