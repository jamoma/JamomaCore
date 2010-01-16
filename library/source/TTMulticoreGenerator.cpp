/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTMulticoreGenerator.h"

#define thisTTClass			TTMulticoreGenerator
#define thisTTClassName		"multicore.generator"
#define thisTTClassTags		"audio, multicore, generator"

TT_AUDIO_CONSTRUCTOR,
	mBuffer(NULL),
	mBufferArray(NULL)
{
	// arguments is the number of inlets (not the number of channels)

	TTObjectInstantiate(kTTSym_audiosignal, &mBuffer, arguments);
	TTObjectInstantiate(kTTSym_audiosignalarray, (TTObjectPtr*)&mBufferArray, arguments);
	mBufferArray->setSignal(0, mBuffer);

	addMessageWithArgument(updateMaxNumChannels);
	
	setProcessMethod(processAudio);
}


TTMulticoreGenerator::~TTMulticoreGenerator()
{
	TTObjectRelease((TTObjectPtr*)&mBufferArray);
	TTObjectRelease(&mBuffer);
}


TTErr TTMulticoreGenerator::updateMaxNumChannels(const TTValue&)
{
	mBuffer->setAttributeValue(kTTSym_maxNumChannels, maxNumChannels);
	mBuffer->setAttributeValue(kTTSym_numChannels, maxNumChannels);
	return kTTErrNone;
}


TTErr TTMulticoreGenerator::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	return TTAudioSignal::copy(*mBuffer, out);
}
