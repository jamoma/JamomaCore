/*
 *******************************************************
 *		SWITCH (1 INPUT / N OUTPUTS)
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_SWITCH_H
#define TT_SWITCH_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_switch:public tt_audio_base{

	private:
		tt_attribute_value_discrete	position;			
		
	public:
		enum selectors{												// Attribute Selectors
			k_position,
		};
		
		// OBJECT LIFE					
		tt_switch(void);											// Constructor		
		~tt_switch(void);											// Destructor

		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val);		// Set Attributes
		tt_attribute_value get_attr(tt_selector sel);				// Get Attributes
		
		// DSP LOOP: 1 OUTPUT
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out1);
		// DSP LOOP: 2 OUTPUTS
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out1, tt_audio_signal *out2);
		// DSP LOOP: 3 OUTPUTS
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out1, tt_audio_signal *out2, tt_audio_signal *out3);
		// DSP LOOP: 4 OUTPUTS
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out1, tt_audio_signal *out2, tt_audio_signal *out3, tt_audio_signal *out4);
		// DSP LOOP: 5 OUTPUTS
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out1, tt_audio_signal *out2, tt_audio_signal *out3, tt_audio_signal *out4, tt_audio_signal *out5);
};

#endif // tt_SWITCH_H
