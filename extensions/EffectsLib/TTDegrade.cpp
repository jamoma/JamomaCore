/* 
 * TTBlue Degrade Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDegrade.h"

#define thisTTClass			TTDegrade
#define thisTTClassName		"degrade"
#define thisTTClassTags		"audio, processor, distortion"

#define BIG_INT	0x00800000
#define ONE_OVER_BIG_INT 1.1920928955E-7


TT_AUDIO_CONSTRUCTOR
, accumulator(NULL), output(NULL)
{
	TTUInt16	initialMaxNumChannels = arguments;
	
	// register attributes
	registerAttributeWithSetter(bitdepth,	kTypeUInt8);
	registerAttributeSimple(srRatio,		kTypeFloat64);

	// register for notifications from the parent class so we can allocate memory as required
	registerMessageWithArgument(updateMaxNumChannels);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	initialMaxNumChannels);
	setAttributeValue(TT("bitdepth"),		24);
	setAttributeValue(TT("srRatio"),		1.0);
	setProcessMethod(processAudio);
}


TTDegrade::~TTDegrade()
{
	delete[] accumulator;
	delete[] output;
}


TTErr TTDegrade::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	short i;
	
	delete[] accumulator;
	delete[] output;
	
	accumulator	= new TTSampleValue[maxNumChannels];
	output		= new TTSampleValue[maxNumChannels];

	for(i=0; i<maxNumChannels; i++){
		accumulator[i] = 0.0;
		output[i] = 0.0;				// clear the values
	}
	return kTTErrNone;
}


TTErr TTDegrade::setbitdepth(const TTValue& newValue)
{
	bitdepth = TTClip<TTInt32>(newValue, 1, 24);
	bitShift = 24 - bitdepth;
	return kTTErrNone;
}


TTErr TTDegrade::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
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
			accumulator[channel] += srRatio;
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

