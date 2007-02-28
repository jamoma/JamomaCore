#include "tt_buffer_record.h"


// OBJECT LIFE					
inline tt_buffer_record::tt_buffer_record()									// Constructor		
{
	// set defaults
	set_attr(k_mode, k_mode_direct);
	set_attr(k_record, 0);
	set_attr(k_loop, 0);
	my_buffer = 0;
}

inline tt_buffer_record::tt_buffer_record(tt_buffer *buffer_ref)			// Constructor - BUFFER ARG
{
	// set defaults
	set_attr(k_mode, k_mode_direct);
	set_attr(k_record, 0);
	set_attr(k_loop, 0);
	my_buffer = 0;
	set_buffer(buffer_ref);
}

inline tt_buffer_record::~tt_buffer_record()								// Destructor
{
	;
}


// ATTRIBUTES
inline void tt_buffer_record::set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
{
	switch (sel){
		case k_mode:	// mode sets a function pointer to the correct dsp loop
			mode = (tt_attribute_value_discrete)val;
			if(mode == k_mode_direct)
				dsp_executor = &tt_buffer_record::dsp_vector_calc_direct;
			else if(mode == k_mode_fadein)
				dsp_executor = &tt_buffer_record::dsp_vector_calc_fadein;
			break;
		case k_record:
			record = (tt_attribute_value_discrete)val;
			index = 0;		// Set back to the beginning of the buffer
			break;
		case k_loop:
			loop = (tt_attribute_value_discrete)val;
			break;
	}
}

inline tt_attribute_value tt_buffer_record::get_attr(tt_selector sel)				// Get Attributes
{
	switch (sel){
		case k_mode:
			return mode;
		default:
			return 0.0;
	}
}


// METHODS
inline void tt_buffer_record::set_buffer(tt_buffer *buffer_ref)	// Set Buffer
{
	my_buffer = buffer_ref;	
}

inline tt_buffer *tt_buffer_record::get_buffer()				// Get Buffer
{
	return my_buffer;
}


/*****************************************************
 * DSP LOOPS
 *****************************************************/

// Publically exposed interface for this object's dsp routine
inline void tt_buffer_record::dsp_vector_calc(tt_audio_signal *in)
{
	(*this.*dsp_executor)(in);
}


// DSP LOOP: direct (no fade in)
void tt_buffer_record::dsp_vector_calc_direct(tt_audio_signal *in)
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
void tt_buffer_record::dsp_vector_calc_fadein(tt_audio_signal *in)
{
	temp_vs = in->vectorsize;
    while(temp_vs--){
		*in->vector++;// ********************* NOT YET IMPLEMENTED ************************
    }
    in->reset();
}
