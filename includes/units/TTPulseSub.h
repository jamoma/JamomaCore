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
	TTSymbol&	attrMode;
	TTFloat64	attrFrequency;
	TTFloat64	attrLength;

	TTOperator*		offset;
	TTPhasor*		phasor;
	TTAdsr*			env_gen;
	TTOperator*		scaler;
	TTAudioSignal*	sig1;
	TTAudioSignal*	sig2;
	

	TTErr updateSr();
	TTErr updateMaxNumChannels();
	
	TTErr setTrigger(const TTAttribute&, const TTValue& newValue);
	TTErr setAttack(const TTAttribute&, const TTValue& newValue);
	TTErr setDecay(const TTAttribute&, const TTValue& newValue);
	TTErr setSustain(const TTAttribute&, const TTValue& newValue);
	TTErr setRelease(const TTAttribute&, const TTValue& newValue);
	TTErr setMode(const TTAttribute&, const TTValue& newValue);

	TTErr TTPulseSub::setFrequency(const TTAttribute&, const TTValue& newValue);
	TTErr TTPulseSub::setLength(const TTAttribute&, const TTValue& newValue);
	
	TTErr processAudio(TTAudioSignal& in, TTAudioSignal& out);
	
		
	
public:
	TTPulseSub(TTUInt8 newMaxNumChannels);
	~TTPulseSub();
	

};

#endif // __TT_PULSESUB_H__

