/*
 *******************************************************
 *		NOISE GENERATOR
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_NOISE_H
#define TT_NOISE_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_noise:public tt_audio_base{

	private:
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_noise::*FuncPtr)(tt_audio_signal *);
		FuncPtr dsp_executor;

		// Attribute Values & Variables
		tt_attribute_value_discrete 	mode;
		long							noise_accum;
		tt_sample_value 				b0, b1, b2, b3, b4, b5, b6; // for the "pinking" filter

	public:
		enum selectors{									// Attribute Selectors
			k_mode,
			k_mode_white,
			k_mode_pink,
			k_mode_brown,
			k_mode_blue
		};
		
		// OBJECT LIFE					
		tt_noise();												// Constructor		
		~tt_noise();											// Destructor

		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val);	// Set Attributes
		tt_attribute_value get_attr(tt_selector sel);			// Get Attributes
		
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		void dsp_vector_calc(tt_audio_signal *out);
	private:
		// DSP LOOP: WHITE
		void dsp_vector_calc_white(tt_audio_signal *out);
		// DSP LOOP: PINK
		void dsp_vector_calc_pink(tt_audio_signal *out);
		// DSP LOOP: BROWN
		void dsp_vector_calc_brown(tt_audio_signal *out);
		// DSP LOOP: BLUE
		void dsp_vector_calc_blue(tt_audio_signal *out);
};

#endif		// TT_NOISE_H
