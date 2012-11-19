/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief Super simple through-putting spatialization object for Jamoma DSP
 *
 * @details This unit simply throughputs whatever comes in.
 * As a real-world spatialisation technique that is pretty much useless, but
 * it could be considered a bypassing method, and it is also useful while
 * developing this library in order to first implement simple-stupid units
 * before delving into the real spatialisation renderers.
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */
#include "TTSpatThru.h"

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

TTErr SpatThru::setSourceCount(const TTValue& newValue)
{
	TTUInt16 numInputs = newValue;
	
	if (numInputs != mSourceCount) {
		mSourceCount = numInputs;
		}
	return kTTErrNone;
}


TTErr SpatThru::setDestinationCount(const TTValue& newValue)
{
	TTUInt16 numOutputs = newValue;
	
	if (numOutputs != mDestinationCount) {
		mDestinationCount = numOutputs;
		}
	return kTTErrNone;
}



TTErr SpatThru::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	src = inputs->getSignal(0);
	TTAudioSignal&	dst = outputs->getSignal(0);
	TTUInt16		vs = src.getVectorSizeAsInt();
	TTSampleValue*	srcSample;
	TTSampleValue*	dstSample;
	
	TTUInt16		channel;
	
	TTUInt16		srcChannelCount = src.getNumChannelsAsInt();
	TTUInt16		dstChannelCount = dst.getNumChannelsAsInt();
	
	if (srcChannelCount != mSourceCount) {
		setSourceCount(srcChannelCount);	// for now, adapting to the number of inputs 
	}
	
	if (dstChannelCount != mDestinationCount) {
		TTValue v = mDestinationCount;
		
		dst.setMaxNumChannels(v);
		dst.setNumChannelsWithInt(v);		
		dstChannelCount = mDestinationCount;
	}
	
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(dst,src);	
	
	for (channel=0; channel<numchannels; channel++) {
		srcSample = src.mSampleVectors[channel];
		dstSample = dst.mSampleVectors[channel];
		memcpy(dstSample, srcSample, sizeof(TTSampleValue) * vs);	
	}
	
	if (dstChannelCount > srcChannelCount) {
		for (channel; channel<dstChannelCount; channel++) {
			dstSample = dst.mSampleVectors[channel];
			memset(dstSample, 0, sizeof(TTSampleValue) * vs);
		}
	}
	
	return kTTErrNone;
}

