/* 
 * Super simple Spatialization object for Jamoma DSP
 * Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "SpatThru.h"

#define thisTTClass			SpatThru
#define thisTTClassName		"spat.thru"
#define thisTTClassTags		"audio, spatialization, DSP, bypass, processing"


TT_AUDIO_CONSTRUCTOR
{
	addAttributeWithSetter(SourceCount,			kTypeInt16);
	//addAttributeProperty(SourceCount,			range,			TTValue(1, 1024));
	//addAttributeProperty(SourceCount,			rangeChecking,	TT("low"));
	
	addAttributeWithSetter(DestinationCount,			kTypeInt16);
	//addAttributeProperty(DestinationCount,			range,			TTValue(1, 1024));
	//addAttributeProperty(DestinationCount,			rangeChecking,	TT("low"));
	
	setProcessMethod(processAudio);
}


SpatThru::~SpatThru()
{
	;
}


TTErr SpatThru::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	src = inputs->getSignal(0);
	TTAudioSignal&	dst = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue*	srcSample;
	TTSampleValue*	dstSample;
	
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(src, dst);
	TTUInt16		channel;
	
	TTUInt16		srcChannelCount = src.getNumChannelsAsInt();
	TTUInt16		dstChannelCount = dst.getNumChannelsAsInt();
	
	if (srcChannelCount != mSourceCount) {
		mSourceCount(srcChannelCount);
	}
	if (dstChannelCount != mDestinationCount) {
		TTValue v = Destination;
		
		out.setMaxNumChannels(v);
		out.setNumChannels(v);
		mDestinationCount = mDestinationCount;
	}
	
	
	for (channel=0; channel<numchannels; channel++) {
		srcSample = src.mSampleVectors[channel];
		dstSample = dst.mSampleVectors[channel];
		vs = src.getVectorSizeAsInt();
		
		while (vs--) {
			*dstSample++ = *srcSample++;
		}
	}
	
	if (dstChannelCount > srcChannelCount) {
		for (channel; channel<dstChannelCount; channel++) {
			dstSample = dst.mSampleVectors[channel];
			vs = src.getVectorSizeAsInt();
			
			while (vs--) {
				*dstSample++ = 0.0;
			}
		}
	}
	
	return kTTErrNone;
}

