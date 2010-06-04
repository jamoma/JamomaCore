/* 
 * AudioGraph Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTAudioGraphObject.h"
#include "TTAudioGraphInlet.h"		// required for windows build
#include "TTAudioGraphOutput.h"
#include "TTAudioEngine.h"

#define thisTTClass			TTAudioGraphOutput
#define thisTTClassName		"dac"
#define thisTTClassTags		"audio, graph, output"

TT_AUDIO_CONSTRUCTOR,
	placeHolder(NULL)
{
	TTObjectInstantiate(kTTSym_audiosignal, &placeHolder, 1);
	audioEngine = TTAudioEngine::create();
	
	addAttributeWithGetterAndSetter(SampleRate, kTypeUInt32);
	addAttributeWithGetterAndSetter(VectorSize, kTypeUInt16);
	addAttributeWithGetterAndSetter(Device,		kTypeSymbol);
	
	addMessage(Start);
	addMessage(Stop);
	addMessage(audioEngineWillProcess);
	addMessageWithArgument(setOwner);
	addMessageWithArgument(GetAvailableDeviceNames);
	addMessageWithArgument(GetCpuLoad);
	
	setProcessMethod(processAudio);
	
	me = new TTValue;
	(*me) = (TTObjectPtr)this;
	audioEngine->sendMessage(TT("addCallbackObserver"), *me);
}


TTAudioGraphOutput::~TTAudioGraphOutput()
{
	audioEngine->sendMessage(TT("removeCallbackObserver"), *me);
	delete me;
	TTAudioEngine::destroy();
	TTObjectRelease(&placeHolder);
}


TTErr TTAudioGraphOutput::Start()
{
	TTValue						v;

	getVectorSize(v);
	mInitData.vectorSize = v;
	
	audioEngine->sendMessage(TT("Start"));
	return kTTErrNone;
}


TTErr TTAudioGraphOutput::Stop()
{
	audioEngine->sendMessage(TT("Stop"));
	return kTTErrNone;
}


TTErr TTAudioGraphOutput::audioEngineWillProcess()
{
	TT_ASSERT("There must be an owner", owner);
	
	owner->lockProcessing();
	owner->preprocess(mInitData);
	owner->process(placeHolder);
	owner->unlockProcessing();
	return kTTErrNone;
}


TTErr TTAudioGraphOutput::setOwner(TTValue& newOwner)
{
	owner = TTAudioGraphObjectPtr(TTPtr(newOwner));
	return kTTErrNone;
}


TTErr TTAudioGraphOutput::GetAvailableDeviceNames(TTValue& returnedDeviceNames)
{
	return audioEngine->sendMessage(TT("GetAvailableOutputDeviceNames"), returnedDeviceNames);
}


TTErr TTAudioGraphOutput::GetCpuLoad(TTValue& returnedValue)
{
	return audioEngine->sendMessage(TT("GetCpuLoad"), returnedValue);
}


TTErr TTAudioGraphOutput::setSampleRate(const TTValue& newValue)
{
	return audioEngine->setAttributeValue(kTTSym_SampleRate, const_cast<TTValue&>(newValue));
}

TTErr TTAudioGraphOutput::getSampleRate(TTValue& returnedValue)
{
	return audioEngine->getAttributeValue(kTTSym_SampleRate, returnedValue);
}


TTErr TTAudioGraphOutput::setVectorSize(const TTValue& newValue)
{
	return audioEngine->setAttributeValue(kTTSym_VectorSize, const_cast<TTValue&>(newValue));
}

TTErr TTAudioGraphOutput::getVectorSize(TTValue& returnedValue)
{
	return audioEngine->getAttributeValue(kTTSym_VectorSize, returnedValue);
}


TTErr TTAudioGraphOutput::setDevice(const TTValue& newValue)
{
	return audioEngine->setAttributeValue(TT("OutputDevice"), const_cast<TTValue&>(newValue));
}

TTErr TTAudioGraphOutput::getDevice(TTValue& returnedValue)
{
	return audioEngine->getAttributeValue(TT("OutputDevice"), returnedValue);
}


TTErr TTAudioGraphOutput::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	if(inputs->numAudioSignals){
		TTAudioSignal&	in = inputs->getSignal(0);

		(*((TTAudioEnginePtr)audioEngine)->mOutputBuffer) += in;
		return kTTErrNone;
	}
	else
		return kTTErrBadChannelConfig;
}

