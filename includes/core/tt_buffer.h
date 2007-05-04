/*
 *******************************************************
 *		AUDIO BUFFER
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_BUFFER_H
#define TT_BUFFER_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_buffer:public tt_audio_base{

	private:
		tt_attribute_value			length_ms;				// length of the buffer in milliseconds
		bool						local_contents;			// flags true if we are using the internal buffer
				
	public:
		tt_sample_vector			contents;				// made public so it can be accessed with speed
		unsigned long				length_samples;			// length of the buffer in samples (also available for speed)
		// short					channels;
		// attribute_value_discrete	loop_start_file;		// loop start indicated in file
		// attribute_value_discrete	loop_end_file;			// loop end indicated in file
		
		enum selectors{										// Attribute Selectors
			k_length_ms,
			k_length_samples,
			
			// waveform selectors
			k_sine,
			k_sine_mod,
			k_cos,
			k_cos_mod,
			k_square,
			k_square_mod,
			k_triangle,
			k_triangle_mod,
			k_ramp,
			k_ramp_mod,
			k_sawtooth,
			k_sawtooth_mod,
			// window selectors
			k_padded_welch_512,
			k_gauss
		};
			
		// OBJECT LIFE					
		tt_buffer(long val = 0);							// Constructor
		~tt_buffer();										// Destructor

		// ATTRIBUTES
		tt_err set_attr(tt_selector sel, const tt_value &a);	// Set Attributes
		tt_err get_attr(tt_selector sel, tt_value &a);		// Get Attributes
		
		// METHOD: SET_BUFFER
		void set_buffer(tt_buffer *newbuffer);
		// METHOD: PEEK
		tt_sample_value peek(unsigned long index);				
		// METHOD: POKE
		void poke(unsigned long index, tt_sample_value val);
		// METHOD: FILL
		void fill(tt_selector sel);
		// METHOD: FILL
		void fill(tt_selector sel, tt_attribute_value param1, tt_attribute_value param2);
		// METHOD: INIT
		void init();
		// METHOD: BUFFER_FREE
		void buffer_free();
		// METHOD: CLEAR
		void clear();
};

#endif		// TT_BUFFER_H
