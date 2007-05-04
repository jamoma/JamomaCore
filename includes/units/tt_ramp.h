/*
 *******************************************************
 *		RAMP GENERATOR
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_RAMP_H
#define TT_RAMP_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_ramp:public tt_audio_base{

	private:
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_ramp::*function_ptr_0in_1out)(tt_audio_signal *);
		function_ptr_0in_1out dsp_executor;	
	
		tt_attribute_value_discrete	mode;					// mode: sample_accurate or vector_accurate
		tt_attribute_value 			ramp_ms;				// ramp time in milliseconds
		long						ramp_samps;				// ramp time in samples
		tt_sample_value				current;				// 
		tt_sample_value				destination;			// 
		double						step;					// 
		bool						direction;				// 0 = ramp up, 1 = ramp down
	
	
	public:
		enum selectors{								// Attribute Selectors
			k_current_value,
			k_destination_value,
			k_ramp_ms,
			k_ramp_samps,
			k_mode,
			k_mode_sample_accurate,
			k_mode_vector_accurate,
		};
		

		// OBJECT LIFE					
		tt_ramp();									// Constructor		
		~tt_ramp();									// Destructor

		// ATTRIBUTES
		tt_err 		set_attr(tt_selector sel, const tt_value &val);
		tt_err		get_attr(tt_selector sel, tt_value &value);
		
		// halt the ramp
		void stop();
		
		// DSP LOOP
		// Publically exposed interface for the dsp routine
		void dsp_vector_calc(tt_audio_signal *out);
	private:	
		// DSP LOOP - SAMPLE ACCURATE - UP
		void dsp_vector_calc_sa_up(tt_audio_signal *out);
		// DSP LOOP - SAMPLE ACCURATE - DOWN
		void dsp_vector_calc_sa_down(tt_audio_signal *out);
		// DSP LOOP - VECTOR ACCURATE - UP
		void dsp_vector_calc_va_up(tt_audio_signal *out);
		// DSP LOOP - VECTOR ACCURATE - DOWN
		void dsp_vector_calc_va_down(tt_audio_signal *out);

		// INIT
		void init();

		// private function needed for setting attr
		void set_step();				
};

#endif	// TT_RAMP_H
