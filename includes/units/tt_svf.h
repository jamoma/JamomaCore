/*
 *******************************************************
 *		SVF Filter
 *		
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_SVF_H
#define TT_SVF_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_svf:public tt_audio_base{

	private:
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_svf::*FuncPtr)(tt_audio_signal *, tt_audio_signal *);
		FuncPtr dsp_executor;

		// Attributes Values & Variables
		tt_attribute_value 			resonance;
		tt_attribute_value			frequency;
		tt_attribute_value_discrete	mode;
		double						freq, res, damp;
		double						lowpass_output;
		double 						highpass_output;
		double						bandpass_output;
		double 						notch_output;
		double						peak_output;
	
	
	public:
		enum selectors{								
			num_poles = 2,
			
			k_mode,													// Attribute Selectors
			k_mode_lowpass,
			k_mode_highpass,
			k_mode_bandpass,
			k_mode_notch,
			k_mode_peak,
			k_frequency,
			k_resonance
		};

		// OBJECT LIFE					
		tt_svf();													// Constructor		
		~tt_svf();													// Destructor

		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val);		// Set Attributes
		tt_attribute_value get_attr(tt_selector sel);				// Get Attributes

		void clear();

		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		
		// Publically exposed interface for this object's dsp routine
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);
	private:
		// DSP LOOP: LOWPASS
		void dsp_vector_calc_lowpass(tt_audio_signal *in, tt_audio_signal *out);
		// DSP LOOP: HIGHPASS
		void dsp_vector_calc_highpass(tt_audio_signal *in, tt_audio_signal *out);
		// DSP LOOP: BANDPASS
		void dsp_vector_calc_bandpass(tt_audio_signal *in, tt_audio_signal *out);
		// DSP LOOP: NOTCH
		void dsp_vector_calc_notch(tt_audio_signal *in, tt_audio_signal *out);
		// DSP LOOP: PEAK
		void dsp_vector_calc_peak(tt_audio_signal *in, tt_audio_signal *out);

		// THE GUTS OF THE SVF FILTER
		void filter_tick(tt_sample_value value);
};

#endif	// TT_SVF_H
