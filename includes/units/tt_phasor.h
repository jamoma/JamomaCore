/*
 *******************************************************
 *		CYCLING RAMP GENERATOR
 *******************************************************
 *		TT Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_PHASOR_H
#define TT_PHASOR_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_phasor:public tt_audio_base{

	private:
		tt_attribute_value		frequency;			// define the ramp time cycle in hertz
		tt_attribute_value 		ramp_ms;			// ramp time in milliseconds
		long					ramp_samps;			// ramp time in samples
		tt_attribute_value		gain;

		tt_sample_value			current;			// 
		double					step;				// 		
	
	public:
		enum selectors{								// Attribute Selectors
			k_ramp_ms,
			k_ramp_samps,
			k_frequency,
			k_phase,
			k_gain,
			k_gain_direct,
		};
		
		// OBJECT LIFE					
		tt_phasor();											// Constructor		
		~tt_phasor();											// Destructor

		// OVER-RIDE THE INHERITED SET SR METHOD
		void set_sr(int value);

		// ATTRIBUTES
		tt_err 		set_attr(tt_selector sel, const tt_value &val);
		tt_err		get_attr(tt_selector sel, tt_value &value);
				
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *out);
};

#endif	// TT_PHASOR_H
