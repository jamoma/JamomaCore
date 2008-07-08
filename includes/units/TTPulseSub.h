/* 
 * TTBlue Pulse-based Envelope Substitution
 * Copyright © 2004, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_PULSESUB_H__
#define __TT_PULSESUB_H__

#include "TTAudioObject.h"
#include "TTPhasor.h"
#include "TTAdsr.h"
#include "TTOperator.h"


/**	TTPulseSub generates a repeating ADSR envelope which is then applied to the gain of an input signal.
 */ 
class TTEXPORT TTPulseSub : public TTAudioObject {
private:
	TTFloat64	attrAttack;
	TTFloat64	attrDecay;
	TTFloat64	attrSustain;
	TTFloat64	attrRelease;
	TTBoolean	attrTrigger;
	TTSymbol*	attrMode;
	TTFloat64	attrFrequency;
	TTFloat64	attrLength;

	TTOperator*		offset;
	TTPhasor*		phasor;
	TTAdsr*			env_gen;
	TTOperator*		scaler;
	TTAudioSignal*	sig1;
	TTAudioSignal*	sig2;
	
	TTErr updateSr();
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels);
	
	TTErr processAudio(TTAudioSignal& in, TTAudioSignal& out);
	
public:
	TTPulseSub(TTUInt16 newMaxNumChannels);
	~TTPulseSub();
	
	TTErr setTrigger(const TTValue& newValue);
	TTErr setAttack(const TTValue& newValue);
	TTErr setDecay(const TTValue& newValue);
	TTErr setSustain(const TTValue& newValue);
	TTErr setRelease(const TTValue& newValue);
	TTErr setMode(const TTValue& newValue);
	
	TTErr setFrequency(const TTValue& newValue);
	TTErr setLength(const TTValue& newValue);
};

#endif // __TT_PULSESUB_H__

