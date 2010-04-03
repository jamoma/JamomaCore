/* 
 * AudioGraph Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTAudioGraphGenerator.h"

#define thisTTClass			TTAudioGraphGenerator
#define thisTTClassName		"multicore.generator"
#define thisTTClassTags		"audio, multicore, generator"

TT_AUDIO_CONSTRUCTOR,
	mBuffer(NULL)
{
	// arguments is the number of inlets (not the number of channels)
	TTObjectInstantiate(kTTSym_audiosignal, &mBuffer, arguments);

	addAttributeWithSetter(VectorSize, kTypeUInt16);
	addMessageWithArgument(updateMaxNumChannels);
	addMessageWithArgument(updateSr);

	setAttributeValue(kTTSym_VectorSize, 64);
	setAttributeValue(TT("MaxNumChannels"), 1);
	setProcessMethod(processAudio);
}


TTAudioGraphGenerator::~TTAudioGraphGenerator()
{
	TTObjectRelease(&mBuffer);
}


TTErr TTAudioGraphGenerator::setVectorSize(const TTValue& newVectorSize)
{
	mVectorSize = newVectorSize;
	return mBuffer->setAttributeValue(TT("VectorSize"), mVectorSize);
}


TTErr TTAudioGraphGenerator::updateMaxNumChannels(const TTValue&)
{
	mBuffer->setAttributeValue(TT("MaxNumChannels"), maxNumChannels);
	mBuffer->setAttributeValue(TT("NumChannels"), maxNumChannels);
	return mBuffer->sendMessage(TT("alloc"));
}


TTErr TTAudioGraphGenerator::updateSr(const TTValue&)
{
	return kTTErrNone;
}


TTErr TTAudioGraphGenerator::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	return TTAudioSignal::copy(*mBuffer, out);
}
