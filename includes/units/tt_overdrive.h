/*
 *******************************************************
 *		OVERDRIVE / SOFT SATURATION
 *		waveshaping object which uses the equation 
 *		y = 1 - (1 - x)^n (positive quadrant only) 
 *		to shape the input signal.
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_OVERDRIVE_H
#define TT_OVERDRIVE_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_overdrive:public tt_audio_base{

	private:
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_overdrive::*function_ptr_1in_1out)(tt_audio_signal *, tt_audio_signal *);
		typedef void (tt_overdrive::*function_ptr_2in_2out)(tt_audio_signal *, tt_audio_signal *, tt_audio_signal *, tt_audio_signal *);
		function_ptr_1in_1out dsp_executor_mono;
		function_ptr_2in_2out dsp_executor_stereo;

		// Attributes Values & Variables 
		tt_attribute_value_discrete		mode;
		tt_attribute_value 				drive;
		tt_attribute_value_bool			defeat_dcblocker;
		double	 						last_input1;
		double							last_output1;
		double	 						last_input2;
		double							last_output2;
		float							s, b, nb, z, scale;
	
	public:
		enum selectors{								
			k_drive,												// Attribute Selectors
			k_defeat_dcblocker,
			k_mode,
		};
		
		// OBJECT LIFE					
		tt_overdrive();												// Constructor		
		~tt_overdrive();											// Destructor

		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val);		// Set Attributes
		tt_attribute_value get_attr(tt_selector sel);				// Get Attributes
		
		// METHOD: clear
		void clear();
		
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2);
	private:
		// DSP LOOP: mono
		void dsp_vector_calc_mono(tt_audio_signal *in, tt_audio_signal *out);
		// DSP LOOP: stereo
		void dsp_vector_calc_stereo(tt_audio_signal *in1, tt_audio_signal *in2,	tt_audio_signal *out1, tt_audio_signal *out2);
		// DSP LOOP: mono - no dc blocking
		void dsp_vector_calc_mono_nodcblock(tt_audio_signal *in, tt_audio_signal *out);
		// DSP LOOP: stereo - no dc blocking
		void dsp_vector_calc_stereo_nodcblock(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2);
		void dsp_vector_calc_mono_sine_nodcblock(tt_audio_signal *in, tt_audio_signal *out);
		void dsp_vector_calc_stereo_sine_nodcblock(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2);
		void dsp_vector_calc_mono_sine(tt_audio_signal *in, tt_audio_signal *out);
		void dsp_vector_calc_stereo_sine(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2);
};

#endif	// TT_OVERDRIVE_H
