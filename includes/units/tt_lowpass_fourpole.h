/*
 *******************************************************
 *		FOUR POLE LOWPASS FILTER
 *		based on moog-variation2, musicdsp.org
 *******************************************************
 *		TT Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_LOWPASS_FOURPOLE_H
#define TT_LOWPASS_FOURPOLE_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_lowpass_fourpole:public tt_audio_base{

	private:
		tt_attribute_value 		resonance;
		tt_attribute_value		frequency;
		double					c, res;			// c = cutoff [0.0 to 1.0], res = resonance [0.0 to 4.0]
		double					in[4], out[4];
		double 					f, fb;
	
	public:
		enum selectors{								
			num_poles = 4,
			
			k_resonance,							// Attribute Selectors
			k_frequency
		};
		
		// OBJECT LIFE					
		tt_lowpass_fourpole();								// Constructor		
		~tt_lowpass_fourpole();								// Destructor

		// ATTRIBUTES
		tt_err 		set_attr(tt_selector sel, const tt_value &val);
		tt_err		get_attr(tt_selector sel, tt_value &value);
				
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *input, tt_audio_signal *output);

		// clear
		void clear();
};

#endif	// TT_LOWPASS_FOURPOLE_H
