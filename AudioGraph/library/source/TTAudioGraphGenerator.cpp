/** @file
 *
 * @ingroup audioGraphLibrary
 *
 * @brief Generates the AudioGraph structure
 *
 * @details
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTAudioGraphGenerator.h"

#define thisTTClass			TTAudioGraphGenerator
#define thisTTClassName		"audio.generator"
#define thisTTClassTags		"audioGraphLibrary, audio, graph, generator"

TT_AUDIO_CONSTRUCTOR,
	mBuffer(NULL)
{
	// arguments is the number of inlets (not the number of channels)
	TTObjectBaseInstantiate(kTTSym_audiosignal, &mBuffer, arguments);

	addAttributeWithSetter(VectorSize, kTypeUInt16);
	addUpdates(MaxNumChannels);
	addUpdates(SampleRate);

	setAttributeValue(kTTSym_vectorSize, 64);
	setAttributeValue(TT("maxNumChannels"), 1);
	setProcessMethod(processAudio);
}


TTAudioGraphGenerator::~TTAudioGraphGenerator()
{
	TTObjectBaseRelease(&mBuffer);
}


TTErr TTAudioGraphGenerator::setVectorSize(const TTValue& newVectorSize)
{
	mVectorSize = newVectorSize;
	return mBuffer->setAttributeValue(TT("vectorSize"), mVectorSize);
}


TTErr TTAudioGraphGenerator::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mBuffer->setAttributeValue(TT("maxNumChannels"), mMaxNumChannels);
	mBuffer->setAttributeValue(TT("numChannels"), mMaxNumChannels);
	return mBuffer->sendMessage(TT("alloc"));
}


TTErr TTAudioGraphGenerator::updateSampleRate(const TTValue& oldSampleRate, TTValue&)
{
	return kTTErrNone;
}


TTErr TTAudioGraphGenerator::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	return TTAudioSignal::copy(*mBuffer, out);
}


