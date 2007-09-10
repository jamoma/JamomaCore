/*
 *******************************************************
 *		WAVETABLE OSCILLATOR
 *******************************************************
 *		TT Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_WAVETABLE_H
#define TT_WAVETABLE_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_buffer.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_wavetable:public tt_audio_base{

	private:
		tt_attribute_value_discrete 	mode;
		tt_attribute_value				frequency;
		tt_attribute_value				gain;
		tt_buffer						*wavetable;
		double							index_delta;
		double							index;
		
	public:
		enum selectors{									// Attribute Selectors
			k_frequency,
			k_gain,
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
		};
		
		// OBJECT LIFE					
		tt_wavetable();														// Constructor		
		~tt_wavetable();													// Destructor

		// ATTRIBUTES
		tt_err 		set_attr(tt_selector sel, const tt_value &val);
		tt_err		get_attr(tt_selector sel, tt_value &value);
				
		// METHOD: SET_WAVETABLE
		void set_wavetable(tt_buffer *newbuffer);
		
		void dsp_vector_calc(tt_audio_signal *out);							// DSP LOOP - WITHOUT MODULATION
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);	// DSP LOOP - WITH MODULATION INPUT
};

#endif		// TT_WAVETABLE_H
