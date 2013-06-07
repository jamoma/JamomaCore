/** @file
 *
 * @ingroup audioGraphUtilityLib
 *
 * @brief split≈: divide multichannel signal into N smaller multichannel signals
 *
 * @details
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2008 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_SPLIT_H__
#define __TT_SPLIT_H__

#include "TTDSP.h"


/**	The split≈ object takes a single input signal and splits it out	into N output signals */
class TTAudioGraphSplit : public TTAudioObjectBase {
	TTCLASS_SETUP(TTAudioGraphSplit)
	
protected:
	
	std::vector<TTUInt16>	mSplitChannels;	///< The number of channels in each of N groups of signals
	
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
		TTUInt16		inputChannelCount = in.getNumChannelsAsInt();
		TTUInt16		channelOffset = 0;
		TTUInt16		channelBound = 0;
		
		for (TTUInt16 i=0; i < outputs->numAudioSignals; i++) {
			TTAudioSignal&	out = outputs->getSignal(i);
			TTUInt16		numChannels = mSplitChannels[i];
			
			// TODO: we don't really want to alloc this memory every time!
			out.setMaxNumChannels(numChannels);
			out.setNumChannels(numChannels);
			
			// if we have run out of channels to split, then stop splitting them.
			if (channelOffset >= inputChannelCount)
				break;
			
			channelBound = channelOffset+numChannels-1;
			if (channelBound >= inputChannelCount)
				channelBound = inputChannelCount-1;
			
			TTAudioSignal::copySubset(in, out, channelOffset, channelBound);
			channelOffset += numChannels;
			// TODO: what happens when the incomming multicable has more audio channels than we want to split? Should there be an extra 'overflow' outlet similar to 'route' or 'sel'? 
		}
		return kTTErrNone;
	}
	
};



#endif // __TT_SPLIT_H__
