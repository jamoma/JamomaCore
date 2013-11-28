/** @file
 *
 * @ingroup audioGraphLibrary
 *
 * @brief Defines input interface at the top of an AudioGraph
 *
 * @details TTAudioGraphInput is an audio object functioning as a source at the top of the #TTAudioGraph graph, providing sound signals from an external audio input device to the graph for further downstream processing. In Jamoma AudioGraph audio processing is driven from a from a ‘terminal object’ or ‘sink’ at the bottom of the chain.
 * Hence TTAudioGraphInput objects are not driving the audio graph processing, they simply provides audio signals for further downstream processing
 * For example sources may provide audio input tio the graph from the hosting environment, read sound frok disk or be used for sound synthesis.
 * Sources may have other #TTAudioGraphObjects connected downstream, but can not be connected to further upstream TTAudioGraphObjects.
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


// TODO: Why are this files included here rather than in the head file?
#include "TTAudioGraphObject.h"
#include "TTAudioGraphInlet.h"		// required for windows build
#include "TTAudioGraphInput.h"
//#include "TTAudioEngine.h"

#define thisTTClass			TTAudioGraphInput
#define thisTTClassName		"adc"
#define thisTTClassTags		"audio, graph, input"

TT_AUDIO_CONSTRUCTOR
{
	TTDictionary d("j@m0m@_audioengine");
	TTPtr engine = NULL;
	
	d.getValue(engine);
	
	mAudioEngine = (TTAudioObjectBase*)engine;

	TTValue dummy;
	TTValue buffer;
	mAudioEngine->sendMessage("getInputSignalReference", dummy, buffer);
	mBuffer = (TTAudioSignalPtr)TTPtr(buffer);
	
	addAttributeWithGetterAndSetter(SampleRate, kTypeUInt32);
	addAttributeWithGetterAndSetter(VectorSize, kTypeUInt16);
	addAttributeWithGetterAndSetter(Device,		kTypeSymbol);

	addMessage(start);
	addMessage(stop);
	addMessageWithArguments(getAvailableDeviceNames);
	
	setProcessMethod(processAudio);
	
	setAttributeValue(kTTSym_sampleRate, 44100);
	setAttributeValue(kTTSym_vectorSize, 512);
}


TTAudioGraphInput::~TTAudioGraphInput()
{
	//TTAudioEngine::destroy();
	TTObjectBaseRelease(&mBuffer);
}


TTErr TTAudioGraphInput::getAvailableDeviceNames(const TTValue&, TTValue& returnedDeviceNames)
{
	return mAudioEngine->sendMessage(TT("getAvailableInputDeviceNames"), kTTValNONE, returnedDeviceNames);
}


TTErr TTAudioGraphInput::start()
{
	mAudioEngine->sendMessage(TT("start"));
	return kTTErrNone;
}


TTErr TTAudioGraphInput::stop()
{
	mAudioEngine->sendMessage(TT("stop"));
	return kTTErrNone;
}

TTErr TTAudioGraphInput::setSampleRate(const TTValue& newValue)
{
	return mAudioEngine->setAttributeValue(kTTSym_sampleRate, const_cast<TTValue&>(newValue));
}

TTErr TTAudioGraphInput::getSampleRate(TTValue& returnedValue)
{
	return mAudioEngine->getAttributeValue(kTTSym_sampleRate, returnedValue);
}


TTErr TTAudioGraphInput::setVectorSize(const TTValue& newValue)
{
	return mAudioEngine->setAttributeValue(kTTSym_vectorSize, const_cast<TTValue&>(newValue));
}

TTErr TTAudioGraphInput::getVectorSize(TTValue& returnedValue)
{
	return mAudioEngine->getAttributeValue(kTTSym_vectorSize, returnedValue);
}


TTErr TTAudioGraphInput::setDevice(const TTValue& newValue)
{
	return mAudioEngine->setAttributeValue(TT("inputDevice"), const_cast<TTValue&>(newValue));
}

TTErr TTAudioGraphInput::getDevice(TTValue& returnedValue)
{
	return mAudioEngine->getAttributeValue(TT("inputDevice"), returnedValue);
}


TTErr TTAudioGraphInput::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	if (outputs->numAudioSignals){
		TTAudioSignal&	out = outputs->getSignal(0);

		out = *mBuffer;
		return kTTErrNone;
	}
	else
		return kTTErrBadChannelConfig;
}
