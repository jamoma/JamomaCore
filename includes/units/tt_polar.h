/*
 *******************************************************
 *		CONVERSION BETWEEN 
 *		POLAR AND CARTESIAN COORDINATES
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_POLAR_H
#define TT_POLAR_H

// Include appropriate headers
#include "tt_audio_base.h"
#include <math.h>

/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_polar:public tt_audio_base{

	private:
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_polar::*function_ptr_2in_2out)(tt_audio_signal *, tt_audio_signal *, tt_audio_signal *, tt_audio_signal *);			
		function_ptr_2in_2out dsp_executor;

		// Attributes Values & Variables
		tt_attribute_value_discrete	mode;
		
	
	public:
		enum selectors{									// Attribute Selectors
			k_mode,				
			k_mode_cartopol,
			k_mode_poltocar,
		};
		
		// OBJECT LIFE					
//		tt_polar()													// Constructor		
		tt_polar(selectors init_mode = k_mode_cartopol);
		~tt_polar();												// Destructor

		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val);		// Set Attributes
		tt_attribute_value get_attr(tt_selector sel);				// Get Attributes
		
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2);
	private:
		// DSP LOOP: CARTOPOL
		void dsp_vector_calc_cartopol(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2);
		// DSP LOOP: POLTOCAR
		void dsp_vector_calc_poltocar(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2);
};

#endif		// TT_POLAR_H
