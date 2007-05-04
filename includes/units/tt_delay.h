/*
 *******************************************************
 *		DELAY UNIT
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_DELAY_H
#define TT_DELAY_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_delay:public tt_audio_base{

	private:
		// Function pointers for the DSP Loops (use this instead of branching for speed)
		typedef void (tt_delay::*function_ptr_1in_1out)(tt_audio_signal *, tt_audio_signal *);
		typedef void (tt_delay::*function_ptr_2in_1out)(tt_audio_signal *, tt_audio_signal *, tt_audio_signal *);
		function_ptr_1in_1out		dsp_executor;
		function_ptr_2in_1out		dsp_executor2;

		// ATTRIBUTES & VARIABLES
		tt_attribute_value				delay_ms;			// in milliseconds
		tt_attribute_value				delay_ms_max;
		tt_attribute_value_discrete		delay_samples;
		tt_attribute_value_discrete		delay_samples_max;
		tt_attribute_value_discrete		interpolation;
		double							fractional_delay;	// used in interpolated dsp loops
		double 							fdelay_samples;

		tt_sample_vector				buffer;
		tt_sample_vector				in_ptr;				// "write" pointer for buffer
		tt_sample_vector				out_ptr;			// "read" pointer
		tt_sample_vector				end_ptr;			// points to last sample in buffer (for speed)

		tt_sample_value					output[4];		
	
	public:
		enum selectors{										// Attribute Selectors
			k_delay_ms,
			k_delay_samples,
			k_interpolation,
				k_interpolation_none,
				k_interpolation_linear,
				k_interpolation_linear2,
				k_interpolation_polynomial,
				k_interpolation_polynomial2,
		};
		
		// OBJECT LIFE					
		tt_delay(long max);						// Constructor - INT ARGUMENT: SPECIFY IN SAMPLES
		tt_delay(float max_ms);					// Constructor - FLOAT ARGUMENT: SPECIFY IN MS
		void init(long max_samples);		// Internal method which is called by the constructors
		~tt_delay();										// Destructor
		
		// OVER-RIDE THE INHERITED SET SR METHOD
		void set_sr(int value);

		// ATTRIBUTES
		tt_err 		set_attr(tt_selector sel, const tt_value &val);
		tt_err		get_attr(tt_selector sel, tt_value &value);
				
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out);
	private:
		// DSP LOOP - NO INTERPOLATION
		void dsp_vector_calc_nointerp(tt_audio_signal *in, tt_audio_signal *out);
		// DSP LOOP - NO INTERPOLATION - SIGNAL SPEC'D DELAY TIME
		void dsp_vector_calc_nointerp_2in(tt_audio_signal *in, tt_audio_signal *in2, tt_audio_signal *out);
		// DSP LOOP - LINEAR INTERPOLATION
		void dsp_vector_calc_linear(tt_audio_signal *in, tt_audio_signal *out);
		// DSP LOOP - DELAY TIME IS A SIGNAL (LINEAR INTERPOLATION)
		// Note: A modulated delay is essentially a resampling process. This means that when we resample we need the 
		//	values that are "between" the buffer indices - thus we interpolate to find them (not between output indices).
		void dsp_vector_calc_linear_2in(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out);

		// Reset the pointers
		void reset();
		
	public:	
		void clear(void);
};

#endif		// TT_DELAY_H
