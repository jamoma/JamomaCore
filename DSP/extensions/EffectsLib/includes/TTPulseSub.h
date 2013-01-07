/* 
 * TTBlue Pulse-based Envelope Substitution
 * Copyright © 2004, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_PULSESUB_H__
#define __TT_PULSESUB_H__

#include "TTDSP.h"


/**	TTPulseSub generates a repeating ADSR envelope which is then applied to the gain of an input signal. */ 
class TTPulseSub : public TTAudioObjectBase {
	TTCLASS_SETUP(TTPulseSub)

protected:

	TTFloat64			attrAttack;
	TTFloat64			attrDecay;
	TTFloat64			attrSustain;
	TTFloat64			attrRelease;
	TTBoolean			attrTrigger;
	TTSymbol			attrMode;
	TTFloat64			attrFrequency;
	TTFloat64			attrLength;
	TTAudioObjectBasePtr	env_gen;		///< TTAdsr
	TTAudioObjectBasePtr	phasor;			///< TTPhasor
	TTAudioObjectBasePtr	offset;			///< TTOperator
	TTAudioObjectBasePtr	scaler;			///< TTOperator
	TTAudioSignalPtr	sig1;
	TTAudioSignalPtr	sig2;
	
	TTErr updateSampleRate(const TTValue& oldSampleRate, TTValue&);
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);
	
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
		
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

