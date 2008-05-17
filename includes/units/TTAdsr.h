#ifndef __TT_ADSR_H__
#define __TT_ADSR_H__

#include "TTAudioObject.h"

TTCLASS TTAdsr : public TTAudioObject {
private:
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
	
	TTSymbol&	attrMode;
	
	TTErr setAttack(const TTAttribute&, const TTValue& newValue);
//	TTErr getAttack(const TTAttribute&, TTValue& value);

	TTErr setDecay(const TTAttribute&, const TTValue& newValue);
//	TTErr getDecay(const TTAttribute&, TTValue& value);
	
	TTErr setSustainDb(const TTAttribute&, const TTValue& newValue);
	TTErr getSustainDb(const TTAttribute&, TTValue& newValue);
	
	TTErr setSustainAmp(const TTAttribute&, const TTValue& value);
//	TTErr getSustainAmp(const TTAttribute&, TTValue& value);
	
	TTErr setRelease(const TTAttribute&, const TTValue& newValue);
//	TTErr getRelease(const TTAttribute&, TTValue& value);

	TTErr setMode(const TTAttribute&, const TTValue& newValue);
	
	TTErr processAudioLinear(TTAudioSignal& in, TTAudioSignal& out);
	TTErr processAudioExponential(TTAudioSignal& in, TTAudioSignal& out);
	
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
		
	
public:
	TTAdsr(TTUInt8 newMaxNumChannels);
	~TTAdsr();
	

};

#endif

