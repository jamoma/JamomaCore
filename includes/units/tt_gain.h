/*
 *******************************************************
 *		GAIN MODIFIER
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_GAIN_H
#define TT_GAIN_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_gain:public tt_audio_base{
	private:
		tt_attribute_value		gain;		
		
	public:
		enum selectors{										// Attribute Selectors
			k_gain,
			k_gain_direct,
		};
		
		// OBJECT LIFE					
		tt_gain(void);										// Constructor		
		~tt_gain(void);										// Destructor

		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val);	// Set Attributes
		tt_attribute_value get_attr(tt_selector sel);				// Get Attributes
		
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);
};

#endif // TT_GAIN_H
