/* 
 * Lydbaer Extensions for TTBlue
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "lydbaer.h"
#include "TTAudioEngine.h"
#define thisTTClass LydbaerOutput


LydbaerOutput::LydbaerOutput(TTUInt16 newMaxNumChannels)
: TTAudioObject("lydbaer.output", newMaxNumChannels), placeHolder(NULL)
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


LydbaerOutput::~LydbaerOutput()
{
	audioEngine->sendMessage(TT("removeCallbackObserver"), *me);
	delete me;
	TTObjectRelease(placeHolder);
}


TTErr LydbaerOutput::start()
{
	owner->init();
	audioEngine->sendMessage(TT("start"));
	return kTTErrNone;
}


TTErr LydbaerOutput::stop()
{
	audioEngine->sendMessage(TT("stop"));
	return kTTErrNone;
}


TTErr LydbaerOutput::audioEngineWillProcess()
{
	owner->prepareToProcess();
	owner->getAudioOutput(placeHolder);
	return kTTErrNone;
}


TTErr LydbaerOutput::setOwner(TTValue& newOwner)
{
	owner = LydbaerObjectPtr(TTPtr(newOwner));
	return kTTErrNone;
}


TTErr LydbaerOutput::setsampleRate(const TTValue& newValue)
{
	return audioEngine->setAttributeValue(kTTSym_sr, newValue);
}

TTErr LydbaerOutput::getsampleRate(TTValue& returnedValue)
{
	return audioEngine->getAttributeValue(kTTSym_sr, returnedValue);
}


TTErr LydbaerOutput::setvectorSize(const TTValue& newValue)
{
	return audioEngine->setAttributeValue(kTTSym_vectorSize, newValue);
}

TTErr LydbaerOutput::getvectorSize(TTValue& returnedValue)
{
	return audioEngine->getAttributeValue(kTTSym_vectorSize, returnedValue);
}


TTErr LydbaerOutput::processAudio(TTAudioSignal& in, TTAudioSignal& unused)
{
	(*((TTAudioEnginePtr)audioEngine)->outputBuffer) += in;
	return kTTErrNone;
}

