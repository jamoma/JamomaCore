/** @file
 *
 * @ingroup dspGeneratorLib
 *
 * @brief GeneratorLib: Count the number of processd samples, starting from zero.
 *
 * @details
 *
 * @authors Trond Lossius
 *
 * @copyright Copyright © 2012 by Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTCounter.h"

#define thisTTClass TTCounter
#define thisTTClassName		"counter"
#define thisTTClassTags		"audio, generator"


TT_AUDIO_CONSTRUCTOR
{
	addMessage(reset);
	setProcessMethod(processAudio);
	reset();
}


TTCounter::~TTCounter()
{
	;
}


TTErr TTCounter::reset()
{
	counter = 0.;
	return kTTErrNone;
}


TTErr TTCounter::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue	*outSample;
	TTUInt16		numchannels = out.getNumChannelsAsInt();
	TTUInt16		channel;
	TTUInt16		vs;
	TTFloat64		thisVectorCount;

	for (channel=0; channel<numchannels; channel++) {
		vs = out.getVectorSizeAsInt();
		outSample = out.mSampleVectors[channel];
		thisVectorCount = counter;
		while (vs--) {
			*outSample++ = thisVectorCount;
			thisVectorCount += 1.;
		}
	}

	counter = thisVectorCount;
	return kTTErrNone;
}