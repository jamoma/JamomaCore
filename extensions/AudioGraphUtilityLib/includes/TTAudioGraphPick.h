/* 
 * TTAudioGraphSplit Object
 * Copyright © 2011, Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_PICK_H__
#define __TT_PICK_H__

#include "TTDSP.h"


class TTAudioGraphPick : public TTAudioObject {
	TTCLASS_SETUP(TTAudioGraphPick)
	
	vector<TTUInt16>	mPickChannels;	///< The specific channels we want to pick
	TTUInt16			mNumPickChannels; ///< The number of channels we pick
	TTBoolean			outputNeedsResize;
	
	TTErr setPicks(const TTValueRef args)
	{
		if (args.getSize() != mNumPickChannels){
			mNumPickChannels = args.getSize();
			mPickChannels.resize(mNumPickChannels);
			outputNeedsResize = true;
		}
				
		for (TTUInt16 i=0; i<mNumPickChannels; i++) {
			args.get(i, mPickChannels[i]); //substracting offset (channel 1 is JAG-channel 0)
			mPickChannels[i] = mPickChannels[i] - 1;
		}
		return kTTErrNone;
	}
	
	TTErr getPicks(TTValueRef args)
	{
		args.setSize(mNumPickChannels);
		for (TTUInt16 i=0; i<mNumPickChannels; i++)
			args.set(i, mPickChannels[i]+1); //re-adding offset 
		return kTTErrNone;
	}
	
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
	{
		TTAudioSignal&	in = inputs->getSignal(0);
		TTAudioSignal&	out = outputs->getSignal(0);
		TTSampleValuePtr	inSample, outSample;
		TTUInt16		inputChannelCount = in.getNumChannelsAsInt();		
		TTUInt16		vs = out.getVectorSizeAsInt();
		TTUInt16		currentPick; 
		
		if (outputNeedsResize){
		out.setMaxNumChannels(mNumPickChannels);
		out.setNumChannels(mNumPickChannels);
		outputNeedsResize = false;
		}
		
		for (TTUInt16 i=0; i < mNumPickChannels; i++) {
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
