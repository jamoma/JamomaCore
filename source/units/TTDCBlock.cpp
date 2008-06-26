/*
 * TTBlue DC Offset Filter and Blocker 
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDCBlock.h"


TTDCBlock::TTDCBlock(TTUInt16 newMaxNumChannels)
	: TTAudioObject("filter.dcblock", newMaxNumChannels),
	lastInput(NULL),
	lastOutput(NULL)
{
	// make the clear method available to be called:
	registerMessage(TT("clear"), (TTMethod)&TTDCBlock::clear, kTTMessagePassNone);
	
	// this next one is called by the parent class so we can allocate memory as required
	registerMessage(TT("updateMaxNumChannels"), (TTMethod)&TTDCBlock::updateMaxNumChannels);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);
	setProcess((TTProcessMethod)&TTDCBlock::processAudio);
}


TTDCBlock::~TTDCBlock()
{
	free(lastInput);
	free(lastOutput);
}


TTErr TTDCBlock::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
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


TTErr TTDCBlock::clear()
{
	short i;

	for(i=0; i<maxNumChannels; i++){
		lastInput[i] = 0;
		lastOutput[i] = 0;
	}
	return kTTErrNone;
}


// DSP LOOP
TTErr TTDCBlock::processAudio(TTAudioSignal& in, TTAudioSignal& out)
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

