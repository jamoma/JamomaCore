/*
 *******************************************************
 *		CROSSFADER (2 INPUTS / 1 OUTPUT)
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_CROSSFADE_H
#define TT_CROSSFADE_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_crossfade:public tt_audio_base{

	private:
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_crossfade::*FuncPtr)(tt_audio_signal *, tt_audio_signal *, tt_audio_signal *);
		FuncPtr dsp_executor;

		// Attribute Values & Variables
		tt_attribute_value		position;
		tt_attribute_value		shape;
		tt_attribute_value		mode;
		
	public:
		enum selectors{										// Attribute Selectors
			k_shape,
			k_mode,
			k_position,
			k_shape_equalpower,
			k_shape_linear,
			k_mode_lookup,
			k_mode_calculate
		};
		
		// OBJECT LIFE					
		tt_crossfade(void);									// Constructor		
		~tt_crossfade(void);								// Destructor

		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val);	// Set Attributes
		tt_attribute_value get_attr(tt_selector sel);				// Get Attributes
		
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out);
	private:
		// DSP LOOP: LINEAR SHAPE
		void dsp_vector_calc_linear(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out);
		// DSP LOOP: EQUAL POWER LOOKUP MODE
		void dsp_vector_calc_equalpower_lookup(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out);
		// DSP LOOP: EQUAL POWER CALCULATED
		void dsp_vector_calc_equalpower_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out);
};

#endif // TT_CROSSFADE_H
