/*
 *******************************************************
 *		LOOKAHEAD LIMITER
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_LIMITER_H
#define TT_LIMITER_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"
//#include"tt_buffer.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_limiter:public tt_audio_base{

	private:
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_limiter::*function_ptr_1in_1out)(tt_audio_signal *, tt_audio_signal *);
		typedef void (tt_limiter::*function_ptr_2in_2out)(tt_audio_signal *, tt_audio_signal *, tt_audio_signal *, tt_audio_signal *);
		function_ptr_1in_1out dsp_executor_mono;
		function_ptr_2in_2out dsp_executor_stereo;

		// Attributes Values & Variables 
		tt_attribute_value_bool		defeat_dcblocker;
		double	 					last_input1, last_input2;
		double						last_output1, last_output2;
		double						recover;
		double						recip;
		tt_sample_vector 			buf1, buf2, gain;
//		tt_buffer					*buffer1, *buffer2, *buffer_gain;
		long 						bp, samps;
		float 						last;

		tt_attribute_value 				threshold;			
		tt_attribute_value_discrete 	mode;
		tt_attribute_value				release;
		tt_attribute_value_discrete		lookahead;
		tt_attribute_value 				preamp;				
		tt_attribute_value				postamp;
		
		// set recover
		void set_recover();
	
	public:
		enum selectors{									// Attribute Selectors
			k_defeat_dcblocker,
			k_threshold,
			k_release,
			k_lookahead,
			k_preamp,
			k_postamp,
			k_mode,				
			k_mode_linear,
			k_mode_exponential,
			
			MAX_SAMPLES	= 256							// Size of the lookahead buffers
		};	

		// OBJECT LIFE					
		tt_limiter();									// Constructor		
		~tt_limiter();									// Destructor

		// ATTRIBUTES
		tt_err 		set_attr(tt_selector sel, const tt_atom &val);
		tt_err		get_attr(tt_selector sel, tt_atom &value);
				
		// clear
		void clear(void);
		
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2);
	private:		
		// DSP LOOP - STEREO
		void dsp_vector_calc_stereo(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2);
		// DSP LOOP - MONO
		// NOTE: This is no more efficient than the stereo version - need to optimize sometime
		void dsp_vector_calc_mono(tt_audio_signal *in, tt_audio_signal *out);
		// DSP LOOP - STEREO
		void dsp_vector_calc_stereo_nodcblock(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2);
		// DSP LOOP - MONO
		// NOTE: This is no more efficient than the stereo version - need to optimize sometime
		void dsp_vector_calc_mono_nodcblock(tt_audio_signal *in, tt_audio_signal *out);
};

#endif		// TT_LIMITER_H
