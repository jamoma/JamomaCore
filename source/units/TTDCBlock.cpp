/*
 * TTBlue DC Offset Filter and Blocker 
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDCBlock.h"


TTDCBlock::TTDCBlock()
{
	registerMessage("clear", clear);	// make the clear method public
	setProcess(processAudio);			// tell the base class what routine to use for processing audio
	clear();							// clear our feedback storage variables
}


TTDCBlock::~TTDCBlock()
{
	;
}


TTErr TTDCBlock::clear()
{
	short i;

	for(i=0; i<TT_MAX_NUM_CHANNELS; i++){
		lastInput[i] = 0;
		lastOutput[i] = 0;
	}
	return TT_ERR_NONE;
}


// DSP LOOP
// Note: an algorithm that is frequently used in Max:
//		"biquad~ 1.0 -1.0 -0.9997 0.0"
TTErr TTDCBlock::processAudio(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs;
	TTSampleValue	*inSample,
					*outSample;
	short			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	short			channel;
	TTSampleValue	temp;

	//	TODO: this should be implmenented in the base class as an attr which switches the function pointer
	//	if(bypassAttribute)
	//		return [super processAudioWithInput:audioIn andOutput:audioOut];

	for(channel=0; channel<numchannels; channel++){
		inSample = in->vectors[channel];
		outSample = out->vectors[channel];
		vs = in->vs;
		
		while(vs--){
			temp = *inSample++;
			*outSample++ = lastOutput[channel] = TTAntiDenormal(temp - lastInput[channel] + (lastOutput[channel] * 0.9997));
			lastInput[channel] = temp;
		}
	}
	return TT_ERR_NONE;
}

