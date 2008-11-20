/* 
 * Lydbaer Extensions for TTBlue
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "multicore.h"
#include "TTAudioEngine.h"
#define thisTTClass MCoreOutput


MCoreOutput::MCoreOutput(TTUInt16 newMaxNumChannels)
: TTAudioObject("multicore.output", newMaxNumChannels), placeHolder(NULL)
{
	TTObjectInstantiate(kTTSym_audiosignal, &placeHolder, 1);
	audioEngine = TTAudioEngineReference();
	
	registerAttributeWithSetterAndGetter(sampleRate, kTypeUInt32);
	registerAttributeWithSetterAndGetter(vectorSize, kTypeUInt16);
	
	registerMessageSimple(start);
	registerMessageSimple(stop);
	registerMessageSimple(audioEngineWillProcess);
	registerMessageWithArgument(setOwner);
	
	setProcessMethod(processAudio);
	
	me = new TTValue;
	(*me) = (TTObjectPtr)this;
	audioEngine->sendMessage(TT("addCallbackObserver"), *me);
}


MCoreOutput::~MCoreOutput()
{
	audioEngine->sendMessage(TT("removeCallbackObserver"), *me);
	delete me;
	TTObjectRelease(placeHolder);
}


TTErr MCoreOutput::start()
{
	owner->init();
	audioEngine->sendMessage(TT("start"));
	return kTTErrNone;
}


TTErr MCoreOutput::stop()
{
	audioEngine->sendMessage(TT("stop"));
	return kTTErrNone;
}


TTErr MCoreOutput::audioEngineWillProcess()
{
	owner->prepareToProcess();
	owner->getAudioOutput(placeHolder);
	return kTTErrNone;
}


TTErr MCoreOutput::setOwner(TTValue& newOwner)
{
	owner = MCoreObjectPtr(TTPtr(newOwner));
	return kTTErrNone;
}


TTErr MCoreOutput::setsampleRate(const TTValue& newValue)
{
	return audioEngine->setAttributeValue(kTTSym_sr, newValue);
}

TTErr MCoreOutput::getsampleRate(TTValue& returnedValue)
{
	return audioEngine->getAttributeValue(kTTSym_sr, returnedValue);
}


TTErr MCoreOutput::setvectorSize(const TTValue& newValue)
{
	return audioEngine->setAttributeValue(kTTSym_vectorSize, newValue);
}

TTErr MCoreOutput::getvectorSize(TTValue& returnedValue)
{
	return audioEngine->getAttributeValue(kTTSym_vectorSize, returnedValue);
}


TTErr MCoreOutput::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	if(inputs->numAudioSignals){
		TTAudioSignal&	in = inputs->getSignal(0);

		(*((TTAudioEnginePtr)audioEngine)->outputBuffer) += in;
		return kTTErrNone;
	}
	else
		return kTTErrBadChannelConfig;
}

