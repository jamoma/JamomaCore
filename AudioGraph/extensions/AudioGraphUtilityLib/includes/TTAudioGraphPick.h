/** @file
 *
 * @ingroup audioGraphUtilityLib
 *
 * @brief pick≈: extract N specific audio signals from multichannel signal
 *
 * @details
 *
 * @authors Nils Peters
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_PICK_H__
#define __TT_PICK_H__

#include "TTDSP.h"


class TTAudioGraphPick : public TTAudioObjectBase {
	TTCLASS_SETUP(TTAudioGraphPick)
	
protected:
	
	std::vector<TTChannelCount>	mPickChannels;	///< The specific channels we want to pick
	TTChannelCount		mNumPickChannels; ///< The number of channels we pick
	TTBoolean			outputNeedsResize;
	
	TTErr setPicks(const TTValueRef args)
	{
		if (args.size() != mNumPickChannels){
			mNumPickChannels = args.size();
			mPickChannels.resize(mNumPickChannels);
			outputNeedsResize = true;
		}
				
		for (TTChannelCount i=0; i<mNumPickChannels; i++) {
			mPickChannels[i] = args[i]; //substracting offset (channel 1 is JAG-channel 0)
			mPickChannels[i] = mPickChannels[i] - 1;
		}
		return kTTErrNone;
	}
	
	TTErr getPicks(TTValueRef args)
	{
		args.resize(mNumPickChannels);
		for (TTChannelCount i=0; i<mNumPickChannels; i++)
			args[i] = mPickChannels[i] + 1; //re-adding offset
		return kTTErrNone;
	}
	
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
	{
		TTAudioSignal&	in = inputs->getSignal(0);
		TTAudioSignal&	out = outputs->getSignal(0);
		TTSampleValuePtr	inSample, outSample;
		TTChannelCount	inputChannelCount = in.getNumChannelsAsInt();
		TTUInt16		vs = out.getVectorSizeAsInt();
		TTChannelCount	currentPick;
		
		if (outputNeedsResize){
		out.setMaxNumChannels(mNumPickChannels);
		out.setNumChannels(mNumPickChannels);
		outputNeedsResize = false;
		}
		
		for (TTChannelCount i=0; i < mNumPickChannels; i++) {
			outSample = out.mSampleVectors[i];
			//n = vs;
			currentPick = mPickChannels[i];
			if (currentPick <= inputChannelCount) {
				inSample = in.mSampleVectors[mPickChannels[i]];					
				//while (n--)
				//	*outSample++ = *inSample++;
				memcpy(outSample, inSample, sizeof(TTSampleValue) * vs);
			}
			else {
				memset(outSample, 0, sizeof(TTSampleValue) * vs);
				//while (n--)
				//	*outSample++ = 0.0;
			}
				
		}

		return kTTErrNone;
	}
	
};



#endif // __TT_PICK_H__
