/*
 *******************************************************
 *		UPSAMPLE A SIGNAL - USE WHEN A SIGNAL HAS BEEN 
 *		DOWNSAMPLED AND NEEDS TO BE RECONSTITUTED
 *******************************************************
 *		TT Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_UPSAMPLE_H
#define TT_UPSAMPLE_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_upsample:public tt_audio_base{

	private:
		tt_attribute_value_discrete 	factor;			// should be a power of 2
	
	public:
		enum selectors{									// Attribute Selectors
			k_factor,
		};
		
		// OBJECT LIFE					
		tt_upsample();														// Constructor		
		~tt_upsample();														// Destructor

		// ATTRIBUTES
		tt_err 		set_attr(tt_selector sel, const tt_value &val);
		tt_err		get_attr(tt_selector sel, tt_value &value);
				
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);

		// DSP LOOP - STEREO
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, 
			tt_audio_signal *out1, tt_audio_signal *out2);
};

#endif	// TT_UPSAMPLE_H
