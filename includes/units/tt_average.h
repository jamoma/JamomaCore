/*
 *******************************************************
 *		RUNNING AVERAGER
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_AVERAGE_H
#define TT_AVERAGE_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_average:public tt_audio_base{

	private:
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_average::*FuncPtr)(tt_audio_signal *, tt_audio_signal *);
		FuncPtr dsp_executor;
		
		// Attribute Values & Variables
		tt_attribute_value_discrete		interval;
		tt_attribute_value_discrete		mode;
		double 							accumulator, intervalReciprocal;
		tt_sample_vector				bins, bins_in, bins_out, bins_end;
	
		// Constants
		enum constants{
			MAX_AVERAGE_INTERVAL = 256
		};
	
	
	public:
		enum selectors{								
			k_mode,													// Attribute Selectors
			k_mode_bipolar,
			k_mode_absolute,
			k_mode_rms,
			k_interval,		
		};
		

		// OBJECT LIFE					
		tt_average();												// Constructor		
		~tt_average();												// Destructor

		// ATTRIBUTES
		tt_err 		set_attr(tt_selector sel, const tt_atom &val);
		tt_err		get_attr(tt_selector sel, tt_atom &value);
				
		// clear
		void clear();

		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);		// Publically exposed interface for this object's dsp routine
	private:
		void dsp_vector_calc_bipolar(tt_audio_signal *in, tt_audio_signal *out);
		void dsp_vector_calc_absolute(tt_audio_signal *in, tt_audio_signal *out);
		void dsp_vector_calc_rms(tt_audio_signal *in, tt_audio_signal *out);
};

#endif	// TT_AVERAGE_H