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
		void set_attr(tt_selector sel, tt_attribute_value val);		// Set Attributes
		tt_attribute_value get_attr(tt_selector sel);				// Get Attributes

		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);

		// ADDITIONAL METHODS *******************************************************
		void clear();
		// set sample-rate (override the inherited method)
		void set_sr(int	value);
};

#endif	// TT_LOWPASS_ONEPOLE_H
