/*
 *******************************************************
 *		PLAY BACK SAMPLES FROM A BUFFER
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_BUFFER_PLAY_H
#define TT_BUFFER_PLAY_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_buffer.h"
#include "tt_audio_signal.h"
//#include <functional>

/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_buffer_play:public tt_audio_base{

	private:
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_buffer_play::*FuncPtr)(tt_audio_signal *, tt_audio_signal *);
		FuncPtr dsp_executor;
		
		// Attribute Values
		tt_attribute_value_discrete 	mode;
		tt_attribute_value				gain;
		tt_buffer						*wavetable;		// Reference to an external buffer
	
	public:
		enum selectors{										// Attribute Selectors
			k_mode,
				k_mode_samples,
				k_mode_ms,
				k_mode_normalized,
				k_mode_normalized_fast,
			k_gain,
		};

		// OBJECT LIFE					
		tt_buffer_play();									// Constructor		
		tt_buffer_play(tt_buffer *mybuffer);				// Constructor - BUFFER ARG
		~tt_buffer_play();									// Destructor

		// ATTRIBUTES
		tt_err 		set_attr(tt_selector sel, const tt_atom &val);
		tt_err		get_attr(tt_selector sel, tt_atom &value);
		
		// METHODS
		void set_buffer(tt_buffer *mybuffer);	// Set Buffer
		tt_buffer *get_buffer();				// Get Buffer

		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);
	private:
		// DSP LOOP: input is the location in samples
		void dsp_vector_calc_samples(tt_audio_signal *in, tt_audio_signal *out);
		// DSP LOOP: input is the location in ms
		void dsp_vector_calc_ms(tt_audio_signal *in, tt_audio_signal *out);
		// DSP LOOP: input is the location from 0 to 1
		void dsp_vector_calc_normalized(tt_audio_signal *in, tt_audio_signal *out);
		// DSP LOOP: input is the location from 0 to 1, NO INTERPOLATION, NO RANGE CHECK
		void dsp_vector_calc_normalized_fast(tt_audio_signal *in, tt_audio_signal *out);
};

#endif	// TT_BUFFER_PLAY_H
