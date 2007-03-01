/*
 *******************************************************
 *		TWO POLE LOWPASS FILTER
 *		based on Hal Chamberlin
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_LOWPASS_TWOPOLE_H
#define TT_LOWPASS_TWOPOLE_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_lowpass_twopole:public tt_audio_base{
	private:
		tt_attribute_value 		resonance;
		tt_attribute_value		frequency;
		double					coef_a, coef_b, coef_c;
		double					feedback[2][2];
		double 					radians, minus_one_over_resonance;
	
		enum constants{
			k_left = 0,
			k_right = 1,
		};
	
	public:
		enum selectors{								
			num_poles = 2,			
			k_resonance,							// Attribute Selectors
			k_frequency
		};
		
		// OBJECT LIFE					
		tt_lowpass_twopole();								// Constructor		
		~tt_lowpass_twopole();								// Destructor

		// ATTRIBUTES
		tt_err 		set_attr(tt_selector sel, const tt_atom &val);
		tt_err		get_attr(tt_selector sel, tt_atom &value);
				
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);
		// DSP LOOP - STEREO
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2);

		// clear
		void clear();
};

#endif	// TT_LOWPASS_TWOPOLE_H
