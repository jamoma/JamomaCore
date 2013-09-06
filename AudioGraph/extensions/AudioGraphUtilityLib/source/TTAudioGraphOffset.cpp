/** @file
 *
 * @ingroup audioGraphUtilityLib
 *
 * @brief offset≈: dynamically shift channels in multichannel signal
 *
 * @details
 *
 * @authors Nils Peters
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTAudioGraphOffset.h"

#define thisTTClass			TTAudioGraphOffset
#define thisTTClassName		"audio.offset"
#define thisTTClassTags		"audio, graph"


TT_AUDIO_CONSTRUCTOR,
mOffset(0)
{
	addAttributeWithSetter(Offset, kTypeUInt16);	
	setAttributeValue(TT("maxNumChannels"), arguments);		
	setProcessMethod(processAudioBypass);
}


// Destructor
TTAudioGraphOffset::~TTAudioGraphOffset()
{
	;
}

TTErr TTAudioGraphOffset::setOffset(const TTValue& value)
{
	mOffset = value;
	if (mOffset < 0)
		setProcessMethod(processAudioNegativeOffset);
	else if (mOffset > 0)
		setProcessMethod(processAudioPositiveOffset);
	else 
		setProcessMethod(processAudioBypass);
	
	return kTTErrNone;
}

TTErr TTAudioGraphOffset::processAudioNegativeOffset(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValuePtr	inSample, outSample;
	TTUInt16		inputChannelCount = in.getNumChannelsAsInt();		
	TTUInt16		vs = out.getVectorSizeAsInt();

	if (inputChannelCount+mOffset >= 1){
		out.setMaxNumChannels(inputChannelCount+mOffset); //mOffset is negative here
		out.setNumChannels(inputChannelCount+mOffset);
		
		for (TTUInt16 i=0; i < inputChannelCount+mOffset; i++) {
			outSample = out.mSampleVectors[i];
			inSample = in.mSampleVectors[i-mOffset];					
			memcpy(outSample, inSample, sizeof(TTSampleValue) * vs);
			}
	}
	return kTTErrNone;
}

TTErr TTAudioGraphOffset::processAudioPositiveOffset(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValuePtr	inSample, outSample;
	TTUInt16		inputChannelCount = in.getNumChannelsAsInt();		
	TTUInt16		vs = out.getVectorSizeAsInt();
	
	//TODO: make sure inputChannelCount+mOffset doesn't exeed JAG channel limit  

	out.setMaxNumChannels(inputChannelCount+mOffset);
	out.setNumChannels(inputChannelCount+mOffset);
	
	
	for (TTUInt16 i=0; i < mOffset; i++) {
		outSample = out.mSampleVectors[i];
		memset(outSample, 0, sizeof(TTSampleValue) * vs);
	}
	
	for (TTUInt16 i=0; i < inputChannelCount; i++) {
		outSample = out.mSampleVectors[mOffset+i];
		inSample = in.mSampleVectors[i];					
		memcpy(outSample, inSample, sizeof(TTSampleValue) * vs);
	}
	
	return kTTErrNone;
}

TTErr TTAudioGraphOffset::processAudioBypass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValuePtr	inSample, outSample;
	TTUInt16		inputChannelCount = in.getNumChannelsAsInt();		
	TTUInt16		vs = out.getVectorSizeAsInt();
	
	out.setMaxNumChannels(inputChannelCount);
	out.setNumChannels(inputChannelCount);
	
	for (TTUInt16 i=0; i < inputChannelCount; i++) {
		outSample = out.mSampleVectors[i];
		inSample = in.mSampleVectors[i];					
		memcpy(outSample, inSample, sizeof(TTSampleValue) * vs);
	}
	
	return kTTErrNone;
}
