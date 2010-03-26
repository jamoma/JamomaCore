/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTMulticoreObject.h"
#include "TTMulticoreInlet.h"		// required for windows build
#include "TTMulticoreInput.h"
#include "TTAudioEngine.h"

#define thisTTClass			TTMulticoreInput
#define thisTTClassName		"multicore.input"
#define thisTTClassTags		"audio, multicore, input"

TT_AUDIO_CONSTRUCTOR
{
	mAudioEngine = TTAudioEngine::create();
	mBuffer = (TTAudioEnginePtr(mAudioEngine))->TTAudioEngineGetInputSignalReference();
	
	addAttributeWithGetterAndSetter(SampleRate, kTypeUInt32);
	addAttributeWithGetterAndSetter(VectorSize, kTypeUInt16);
	addAttributeWithGetterAndSetter(Device,		kTypeSymbol);

	addMessage(Start);
	addMessage(Stop);
	addMessageWithArgument(GetAvailableDeviceNames);
	
	setProcessMethod(processAudio);
	
	setAttributeValue(TT("SampleRate"), 44100);
	setAttributeValue(TT("VectorSize"), 512);
}


TTMulticoreInput::~TTMulticoreInput()
{
	TTAudioEngine::destroy();
	TTObjectRelease(&mBuffer);
}


TTErr TTMulticoreInput::GetAvailableDeviceNames(TTValue& returnedDeviceNames)
{
	return mAudioEngine->sendMessage(TT("GetAvailableInputDeviceNames"), returnedDeviceNames);
}


TTErr TTMulticoreInput::Start()
{
	mAudioEngine->sendMessage(TT("start"));
	return kTTErrNone;
}


TTErr TTMulticoreInput::Stop()
{
	mAudioEngine->sendMessage(TT("stop"));
	return kTTErrNone;
}

TTErr TTMulticoreInput::setSampleRate(const TTValue& newValue)
{
	return mAudioEngine->setAttributeValue(kTTSym_SampleRate, const_cast<TTValue&>(newValue));
}

TTErr TTMulticoreInput::getSampleRate(TTValue& returnedValue)
{
	return mAudioEngine->getAttributeValue(kTTSym_SampleRate, returnedValue);
}


TTErr TTMulticoreInput::setVectorSize(const TTValue& newValue)
{
	return mAudioEngine->setAttributeValue(kTTSym_VectorSize, const_cast<TTValue&>(newValue));
}

TTErr TTMulticoreInput::getVectorSize(TTValue& returnedValue)
{
	return mAudioEngine->getAttributeValue(kTTSym_VectorSize, returnedValue);
}


TTErr TTMulticoreInput::setDevice(const TTValue& newValue)
{
	return mAudioEngine->setAttributeValue(TT("InputDevice"), const_cast<TTValue&>(newValue));
}

TTErr TTMulticoreInput::getDevice(TTValue& returnedValue)
{
	return mAudioEngine->getAttributeValue(TT("InputDevice"), returnedValue);
}


TTErr TTMulticoreInput::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	if (outputs->numAudioSignals){
		TTAudioSignal&	out = outputs->getSignal(0);

		out = *mBuffer;
		return kTTErrNone;
	}
	else
		return kTTErrBadChannelConfig;
}
