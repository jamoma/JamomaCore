/*
 *******************************************************
 *		BANK OF 5 COMB FILTERS
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2000-2004 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_FIVECOMB_H
#define TT_FIVECOMB_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_comb.h"
#include "tt_crossfade.h"
#include "tt_mixer_mono.h"
#include "tt_gain.h"
#include "tt_audio_signal.h"

/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_fivecomb:public tt_audio_base{

	private:
		enum constants{
			k_num_temp_signals = 7,
		};

		tt_comb				*comb_filter[5];			// main filters
		tt_crossfade		*wetdry_xfader;				// does the wet-dry mix
		tt_mixer_mono		*mixer;						// sums the 5 combs
		tt_gain				*input_gainer;				// scales the input signal	
		tt_audio_signal		*temp[k_num_temp_signals];	// Temp Signals
			
		tt_attribute_value	attr_frequency[5];
		tt_attribute_value	attr_frequency_scale;
		tt_attribute_value	attr_resonance[5];
		tt_attribute_value	attr_resonance_scale;
		tt_attribute_value	attr_lowpass_cf[5];
		tt_attribute_value	attr_lowpass_cf_scale;
			
	public:
		enum selectors{					// Attribute Selectors
			k_frequency,
			k_resonance,
			k_lowpass_cf,
			k_frequency_scale,
			k_resonance_scale,
			k_lowpass_cf_scale,
			k_mix,
			k_input_gain,
		};
		
		// OBJECT LIFE ************************************************************
		tt_fivecomb();										// Constructor		
		~tt_fivecomb();									// Destructor

		// ATTRIBUTES ************************************************************
		tt_err 		set_attr(tt_selector sel, const tt_atom &val);
		tt_err		get_attr(tt_selector sel, tt_atom &value);
				
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		// Because this is a meta-object, it is the user of this object who is responsible for making sure that
		//	the vectorsize of the signals are the same as that of this object.
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);

		// ADDITIONAL METHODS ************************************************************
		void clear();

		// set sample-rate (override the inherited method)
		void set_sr(int	value);
		// set the vector size (override the inherited method)
		void set_vectorsize(int value);
};

#endif	// TT_FIVECOMB_H
