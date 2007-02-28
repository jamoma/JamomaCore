/*
 *******************************************************
 *		VECTOR MODULO
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_MODULO_H
#define TT_MODULO_H

// Include appropriate headers
#include "tt_audio_base.h"
#include <math.h>

/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_modulo:public tt_audio_base{

	private:
		tt_attribute_value		argument;
		
	public:
		enum selectors{									// Attribute Selectors
			k_modulo_argument,
		};

		tt_modulo(void);	// Constructor		
		~tt_modulo(void);		// Destructor

		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val);			// Set Attributes
		tt_attribute_value get_attr(tt_selector sel);					// Get Attributes

		// DSP LOOP - ARGUMENT IS A CONSTANT
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);	
		// DSP LOOP - ARGUMENT IS A SIGNAL
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out);
};

#endif // TT_MODULO_H
