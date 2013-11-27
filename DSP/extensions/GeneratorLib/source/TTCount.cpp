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

#include "TTCount.h"

#define thisTTClass TTCount
#define thisTTClassName		"count"
#define thisTTClassTags		"dspGeneratorLib, audio, generator"


TT_AUDIO_CONSTRUCTOR
{
	addMessage(reset);
	setProcessMethod(processAudio);
	reset();
}


TTCount::~TTCount()
{
	;
}


TTErr TTCount::reset()
{
	count = 0.;
	return kTTErrNone;
}


TTErr TTCount::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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
		thisVectorCount = count;
		while (vs--) {
			*outSample++ = thisVectorCount;
			thisVectorCount += 1.;
		}
	}

	count = thisVectorCount;
	return kTTErrNone;
}