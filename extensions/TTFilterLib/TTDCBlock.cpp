/*
 * TTBlue DC Offset Filter and Blocker 
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDCBlock.h"
#define thisTTClass TTDCBlock


TTDCBlock::TTDCBlock(TTUInt16 newMaxNumChannels)
	: TTAudioObject("filter.dcblock", newMaxNumChannels),
	lastInput(NULL),
	lastOutput(NULL)
{
	// make the clear method available to be called:
	registerMessageSimple(clear);
	
	// this next one is called by the parent class so we can allocate memory as required
	registerMessageWithArgument(updateMaxNumChannels);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);
	setProcessMethod(processAudio);
}


TTDCBlock::~TTDCBlock()
{
	delete[] lastInput;
	delete[] lastOutput;
}


TTErr TTDCBlock::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	delete[] lastInput;
	delete[] lastOutput;
	lastInput = new TTSampleValue[maxNumChannels];
	lastOutput = new TTSampleValue[maxNumChannels];

	clear();
	return kTTErrNone;
}


TTErr TTDCBlock::clear()
{
	for(TTUInt16 i=0; i<maxNumChannels; i++){
		lastInput[i] = 0;
		lastOutput[i] = 0;
	}
	return kTTErrNone;
}


// DSP LOOP
TTErr TTDCBlock::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
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
			*outSample++ = lastOutput[channel] = TTAntiDenormal(temp - lastInput[channel] + (lastOutput[channel] * 0.9997));
			lastInput[channel] = temp;
		}
	}
	return kTTErrNone;
}

