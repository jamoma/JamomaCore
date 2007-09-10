/*
 *******************************************************
 *		PANNER (1 INPUT / 2 OUTPUTS)
 *******************************************************
 *		TT Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_PAN_H
#define TT_PAN_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_pan:public tt_audio_base{

	private:
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_pan::*FuncPtr)(tt_audio_signal *, tt_audio_signal *, tt_audio_signal *);
		FuncPtr dsp_executor;
		
		// Attribute Values
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
		tt_pan(void);												// Constructor		
		~tt_pan(void);												// Destructor

		// ATTRIBUTES
		tt_err 		set_attr(tt_selector sel, const tt_value &val);
		tt_err		get_attr(tt_selector sel, tt_value &value);
				
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out1, tt_audio_signal *out2);
	private:
		// DSP LOOP: LINEAR SHAPE
		void dsp_vector_calc_linear(tt_audio_signal *in, tt_audio_signal *out1, tt_audio_signal *out2);
		// DSP LOOP: EQUAL POWER LOOKUP MODE
		void dsp_vector_calc_equalpower_lookup(tt_audio_signal *in, tt_audio_signal *out1, tt_audio_signal *out2);
		// DSP LOOP: EQUAL POWER CALCULATED
		void dsp_vector_calc_equalpower_calc(tt_audio_signal *in, tt_audio_signal *out1, tt_audio_signal *out2);
};

#endif // TT_PAN_H
