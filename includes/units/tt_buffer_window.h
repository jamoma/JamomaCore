/*
 *******************************************************
 *		APPLY A WINDOW FROM A BUFFER
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_BUFFER_WINDOW_H
#define TT_BUFFER_WINDOW_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_buffer.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_buffer_window:public tt_audio_base{

	private:
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_buffer_window::*FuncPtr)(tt_audio_signal *, tt_audio_signal *, tt_audio_signal *);
		FuncPtr dsp_executor;
		
		// Attribute Values
		tt_attribute_value_discrete 	mode;
		tt_attribute_value				gain;
		tt_buffer						*wavetable;
	
	public:
		enum selectors{										// Attribute Selectors
			k_mode,
			k_mode_normalized,
			k_mode_normalized_fast,
		};
		
		// OBJECT LIFE					
		tt_buffer_window(tt_buffer *mybuffer);				// Constructor - BUFFER ARG
		~tt_buffer_window();								// Destructor

		// ATTRIBUTES
		tt_err 		set_attr(tt_selector sel, const tt_value &val);
		tt_err		get_attr(tt_selector sel, tt_value &value);
		
		// METHODS
		void set_buffer(tt_buffer *mybuffer);	// Set Buffer
		tt_buffer *get_buffer();				// Get Buffer

		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out);
	private:
		// DSP LOOP: input is the location from 0 to 1
		void dsp_vector_calc_normalized(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out);
		// DSP LOOP: input is the location from 0 to 1, NO INTERPOLATION, NO RANGE CHECK
		//	in1: index
		//	in2: signal to scale
		//	out: output
		void dsp_vector_calc_normalized_fast(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out);
};

#endif	// TT_BUFFER_WINDOW_H
