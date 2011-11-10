/* 
 * TTBlue Cycling Ramp Generator
 * Copyright © 2008, Timothy Place & Dave Watson
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_ADSR_H__
#define __TT_ADSR_H__

#include "TTDSP.h"


/**	TTAdsr is an attack-decay-sustain-release envelope generator */
class TTAdsr : TTAudioObject {
	TTCLASS_SETUP(TTAdsr)

	TTFloat64	attack_ms;
	TTInt32		attack_samples;
	TTFloat64	attack_step;
	TTFloat64	attack_step_db;
	
	TTFloat64	decay_ms;
	TTInt32		decay_samples;
	TTFloat64	decay_step;
	TTFloat64	decay_step_db;
	
	TTFloat64	sustain_amp;
	TTFloat64	sustain_db;
	
	TTFloat64	release_ms;
	TTInt32		release_samples;
	TTFloat64	release_step;
	TTFloat64	release_step_db;
	
	TTSampleValue output;
	TTSampleValue output_db;
	
	TTInt16		eg_state;
	TTBoolean	trigger;
	
	TTSymbol*	attrMode;
	
	TTErr updateSampleRate(const TTValue&, TTValue&);

	/** Sending a dictionary to this object may perform one of several functions.
		
		1.	If the dictionary contains a MidiNoteEvent, then the midi note velocity 
			(second item of the value array for the dictionary) is used to set the ADSR trigger 
			as on or off.
	 
		2.	For setting attributes, etc., we rely on the external system (e.g. Jamoma Graph) to
			implement the infrastructure.  By returning an error code if the dictionary is not a
			MidiNoteEvent, we indicate to the calling system that it is free to perform other 
			tasks with the dictionary.
	*/
	TTErr dictionary(const TTValue& input, TTValue& output);
	
	
	TTErr processAudioLinear(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAudioExponential(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAudioHybrid(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	enum constants {
		NOISE_FLOOR = -120
	};
	
	enum eg_states {
		k_eg_inactive,
		k_eg_attack,
		k_eg_decay,
		k_eg_sustain,
		k_eg_release
	};
	
	TTErr setAttack(const TTValue& newValue);
	TTErr setDecay(const TTValue& newValue);
	TTErr setSustainDb(const TTValue& newValue);
	TTErr getSustainDb(TTValue& newValue);	
	TTErr setSustainAmp(const TTValue& value);
	TTErr setRelease(const TTValue& newValue);
	TTErr setMode(const TTValue& newValue);
};

#endif

