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
	registerMessage(TT("clear"), (TTMethod)&TTDCBlock::clear);		// make the clear method public
	registerParameter(TT("bypass"), kTypeInt32, 0, (TTMethod)NULL, (TTMethod)&TTDCBlock::setBypass);

	clear();						// clear our feedback storage variables
	setBypass(TT(""), kTTVal0);		// set default and the process method
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
	return kTTErrNone;
}


TTErr TTDCBlock::setBypass(const TTSymbol& name, TTValue& value)
{
	attrBypass = value;
	if(attrBypass)
		return setProcess((TTProcessMethod)&TTAudioObject::bypassProcess);
	else
		return setProcess((TTProcessMethod)&TTDCBlock::processAudio);
}


// DSP LOOP
TTErr TTDCBlock::processAudio(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs;
	TTSampleValue	*inSample,
					*outSample;
	short			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	short			channel;
	TTSampleValue	temp;

	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.vs;
		
		while(vs--){
			temp = *inSample++;
			*outSample++ = lastOutput[channel] = antiDenormal(temp - lastInput[channel] + (lastOutput[channel] * 0.9997));
			lastInput[channel] = temp;
		}
	}
	return kTTErrNone;
}

