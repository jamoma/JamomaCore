/*
 *******************************************************
 *		DOWNSAMPLE A SIGNAL - REDUCES VECTOR SIZE
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_DOWNSAMPLE_H
#define TT_DOWNSAMPLE_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_downsample:public tt_audio_base{
	private:
		tt_attribute_value_discrete 	factor;				// should be a power of 2
	
	public:
		enum selectors{										// Attribute Selectors
			k_factor,
		};
		
		// OBJECT LIFE					
		tt_downsample();									// Constructor		
		~tt_downsample();									// Destructor

		// ATTRIBUTES
		tt_err 		set_attr(tt_selector sel, const tt_atom &val);
		tt_err		get_attr(tt_selector sel, tt_atom &value);
				
		// DSP LOOP - MONO
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);
		// DSP LOOP - STEREO
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2);
};

#endif	// TT_DOWNSAMPLE_H
