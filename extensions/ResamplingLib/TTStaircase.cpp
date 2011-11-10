/* 
 * Resample
 * Extension Class for Jamoma DSP
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTStaircase.h"

#define thisTTClass			TTStaircase
#define thisTTClassName		"staircase"
#define thisTTClassTags		"audio, processor, resample"


TT_AUDIO_CONSTRUCTOR
{
	addAttributeWithSetter(Mode, kTypeSymbol);
	setAttributeValue(TT("mode"), TT("down"));					  
}


TTStaircase::~TTStaircase()
{
	;
}


TTErr TTStaircase::setMode(const TTValue& newMode)
{
	mMode = newMode;
	if (mMode == TT("upsample"))
		setProcessMethod(processUpsample);
	else // mMode == TT("downsample")
		setProcessMethod(processDownsample);
	return kTTErrNone;
}


TTErr TTStaircase::processDownsample(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTPtrSizedInt	channel;
	TTUInt16		targetVectorSize = in.getVectorSizeAsInt() / 2;
	
	out.changeVectorSize(targetVectorSize);
	out.setSampleRate(in.getSampleRate() / 2);
	for (channel=0; channel<numchannels; channel++) {
		TTUInt16 n = targetVectorSize;
		
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel];
		
		while (n--) {
			*outSample++ = * inSample++;
			inSample++;
		}
	}
	return kTTErrNone;
}


TTErr TTStaircase::processUpsample(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTPtrSizedInt	channel;
	TTUInt16		targetVectorSize = in.getVectorSizeAsInt() * 2;
	TTErr			err;
	
	err = out.changeVectorSize(targetVectorSize);
	if (!err) {
		out.setSampleRate(in.getSampleRate() * 2);
		for (channel=0; channel<numchannels; channel++) {
			TTUInt16		n = in.getVectorSizeAsInt();
			TTSampleValue	x;
			
			inSample = in.mSampleVectors[channel];
			outSample = out.mSampleVectors[channel];
			
			while (n--) {
				x = *inSample++;
				*outSample++ = x;
				*outSample++ = x;
			}
		}
	}
	return kTTErrNone;
}

