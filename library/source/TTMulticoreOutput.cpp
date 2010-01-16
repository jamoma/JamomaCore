/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTMulticoreObject.h"
#include "TTMulticoreOutput.h"
#include "TTAudioEngine.h"

#define thisTTClass			TTMulticoreOutput
#define thisTTClassName		"multicore.output"
#define thisTTClassTags		"audio, multicore, output"

TT_AUDIO_CONSTRUCTOR,
	placeHolder(NULL)
{
	TTObjectInstantiate(kTTSym_audiosignal, &placeHolder, 1);
	audioEngine = TTAudioEngine::create();
	
	addAttributeWithGetterAndSetter(SampleRate, kTypeUInt32);
	addAttributeWithGetterAndSetter(VectorSize, kTypeUInt16);
	
	addMessage(start);
	addMessage(stop);
	addMessage(audioEngineWillProcess);
	addMessageWithArgument(setOwner);
	
	setProcessMethod(processAudio);
	
	me = new TTValue;
	(*me) = (TTObjectPtr)this;
	audioEngine->sendMessage(TT("addCallbackObserver"), *me);
}


TTMulticoreOutput::~TTMulticoreOutput()
{
	audioEngine->sendMessage(TT("removeCallbackObserver"), *me);
	delete me;
	TTAudioEngine::destroy();
	TTObjectRelease(&placeHolder);
}


TTErr TTMulticoreOutput::start()
{
	TTValue				v;
	TTMulticoreInitData	initData;

	getVectorSize(v);
	initData.vectorSize = v;
	owner->init(initData);
	
	audioEngine->sendMessage(TT("start"));
	return kTTErrNone;
}


TTErr TTMulticoreOutput::stop()
{
	audioEngine->sendMessage(TT("stop"));
	return kTTErrNone;
}


TTErr TTMulticoreOutput::audioEngineWillProcess()
{
	owner->preprocess();
	owner->process(placeHolder);
	return kTTErrNone;
}


TTErr TTMulticoreOutput::setOwner(TTValue& newOwner)
{
	owner = TTMulticoreObjectPtr(TTPtr(newOwner));
	return kTTErrNone;
}


TTErr TTMulticoreOutput::setSampleRate(const TTValue& newValue)
{
	return audioEngine->setAttributeValue(kTTSym_sr, const_cast<TTValue&>(newValue));
}

TTErr TTMulticoreOutput::getSampleRate(TTValue& returnedValue)
{
	return audioEngine->getAttributeValue(kTTSym_sr, returnedValue);
}


TTErr TTMulticoreOutput::setVectorSize(const TTValue& newValue)
{
	return audioEngine->setAttributeValue(kTTSym_vectorSize, const_cast<TTValue&>(newValue));
}

TTErr TTMulticoreOutput::getVectorSize(TTValue& returnedValue)
{
	return audioEngine->getAttributeValue(kTTSym_vectorSize, returnedValue);
}


TTErr TTMulticoreOutput::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	if(inputs->numAudioSignals){
		TTAudioSignal&	in = inputs->getSignal(0);

		(*((TTAudioEnginePtr)audioEngine)->outputBuffer) += in;
		return kTTErrNone;
	}
	else
		return kTTErrBadChannelConfig;
}

