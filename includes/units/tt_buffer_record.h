/*
 *******************************************************
 *		RECORD SAMPLES TO A BUFFER
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_BUFFER_RECORD_H
#define TT_BUFFER_RECORD_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_buffer.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_buffer_record:public tt_audio_base{

	private:
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_buffer_record::*FuncPtr)(tt_audio_signal *);
		FuncPtr dsp_executor;
		
		// Attribute Values
		tt_attribute_value_discrete 	mode;
		tt_attribute_value_discrete		record;
		tt_attribute_value_discrete		loop;
		
		tt_buffer						*my_buffer;
		unsigned long					index;
	
	public:
		enum selectors{										// Attribute Selectors
			k_mode,
				k_mode_fadein,
				k_mode_direct,
			k_record,
			k_loop,
		};
		
		// OBJECT LIFE					
		tt_buffer_record();									// Constructor		
		tt_buffer_record(tt_buffer *buffer_ref);			// Constructor - BUFFER ARG
		~tt_buffer_record();								// Destructor

		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val);	// Set Attributes
		tt_attribute_value get_attr(tt_selector sel);				// Get Attributes

		// METHODS
		void set_buffer(tt_buffer *buffer_ref);	// Set Buffer
		tt_buffer *get_buffer();				// Get Buffer		

		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		void dsp_vector_calc(tt_audio_signal *in);
	private:
		// DSP LOOP: direct (no fade in)
		void dsp_vector_calc_direct(tt_audio_signal *in);		
		// DSP LOOP: fade in
		void dsp_vector_calc_fadein(tt_audio_signal *in);
};

#endif	// TT_BUFFER_RECORD_H
