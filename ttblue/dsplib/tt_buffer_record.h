/*
 *******************************************************
 *		RECORD SAMPLES TO A BUFFER
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_BUFFER_RECORD_H
#define TT_BUFFER_RECORD_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_buffer.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
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
		tt_buffer_record()									// Constructor		
		{
			// set defaults
			set_attr(k_mode, k_mode_direct);
			set_attr(k_record, 0);
			set_attr(k_loop, 0);
			my_buffer = 0;
		}

		tt_buffer_record(tt_buffer *buffer_ref)			// Constructor - BUFFER ARG
		{
			// set defaults
			set_attr(k_mode, k_mode_direct);
			set_attr(k_record, 0);
			set_attr(k_loop, 0);
			my_buffer = 0;
			set_buffer(buffer_ref);
		}

		~tt_buffer_record()								// Destructor
		{
			;
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){
				case k_mode:	// mode sets a function pointer to the correct dsp loop
					mode = val;
					if(mode == k_mode_direct)
						dsp_executor = &tt_buffer_record::dsp_vector_calc_direct;
					else if(mode == k_mode_fadein)
						dsp_executor = &tt_buffer_record::dsp_vector_calc_fadein;
					break;
				case k_record:
					record = val;
					index = 0;		// Set back to the beginning of the buffer
					break;
				case k_loop:
					loop = val;
					break;
			}
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch (sel){
				case k_mode:
					return mode;
				default:
					return 0.0;
			}
		}


		// METHODS
		void set_buffer(tt_buffer *buffer_ref)	// Set Buffer
		{
			my_buffer = buffer_ref;	
		}

		tt_buffer *get_buffer()				// Get Buffer
		{
			return my_buffer;
		}
		

		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		
		// Publically exposed interface for this object's dsp routine
		void dsp_vector_calc(tt_audio_signal *in)
		{
			(*this.*dsp_executor)(in);
		}

	private:
		// DSP LOOP: direct (no fade in)
		void dsp_vector_calc_direct(tt_audio_signal *in)
		{
			temp_vs = in->vectorsize;
		    while(temp_vs--){
				// locate the play head, range check
				if(record == 0) return;
				
				my_buffer->contents[index++] = *in->vector++;	// Write to the buffer
				
				if(index >= my_buffer->length_samples){
					index = 0;				
				 	if(loop == 0)
						record = 0;
				}
		    }
   		    in->reset();
		}
		
		// DSP LOOP: fade in
		void dsp_vector_calc_fadein(tt_audio_signal *in)
		{
			temp_vs = in->vectorsize;
		    while(temp_vs--){
				*in->vector++;// ********************* NOT YET IMPLEMENTED ************************
		    }
		    in->reset();

		}
		
};

#endif	// tt_BUFFER_RECORD_H