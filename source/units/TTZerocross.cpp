/*
 * TTBlue Zero-crossing detector and counter.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTZerocross.h"
#define thisTTClass TTZerocross


TTZerocross::TTZerocross(TTUInt16 newMaxNumChannels)
	: TTAudioObject("analysis.zerocross", newMaxNumChannels),
	lastInput(NULL),
	lastOutput(NULL)
{
	// make the clear method available to be called:
//	registerMessage(TT("clear"), (TTMethod)&TTZerocross::clear, kTTMessagePassNone);
//	registerMessage(TT("clear"), (TTCLASSMETHOD)clear, kTTMessagePassNone);
	registerSimpleMessage(clear);
	
	// notifications
//	registerMessage(TT("updateMaxNumChannels"), (TTMethod)&TTZerocross::updateMaxNumChannels);
	registerSimpleMessage(updateSr);
	registerMessageWithArgument(updateMaxNumChannels);
	
//	registerMessage(TT("updateSr"), (TTMethod)&TTZerocross::updateSr, kTTMessagePassNone);
//	TT_REGISTER_SR_UPDATE;
	
	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);
	setProcess((TTProcessMethod)&TTZerocross::processAudio);
}


TTZerocross::~TTZerocross()
{
	free(lastInput);
	free(lastOutput);
}


TTErr TTZerocross::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	if(lastInput)
		free(lastInput);
	if(lastOutput)
		free(lastOutput);
	lastInput = (TTSampleValue*)malloc(sizeof(TTSampleValue) * maxNumChannels);
	lastOutput = (TTSampleValue*)malloc(sizeof(TTSampleValue) * maxNumChannels);
	clear();
	return kTTErrNone;
}


TTErr TTZerocross::updateSr()
{
	;
}


TTErr TTZerocross::clear()
{
	short i;

	for(i=0; i<maxNumChannels; i++){
		lastInput[i] = 0;
		lastOutput[i] = 0;
	}
	return kTTErrNone;
}


// DSP LOOP
TTErr TTZerocross::processAudio(TTAudioSignal& in, TTAudioSignal& out)
{
	TTUInt16		vs;
	TTSampleValue	*inSample,
					*outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	TTSampleValue	temp;

	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		while(vs--){
			temp = *inSample++;
			*outSample++ = lastOutput[channel] = antiDenormal(temp - lastInput[channel] + (lastOutput[channel] * 0.9997));
			lastInput[channel] = temp;
		}
	}
	return kTTErrNone;
}

