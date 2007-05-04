/*
 *******************************************************
 *		ADSR ENVELOPE GENERATOR
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_ADSR_H
#define TT_ADSR_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
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
		tt_adsr();															// Constructor		
		~tt_adsr();															// Destructor

		tt_err 		set_attr(tt_selector sel, const tt_value &val);
		tt_err		get_attr(tt_selector sel, tt_value &value);
						
		void set_trigger(bool val);											// METHOD: CONTROL-RATE TRIGGER

		void dsp_vector_calc(tt_audio_signal *out);							// Publically exposed interface for CONTROL RATE triggered dsp routine
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);	// Publically exposed interface for SIGNAL RATE triggered dsp routine
	
	private:
		void dsp_vector_calc_linear(tt_audio_signal *out);								// DSP LOOP: CONTROL-RATE TRIGGER - LINEAR
		void dsp_vector_calc_linear(tt_audio_signal *in, tt_audio_signal *out);			// DSP LOOP: SIGNAL TRIGGER - LINEAR
		void dsp_vector_calc_exponential(tt_audio_signal *out);							// DSP LOOP: CONTROL-RATE TRIGGER - EXPONENTIAL
		void dsp_vector_calc_exponential(tt_audio_signal *in, tt_audio_signal *out);	// DSP LOOP: SIGNAL TRIGGER - EXPONENTIAL

};

#endif		// TT_ADSR_H