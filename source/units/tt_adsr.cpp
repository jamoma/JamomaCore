#include "tt_adsr.h"


// Constructor
tt_adsr::tt_adsr()
{
	tt_atom a;
	
	output = 0.0;
	output_db = NOISE_FLOOR;
	eg_state = k_eg_inactive;

	// set defaults
	set_attr(k_mode, tt_int32(k_mode_linear));
	set_attr(k_attack, 50f);
	set_attr(k_decay, 100f);
	set_attr(k_sustain_db, -6.0);
	set_attr(k_release, 500.0 );
}

// Destructor
tt_adsr::~tt_adsr()
{
	;
}


TT_INLINE tt_err tt_adsr::set_attr(tt_selector sel, const tt_atom &aval)	// Set Attributes
{
	float	val = aval;
	
	switch (sel){
		case k_attack:
			attack_ms = clip(val, 1.f, 60000.f);
			attack_samples = long((attack_ms / 1000.0) * sr);
			attack_step = 1.0 / attack_samples;
			attack_step_db = -(double(NOISE_FLOOR) / attack_samples);
			break;
		case k_decay:
			decay_ms = clip(val, 1.f, 60000.f);
			decay_samples = long((decay_ms / 1000.0) * sr);
			decay_step = 1.0 / decay_samples;
			decay_step_db = -(double(NOISE_FLOOR) / decay_samples);
			break;
		case k_sustain_db:
			sustain_amp = clip(decibels_to_amplitude(val), -96.f,36.f);
			sustain_db = val;
			break;
		case k_sustain:
			sustain_amp = val;
			sustain_db = amplitude_to_decibels(val);
			break;
		case k_release:
			release_ms = clip(val, 1.f, 60000.f);
			release_samples = long((release_ms / 1000.0) * sr);
			release_step = 1.0 / release_samples;
			release_step_db = -(double(NOISE_FLOOR) / release_samples);
			break;
		case k_mode:
			mode = (tt_attribute_value_discrete)val;
			if(mode == k_mode_linear){
				dsp_executor = &tt_adsr::dsp_vector_calc_linear;
				dsp_executor2 = &tt_adsr::dsp_vector_calc_linear;	
			}
			else if(mode == k_mode_exponential){
				dsp_executor = &tt_adsr::dsp_vector_calc_exponential;
				dsp_executor2 = &tt_adsr::dsp_vector_calc_exponential;
			}
			break;
		default:
			return TT_ERR_ATTR_INVALID;
			break;
	}
	return TT_ERR_NONE;
}

TT_INLINE tt_err tt_adsr::get_attr(tt_selector sel, tt_atom &val)				// Get Attributes
{
	switch (sel){
		case k_attack:
			val = attack_ms;
		case k_decay:
			val = decay_ms;
		case k_sustain_db:
			val = amplitude_to_decibels(sustain_amp);
		case k_sustain:
			val = sustain_amp;
		case k_release:
			val = release_ms;
		case k_mode:
			val = mode;
		default:
			return TT_ERR_ATTR_INVALID;
			break;
	}
	return TT_ERR_NONE;
}
		

// METHOD: CONTROL-RATE TRIGGER
TT_INLINE void tt_adsr::set_trigger(bool val)
{
	trigger = val;
}


/*****************************************************
 * DSP LOOPS
 *****************************************************/

// Publically exposed interface for CONTROL RATE triggered dsp routine
TT_INLINE void tt_adsr::dsp_vector_calc(tt_audio_signal *out)
{
	(*this.*dsp_executor)(out);	// Run the function pointed to by our function pointer
}

// Publically exposed interface for SIGNAL RATE triggered dsp routine
TT_INLINE void tt_adsr::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	(*this.*dsp_executor2)(in, out);	// Run the function pointed to by our function pointer
}


// DSP LOOP: CONTROL-RATE TRIGGER - LINEAR
void tt_adsr::dsp_vector_calc_linear(tt_audio_signal *out)
{
	temp_vs = out->vectorsize;
    while(temp_vs--){
    
    	// STEP 1: SET THE CORRECT STATE
		if(trigger){			// WHEN THE TRIGGER IS ON
			if((eg_state == k_eg_inactive) || (eg_state == k_eg_release)){	// if a note isn't on,
				eg_state = k_eg_attack;										// set to attack
			}
		}
		else{					// WHEN THE TRIGGER IS OFF
			if((eg_state != k_eg_inactive) && (eg_state != k_eg_release)){	// if a note is on,
				eg_state = k_eg_release;									// release it
			}				
		}
		
		// STEP 2: CALCULATE THE APPROPRIATE VALUES
		switch(eg_state){
			case k_eg_attack:						// ATTACK
				output += attack_step;					// Increment the output
				if (output >= 1.0){						// If we've hit the top of the attack,
					eg_state = k_eg_decay;				// start the decay stage
					output = 1.0;						// Make sure we didn't go over 1.0
				}		
				break;
			case k_eg_decay:						// DECAY
				output -= decay_step;					// Decrement the output
				if (output <= sustain_amp){				// If we've hit the bottom of the decay,
					eg_state = k_eg_sustain;			// start the sustain stage
					output = sustain_amp;				// Lock in the sustain value
				}
				break;
			case k_eg_sustain:						// SUSTAIN
				break;									// leave it alone
							
			case k_eg_release:						// RELEASE
				output -= release_step;					// Decrement the output
				if (output <= 0.0){						// If we've hit the basement,
					eg_state = k_eg_inactive;			// deactivate the eg
					output = 0.0;						// Make sure we didn't dip too low
				}
				break;
		}
		
		// STEP 3: OUTPUT						
    	*out->vector++ = output;
    }
    out->reset();
}


// DSP LOOP: SIGNAL TRIGGER - LINEAR
void tt_adsr::dsp_vector_calc_linear(tt_audio_signal *in, tt_audio_signal *out)
{
	temp_vs = out->vectorsize;
    while(temp_vs--){
    	trigger = (bool)((*in->vector++) > 0.5);	// **** SIGNAL-RATE TRIGGER

    	// STEP 1: SET THE CORRECT STATE
		if(trigger){			// WHEN THE TRIGGER IS ON
			if((eg_state == k_eg_inactive) || (eg_state == k_eg_release)){	// if a note isn't on,
				eg_state = k_eg_attack;										// set to attack
			}
		}
		else{					// WHEN THE TRIGGER IS OFF
			if((eg_state != k_eg_inactive) && (eg_state != k_eg_release)){	// if a note is on,
				eg_state = k_eg_release;									// release it
			}				
		}
		
		// STEP 2: CALCULATE THE APPROPRIATE VALUES
		switch(eg_state){
			case k_eg_attack:						// ATTACK
				output += attack_step;					// Increment the output
				if (output >= 1.0){						// If we've hit the top of the attack,
					eg_state = k_eg_decay;				// start the decay stage
					output = 1.0;						// Make sure we didn't go over 1.0
				}		
				break;
			case k_eg_decay:						// DECAY
				output -= decay_step;					// Decrement the output
				if (output <= sustain_amp){				// If we've hit the bottom of the decay,
					eg_state = k_eg_sustain;			// start the sustain stage
					output = sustain_amp;				// Lock in the sustain value
				}
				break;
			case k_eg_sustain:						// SUSTAIN
				break;									// leave it alone
							
			case k_eg_release:						// RELEASE
				output -= release_step;					// Decrement the output
				if (output <= 0.0){						// If we've hit the basement,
					eg_state = k_eg_inactive;			// deactivate the eg
					output = 0.0;						// Make sure we didn't dip too low
				}
				break;
		}
		
		// STEP 3: OUTPUT						
    	*out->vector++ = output;
    }
    in->reset(); out->reset();
}


// DSP LOOP: CONTROL-RATE TRIGGER - EXPONENTIAL
void tt_adsr::dsp_vector_calc_exponential(tt_audio_signal *out)
{
	temp_vs = out->vectorsize;
    while(temp_vs--){
    
    	// STEP 1: SET THE CORRECT STATE
		if(trigger){			// WHEN THE TRIGGER IS ON
			if((eg_state == k_eg_inactive) || (eg_state == k_eg_release)){	// if a note isn't on,
				eg_state = k_eg_attack;										// set to attack
			}
		}
		else{					// WHEN THE TRIGGER IS OFF
			if((eg_state != k_eg_inactive) && (eg_state != k_eg_release)){	// if a note is on,
				eg_state = k_eg_release;									// release it
			}				
		}
		
		// STEP 2: CALCULATE THE APPROPRIATE VALUES
		switch(eg_state){
			case k_eg_attack:						// ATTACK
				output_db += attack_step_db;			// Increment the output
				output = decibels_to_amplitude(output_db);
				if (output_db >= 0.0){						// If we've hit the top of the attack,
					eg_state = k_eg_decay;				// start the decay stage
					output = 1.0;						// Make sure we didn't go over 1.0
				}		
				break;
			case k_eg_decay:						// DECAY
				output_db -= decay_step_db;
				output = decibels_to_amplitude(output_db);	// Decrement the output
				if (output <= sustain_amp){				// If we've hit the bottom of the decay,
					eg_state = k_eg_sustain;			// start the sustain stage
					output = sustain_amp;				// Lock in the sustain value
				}
				break;
			case k_eg_sustain:						// SUSTAIN
				break;									// leave it alone
							
			case k_eg_release:						// RELEASE
				output_db -= release_step_db;
				output = decibels_to_amplitude(output_db);		// Decrement the output
				if (output_db <= NOISE_FLOOR){						// If we've hit the basement,
					eg_state = k_eg_inactive;			// deactivate the eg
					output = 0.0;						// Make sure we didn't dip too low
				}
				break;
		}
		
		// STEP 3: OUTPUT						
    	*out->vector++ = output;
    }
    out->reset();
}


// DSP LOOP: SIGNAL TRIGGER - EXPONENTIAL
void tt_adsr::dsp_vector_calc_exponential(tt_audio_signal *in, tt_audio_signal *out)
{
	temp_vs = out->vectorsize;
    while(temp_vs--){
    	trigger = (bool)((*in->vector++) > 0.5);	// **** SIGNAL-RATE TRIGGER
    	
    	// STEP 1: SET THE CORRECT STATE
		if(trigger){			// WHEN THE TRIGGER IS ON
			if((eg_state == k_eg_inactive) || (eg_state == k_eg_release)){	// if a note isn't on,
				eg_state = k_eg_attack;										// set to attack
			}
		}
		else{					// WHEN THE TRIGGER IS OFF
			if((eg_state != k_eg_inactive) && (eg_state != k_eg_release)){	// if a note is on,
				eg_state = k_eg_release;									// release it
			}				
		}
		
		// STEP 2: CALCULATE THE APPROPRIATE VALUES
		switch(eg_state){
			case k_eg_attack:						// ATTACK
				output_db += attack_step_db;			// Increment the output
				output = decibels_to_amplitude(output_db);
				if (output_db >= 0.0){						// If we've hit the top of the attack,
					eg_state = k_eg_decay;				// start the decay stage
					output = 1.0;						// Make sure we didn't go over 1.0
				}		
				break;
			case k_eg_decay:						// DECAY
				output_db -= decay_step_db;
				output = decibels_to_amplitude(output_db);	// Decrement the output
				if (output <= sustain_amp){				// If we've hit the bottom of the decay,
					eg_state = k_eg_sustain;			// start the sustain stage
					output = sustain_amp;				// Lock in the sustain value
				}
				break;
			case k_eg_sustain:						// SUSTAIN
				break;									// leave it alone
							
			case k_eg_release:						// RELEASE
				output_db -= release_step_db;
				output = decibels_to_amplitude(output_db);		// Decrement the output
				if (output_db <= NOISE_FLOOR){						// If we've hit the basement,
					eg_state = k_eg_inactive;			// deactivate the eg
					output = 0.0;						// Make sure we didn't dip too low
				}
				break;
		}
		
		// STEP 3: OUTPUT						
    	*out->vector++ = output;
    }
    in->reset(); out->reset();
}
