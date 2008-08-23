/* 
 * TTBlue Pulse-based Envelope Substitution
 * Copyright © 2004, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTPulseSub.h"
#define thisTTClass TTPulseSub


TTPulseSub::TTPulseSub(TTUInt16 newMaxNumChannels)
	: TTAudioObject("audio.pulsesub", newMaxNumChannels), attrMode(TT("linear"))
{
	registerAttribute(TT("attack"),		kTypeFloat64,	&attrAttack,	(TTSetterMethod)&TTPulseSub::setAttack);
	registerAttribute(TT("decay"),		kTypeFloat64,	&attrDecay,		(TTSetterMethod)&TTPulseSub::setDecay);
	registerAttribute(TT("release"),	kTypeFloat64,	&attrRelease,	(TTSetterMethod)&TTPulseSub::setRelease);
	registerAttribute(TT("sustain"),	kTypeFloat64,	&attrSustain,	(TTSetterMethod)&TTPulseSub::setSustain);
	registerAttribute(TT("trigger"),	kTypeBoolean,	&attrTrigger,	(TTSetterMethod)&TTPulseSub::setTrigger);
	registerAttribute(TT("mode"),		kTypeSymbol,	&attrMode,		(TTSetterMethod)&TTPulseSub::setMode);
	registerAttribute(TT("frequency"),	kTypeFloat64,	&attrFrequency,	(TTSetterMethod)&TTPulseSub::setFrequency);
	registerAttribute(TT("length"),		kTypeFloat64,	&attrLength,	(TTSetterMethod)&TTPulseSub::setLength);

	// register for notifications
	registerMessageWithArgument(updateMaxNumChannels);
	registerMessageSimple(updateSr);

	env_gen = new TTAdsr(newMaxNumChannels);
	phasor = new TTPhasor(newMaxNumChannels);
	offset = new TTOperator(newMaxNumChannels);
	offset->setAttributeValue(TT("operator"), TT("+"));
	scaler = new TTOperator(newMaxNumChannels);
	scaler->setAttributeValue(TT("operator"), TT("*"));
	
	sig1 = new TTAudioSignal(1);
	sig2 = new TTAudioSignal(1);

	setAttributeValue(TT("attack"), 50.);
	setAttributeValue(TT("decay"), 100.);
	setAttributeValue(TT("sustain"), -6.);
	setAttributeValue(TT("release"), 500.);
	setAttributeValue(TT("mode"), TT("linear"));	// <-- sets the process method
	
	setProcessMethod(processAudio);
}

TTPulseSub::~TTPulseSub()
{
	delete offset;
	delete phasor;
	delete env_gen;
	delete scaler;
}


TTErr TTPulseSub::updateSr()
{
	phasor->setAttributeValue(TT("sr"), sr);
	offset->setAttributeValue(TT("sr"), sr);
	env_gen->setAttributeValue(TT("sr"), sr);
	scaler->setAttributeValue(TT("sr"), sr);
	return kTTErrNone;
}


TTErr TTPulseSub::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	phasor->setAttributeValue(TT("maxNumChannels"), maxNumChannels);
	offset->setAttributeValue(TT("maxNumChannels"), maxNumChannels);
	env_gen->setAttributeValue(TT("maxNumChannels"), maxNumChannels);
	scaler->setAttributeValue(TT("maxNumChannels"), maxNumChannels);
	return kTTErrNone;
}


TTErr TTPulseSub::setAttack(const TTValue& newValue)
{
	attrAttack = newValue;
	return env_gen->setAttributeValue(TT("attack"), newValue);
}

TTErr TTPulseSub::setDecay(const TTValue& newValue)
{
	attrDecay = newValue;
	return env_gen->setAttributeValue(TT("decay"), attrDecay);
}


TTErr TTPulseSub::setSustain(const TTValue& newValue)
{
	attrSustain = newValue;
	return env_gen->setAttributeValue(TT("sustain"), newValue);
}

TTErr TTPulseSub::setRelease(const TTValue& newValue)
{
	attrRelease = newValue;
	return env_gen->setAttributeValue(TT("release"), newValue);
}


TTErr TTPulseSub::setMode(const TTValue& newValue)
{
	attrMode = newValue;
	return env_gen->setAttributeValue(TT("mode"), newValue);
}

TTErr TTPulseSub::setTrigger(const TTValue& newValue)
{
	attrTrigger = newValue;
	return env_gen->setAttributeValue(TT("trigger"), newValue);
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


TTErr TTPulseSub::processAudio(TTAudioSignal& in, TTAudioSignal& out)
{
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	TTUInt16		vs = in.getVectorSize();

	inSample = in.sampleVectors[0];
	outSample = out.sampleVectors[0];
	
	sig1->allocWithVectorSize(vs);
	sig2->allocWithVectorSize(vs);
	
	phasor->process(*sig1);					// ramp wave, stored in a temporary vector
	offset->process(*sig1, *sig2);			// offset the ramp wave, effectively altering the duty cycle
	env_gen->process(*sig2, *sig1);			// generate the envelope, reusing the temp[0] vector
	scaler->process(in, *sig1, out);		// apply the envelope to the input vector

	return kTTErrNone;
}
