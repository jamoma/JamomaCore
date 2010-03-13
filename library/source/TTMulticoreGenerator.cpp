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
	mBuffer(NULL)
{
	// arguments is the number of inlets (not the number of channels)
	TTObjectInstantiate(kTTSym_audiosignal, &mBuffer, arguments);

	addAttributeWithSetter(VectorSize, kTypeUInt16);
	addMessageWithArgument(updateMaxNumChannels);
	addMessageWithArgument(updateSr);

	setAttributeValue(TT("VectorSize"), 64);
	setAttributeValue(TT("MaxNumChannels"), 1);
	setProcessMethod(processAudio);
}


TTMulticoreGenerator::~TTMulticoreGenerator()
{
	TTObjectRelease(&mBuffer);
}


TTErr TTMulticoreGenerator::setVectorSize(const TTValue& newVectorSize)
{
	mVectorSize = newVectorSize;
	return mBuffer->setAttributeValue(TT("VectorSize"), mVectorSize);
}


TTErr TTMulticoreGenerator::updateMaxNumChannels(const TTValue&)
{
	mBuffer->setAttributeValue(TT("MaxNumChannels"), maxNumChannels);
	mBuffer->setAttributeValue(TT("NumChannels"), maxNumChannels);
	return mBuffer->sendMessage(TT("alloc"));
}


TTErr TTMulticoreGenerator::updateSr(const TTValue&)
{
	return kTTErrNone;
}


TTErr TTMulticoreGenerator::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	return TTAudioSignal::copy(*mBuffer, out);
}
