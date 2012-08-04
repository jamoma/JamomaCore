/* 
 * TTBlue Pulse-based Envelope Substitution
 * Copyright © 2004, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTPulseSub.h"

#define thisTTClass			TTPulseSub
#define thisTTClassName		"pulsesub"
#define thisTTClassTags		"audio, processor, dynamics, envelope"


TT_AUDIO_CONSTRUCTOR, 
	attrMode(TT("linear")), 
	env_gen(NULL),
	phasor(NULL), 
	offset(NULL), 
	scaler(NULL), 
	sig1(NULL), 
	sig2(NULL)
{
	TTUInt16	initialMaxNumChannels = arguments;
	
	registerAttribute(TT("attack"),		kTypeFloat64,	&attrAttack,	(TTSetterMethod)&TTPulseSub::setAttack);
	registerAttribute(TT("decay"),		kTypeFloat64,	&attrDecay,		(TTSetterMethod)&TTPulseSub::setDecay);
	registerAttribute(TT("release"),	kTypeFloat64,	&attrRelease,	(TTSetterMethod)&TTPulseSub::setRelease);
	registerAttribute(TT("sustain"),	kTypeFloat64,	&attrSustain,	(TTSetterMethod)&TTPulseSub::setSustain);
	registerAttribute(TT("trigger"),	kTypeBoolean,	&attrTrigger,	(TTSetterMethod)&TTPulseSub::setTrigger);
	registerAttribute(TT("mode"),		kTypeSymbol,	&attrMode,		(TTSetterMethod)&TTPulseSub::setMode);
	registerAttribute(TT("frequency"),	kTypeFloat64,	&attrFrequency,	(TTSetterMethod)&TTPulseSub::setFrequency);
	registerAttribute(TT("length"),		kTypeFloat64,	&attrLength,	(TTSetterMethod)&TTPulseSub::setLength);

	// register for notifications
	addUpdates(MaxNumChannels);
	addUpdates(SampleRate);

	TTObjectInstantiate(kTTSym_adsr, &env_gen, initialMaxNumChannels);
	TTObjectInstantiate(kTTSym_phasor, &phasor, initialMaxNumChannels);
	TTObjectInstantiate(kTTSym_operator, &offset, initialMaxNumChannels);
	TTObjectInstantiate(kTTSym_operator, &scaler, initialMaxNumChannels);	
	TTObjectInstantiate(kTTSym_audiosignal, &sig1, 1);	
	TTObjectInstantiate(kTTSym_audiosignal, &sig2, 1);	
	offset->setAttributeValue(TT("operator"), TT("+"));
	scaler->setAttributeValue(TT("operator"), TT("*"));

	setAttributeValue(TT("attack"), 50.);
	setAttributeValue(TT("decay"), 100.);
	setAttributeValue(TT("sustain"), -6.);
	setAttributeValue(TT("release"), 500.);
	setAttributeValue(TT("mode"), TT("linear"));	// <-- sets the process method
	setAttributeValue(TT("length"), 0.25);
	
	setProcessMethod(processAudio);
}

TTPulseSub::~TTPulseSub()
{
	TTObjectRelease(&offset);
	TTObjectRelease(&phasor);
	TTObjectRelease(&env_gen);
	TTObjectRelease(&scaler);
	TTObjectRelease(&sig1);
	TTObjectRelease(&sig2);
}


TTErr TTPulseSub::updateSampleRate(const TTValue& oldSampleRate, TTValue&)
{
	phasor->setAttributeValue(kTTSym_sampleRate, (unsigned int)sr);
	offset->setAttributeValue(kTTSym_sampleRate, (unsigned int)sr);
	env_gen->setAttributeValue(kTTSym_sampleRate, (unsigned int)sr);
	scaler->setAttributeValue(kTTSym_sampleRate, (unsigned int)sr);
	return kTTErrNone;
}


TTErr TTPulseSub::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	phasor->setAttributeValue(kTTSym_maxNumChannels, maxNumChannels);
	offset->setAttributeValue(kTTSym_maxNumChannels, maxNumChannels);
	env_gen->setAttributeValue(kTTSym_maxNumChannels, maxNumChannels);
	scaler->setAttributeValue(kTTSym_maxNumChannels, maxNumChannels);
	return kTTErrNone;
}


TTErr TTPulseSub::setAttack(const TTValue& newValue)
{
	attrAttack = newValue;
	return env_gen->setAttributeValue(TT("attack"), const_cast<TTValue&>(newValue));
}

TTErr TTPulseSub::setDecay(const TTValue& newValue)
{
	attrDecay = newValue;
	return env_gen->setAttributeValue(TT("decay"), attrDecay);
}


TTErr TTPulseSub::setSustain(const TTValue& newValue)
{
	attrSustain = newValue;
	return env_gen->setAttributeValue(TT("sustain"), const_cast<TTValue&>(newValue));
}

TTErr TTPulseSub::setRelease(const TTValue& newValue)
{
	attrRelease = newValue;
	return env_gen->setAttributeValue(TT("release"), const_cast<TTValue&>(newValue));
}


TTErr TTPulseSub::setMode(const TTValue& newValue)
{
	attrMode = newValue;
	return env_gen->setAttributeValue(TT("mode"), const_cast<TTValue&>(newValue));
}

TTErr TTPulseSub::setTrigger(const TTValue& newValue)
{
	attrTrigger = newValue;
	return env_gen->setAttributeValue(TT("trigger"), const_cast<TTValue&>(newValue));
}


TTErr TTPulseSub::setFrequency(const TTValue& newValue)
{
	attrFrequency = newValue;
	return phasor->setAttributeValue(TT("frequency"), attrFrequency);
}

TTErr TTPulseSub::setLength(const TTValue& newValue)
{
	attrLength = newValue;
	return offset->setAttributeValue(TT("operand"), attrLength - 0.5);
}


TTErr TTPulseSub::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	TTUInt16		vs = in.getVectorSizeAsInt();

	inSample = in.mSampleVectors[0];
	outSample = out.mSampleVectors[0];
	
	sig1->allocWithVectorSize(vs);
	sig2->allocWithVectorSize(vs);
	
	phasor->process(*sig1);					// ramp wave, stored in a temporary vector
	offset->process(*sig1, *sig2);			// offset the ramp wave, effectively altering the duty cycle
	env_gen->process(*sig2, *sig1);			// generate the envelope, reusing the temp[0] vector
	scaler->process(in, *sig1, out);		// apply the envelope to the input vector

	return kTTErrNone;
}
