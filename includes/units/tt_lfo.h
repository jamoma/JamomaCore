/*
 *******************************************************
 *		WAVETABLE LOW-FREQUENCY OSCILLATOR
 *		intended only to be used at the vector-rate
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_LFO_H
#define TT_LFO_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_buffer.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_lfo:public tt_audio_base{

	private:
		tt_attribute_value_discrete 	mode;
		tt_attribute_value				frequency;
		tt_attribute_value				gain;
		tt_attribute_value				phase;				// phase offset on a range from 0 to 1
		short							phase_in_samples;	// phase offset in samples
		tt_buffer						*wavetable;
		double							index_delta;
		double							index;	
	
	public:
		enum selectors{									// Attribute Selectors
			k_frequency,
			k_gain,
			k_depth,
			k_phase,
			k_mode,
			k_mode_sine,
			k_mode_sine_mod,
			k_mode_cos,
			k_mode_cos_mod,
			k_mode_square,
			k_mode_square_mod,
			k_mode_triangle,
			k_mode_triangle_mod,
			k_mode_ramp,
			k_mode_ramp_mod,
			k_mode_sawtooth,
			k_mode_sawtooth_mod,
		};

		// OBJECT LIFE					
		tt_lfo();													// Constructor		
		~tt_lfo();													// Destructor

		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val);		// Set Attributes
		tt_attribute_value get_attr(tt_selector sel);				// Get Attributes
		
		// METHOD: SET_WAVETABLE
		void set_wavetable(tt_buffer *newbuffer);
		
		// METHOD: RESET PHASE
		void phase_reset();
		
		// DSP LOOP
		//	only processes the first sample of the vector
		//	intended only for driving parameters of other objects
		//	not for use as audio
		void dsp_vector_calc(tt_audio_signal *out);
		
		// ADDITIONAL METHODS ************************************************
		
		// set sample-rate (override the inherited method)
		void set_sr(int	value);		
		// set vectorsize (override the inherited method)
		void set_vectorsize(int value);
};

#endif		// TT_LFO_H
