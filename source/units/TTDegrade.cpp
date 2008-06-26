/* 
 * TTBlue Degrade Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDegrade.h"

#define BIG_INT	0x00800000
#define ONE_OVER_BIG_INT 1.1920928955E-7


TTDegrade::TTDegrade(TTUInt16 newMaxNumChannels)
	: TTAudioObject("audio.degrade", newMaxNumChannels),
	accumulator(NULL), output(NULL)
{
	// register attributes
	registerAttribute(TT("bitdepth"),	kTypeUInt8,		&attrBitdepth,	(TTSetterMethod)&TTDegrade::setBitdepth);
	registerAttribute(TT("srRatio"),	kTypeFloat64,	&attrSrRatio);

	// register for notifications from the parent class so we can allocate memory as required
	registerMessage(TT("updateMaxNumChannels"), (TTMethod)&TTDegrade::updateMaxNumChannels);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);
	setAttributeValue(TT("bitdepth"),		24);
	setAttributeValue(TT("srRatio"),		1.0);
	setProcess((TTProcessMethod)&TTDegrade::processAudio);
}


TTDegrade::~TTDegrade()
{
	free(accumulator);
	free(output);
}


TTErr TTDegrade::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	short i;
	
	if(accumulator)
		free(accumulator);
	if(output)
		free(output);
	
	accumulator = (TTSampleValue*)malloc(sizeof(TTSampleValue) * maxNumChannels);
	output = (TTSampleValue*)malloc(sizeof(TTSampleValue) * maxNumChannels);
	for(i=0; i<maxNumChannels; i++){
		accumulator[i] = 0.0;
		output[i] = 0.0;				// clear the values
	}
	return kTTErrNone;
}


TTErr TTDegrade::setBitdepth(const TTValue& newValue)
{
	attrBitdepth = TTClip((int)newValue, 1, 24);
	bitShift = 24 - attrBitdepth;
	return kTTErrNone;
}


TTErr TTDegrade::processAudio(TTAudioSignal& in, TTAudioSignal& out)
{
	TTUInt16		vs;
	TTSampleValue	*inSample,
					*outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	long			l;

	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		while(vs--){
			// SampeRate Reduction
			accumulator[channel] += attrSrRatio;
			if(accumulator[channel] >= 1.0){
				output[channel] = *inSample++;
				accumulator[channel] -= 1.0;
			}
		
			// BitDepth Reduction
			l = (long)(output[channel] * BIG_INT);			// change float to long int
			l >>= bitShift;									// shift away the least-significant bits
			l <<= bitShift;									// shift back to the correct registers
			*outSample++ = (float) l * ONE_OVER_BIG_INT;	// back to float
		}
	}
	return kTTErrNone;
}

