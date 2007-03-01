/*
 *******************************************************
 *		ONE POLE LOWPASS FILTER
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_LOWPASS_ONEPOLE_H
#define TT_LOWPASS_ONEPOLE_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_lowpass_onepole:public tt_audio_base{

	private:
		tt_attribute_value 	coefficient;
		tt_attribute_value	frequency;
		double				feedback;	
	
	public:
		enum selectors{												// Attribute Selectors
			k_coefficient,
			k_frequency
		};
		
		// OBJECT LIFE					
		tt_lowpass_onepole();										// Constructor		
		~tt_lowpass_onepole();										// Destructor

		// ATTRIBUTES
		tt_err 		set_attr(tt_selector sel, const tt_atom &val);
		tt_err		get_attr(tt_selector sel, tt_atom &value);
		
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);

		// ADDITIONAL METHODS *******************************************************
		void clear();
		// set sample-rate (override the inherited method)
		void set_sr(int	value);
};

#endif	// TT_LOWPASS_ONEPOLE_H
