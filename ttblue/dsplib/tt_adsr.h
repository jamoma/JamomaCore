/*
 *******************************************************
 *		ADSR ENVELOPE GENERATOR
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_ADSR_H
#define TT_ADSR_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_adsr:public tt_audio_base{

	private:
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_adsr::*function_ptr_0in_1out)(tt_audio_signal *);
		typedef void (tt_adsr::*function_ptr_1in_1out)(tt_audio_signal *, tt_audio_signal *);
		function_ptr_0in_1out dsp_executor;
		function_ptr_1in_1out dsp_executor2;

		// Attributes Values & Variables
		tt_attribute_value				attack_ms;
		long							attack_samples;
		double							attack_step;
		double							attack_step_db;

		tt_attribute_value				decay_ms;
		long							decay_samples;
		double							decay_step;
		double							decay_step_db;
		
		tt_attribute_value				sustain_amp;
		tt_attribute_value				sustain_db;

		tt_attribute_value				release_ms;
		long							release_samples;
		double							release_step;
		double							release_step_db;
		
		tt_attribute_value_discrete 	mode;				// one of the selectors defined below
		bool							trigger;			// on/off
		short							eg_state;			// one of the eg_states defined below
		tt_sample_value					output;
		tt_sample_value					output_db;
		
		tt_audio_signal 				*temp;		// temp signal used in some DSP routines

		enum constants{
			NOISE_FLOOR = -120,							// noise floor in decibels (value at which to cut to 0.0)
		};
		
		enum eg_states{
			k_eg_inactive,
			k_eg_attack,
			k_eg_decay,
			k_eg_sustain,
			k_eg_release
		};
		
	
	public:
		enum selectors{									// Attribute Selectors
			k_attack,
			k_decay,
			k_sustain,
			k_sustain_db,
			k_release,
			k_mode,
				k_mode_linear,
				k_mode_exponential,
		};
		

		// OBJECT LIFE					
		tt_adsr()										// Constructor		
		{
			output = 0.0;
			output_db = NOISE_FLOOR;
			eg_state = k_eg_inactive;

			// set defaults
			set_attr(k_mode, k_mode_linear);
			set_attr(k_attack, 50.0);
			set_attr(k_decay, 100.0);
			set_attr(k_sustain_db, -6.0);
			set_attr(k_release, 500.0 );
			
			temp = new tt_audio_signal(1);
		}

		~tt_adsr()										// Destructor
		{
			delete temp;
		}


		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){
				case k_attack:
					attack_ms = clip(val, 1.f, 60000.f);
					attack_samples = (attack_ms / 1000.0) * sr;
					attack_step = 1.0 / attack_samples;
					attack_step_db = -(double(NOISE_FLOOR) / attack_samples);
					break;
				case k_decay:
					decay_ms = clip(val, 1.f, 60000.f);
					decay_samples = (decay_ms / 1000.0) * sr;
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
					release_samples = (release_ms / 1000.0) * sr;
					release_step = 1.0 / release_samples;
					release_step_db = -(double(NOISE_FLOOR) / release_samples);
					break;
				case k_mode:
					mode = val;
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
					std::cerr << "tt_adsr::set_attr - invalid attribute" << std::endl;
					break;
			}
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch (sel){
				case k_attack:
					return attack_ms;
				case k_decay:
					return decay_ms;
				case k_sustain_db:
					return amplitude_to_decibels(sustain_amp);
				case k_sustain:
					return sustain_amp;
				case k_release:
					return release_ms;
				case k_mode:
					return mode;
				default:
					std::cerr << "tt_adsr::set_attr - invalid attribute" << std::endl;
					return 0;
					break;
			}
		}
				

		// METHOD: CONTROL-RATE TRIGGER
		void set_trigger(bool val)
		{
			trigger = val;
		}
		
		
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		
		// Publically exposed interface for CONTROL RATE triggered dsp routine
		void dsp_vector_calc(tt_audio_signal *out)
		{
			(*this.*dsp_executor)(out);	// Run the function pointed to by our function pointer
		}
	
		// Publically exposed interface for SIGNAL RATE triggered dsp routine
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
		{
			(*this.*dsp_executor2)(in, out);	// Run the function pointed to by our function pointer
		}
	
	private:
		// DSP LOOP: CONTROL-RATE TRIGGER - LINEAR
		void dsp_vector_calc_linear(tt_audio_signal *out)
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
		void dsp_vector_calc_linear(tt_audio_signal *in, tt_audio_signal *out)
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
		void dsp_vector_calc_exponential(tt_audio_signal *out)
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
		void dsp_vector_calc_exponential(tt_audio_signal *in, tt_audio_signal *out)
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
};

#endif		// tt_ADSR_H