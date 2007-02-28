/*
 *******************************************************
 *		HARD CLIP AN AUDIO SIGNAL
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_CLIP_H
#define TT_CLIP_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_clip:public tt_audio_base{

	private:
		tt_attribute_value		clip_high_value;
		tt_attribute_value		clip_low_value;	
		
	public:
		enum selectors{										// Attribute Selectors
			k_clip,
			k_clip_high,
			k_clip_low
		};
		
		// OBJECT LIFE					
		tt_clip(void);										// Constructor		
		~tt_clip(void);										// Destructor	
		// use the generic c++ copy constructor
		// tt_clip operator = (const tt_add &tt_clip_source)

		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val);	// Set Attributes
		tt_attribute_value get_attr(tt_selector sel);				// Get Attributes
		
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2);
};

#endif // TT_CLIP_H
