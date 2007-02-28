#include "tt_buffer_window.h"


// OBJECT LIFE					
inline tt_buffer_window::tt_buffer_window(tt_buffer *mybuffer)				// Constructor - BUFFER ARG
{
	// set defaults
	set_attr(k_mode, k_mode_normalized);
	wavetable = 0;
	set_buffer(mybuffer);
}

inline tt_buffer_window::~tt_buffer_window()								// Destructor
{
	;
}


// ATTRIBUTES
inline void tt_buffer_window::set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
{
	switch (sel){
		case k_mode:	// mode sets a function pointer to the correct dsp loop
			mode = (tt_attribute_value_discrete)val;
			if(mode == k_mode_normalized)
				dsp_executor = &tt_buffer_window::dsp_vector_calc_normalized;
			else if(mode == k_mode_normalized_fast)
				dsp_executor = &tt_buffer_window::dsp_vector_calc_normalized_fast;
			break;
	}
}

inline tt_attribute_value tt_buffer_window::get_attr(tt_selector sel)				// Get Attributes
{
	switch (sel){
		case k_mode:
			return mode;
		default:
			return 0.0;
	}
}


// METHODS
inline void tt_buffer_window::set_buffer(tt_buffer *mybuffer)	// Set Buffer
{
	wavetable = mybuffer;	
}

inline tt_buffer *tt_buffer_window::get_buffer()				// Get Buffer
{
	return wavetable;
}


/*****************************************************
 * DSP LOOPS
 *****************************************************/

// Publically exposed interface for this object's dsp routine
inline void tt_buffer_window::dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out)
{
	(*this.*dsp_executor)(in1, in2, out);
}


// DSP LOOP: input is the location from 0 to 1
void tt_buffer_window::dsp_vector_calc_normalized(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out)
{
	int p1, p2;
	double diff;
	double index;
	
	temp_vs = in1->vectorsize;						
    while(temp_vs--){
		// locate the play head, range check
		index = *in1->vector++ * wavetable->length_samples;
						
		// table lookup (linear interpolation)	
		p1 = (int)index;
		p2 = p1 + 1;
		diff = index - p1;	
		p2 &= ((wavetable->length_samples) - 1);	// fast modulo
								
    	*out->vector++ = *in2->vector++ * ((wavetable->contents[p2] * diff) + (wavetable->contents[p1] * (1.0 - diff)));
    }
    in1->reset(); in2->reset(); out->reset();
}

// DSP LOOP: input is the location from 0 to 1, NO INTERPOLATION, NO RANGE CHECK
//	in1: index
//	in2: signal to scale
//	out: output
void tt_buffer_window::dsp_vector_calc_normalized_fast(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out)
{
	long index;
	temp_vs = in1->vectorsize;						
    while(temp_vs--){
		// locate the play head, range check
		index = (long int)(*in1->vector++ * wavetable->length_samples);				
    	*out->vector++ = *in2->vector++ * wavetable->contents[index];
    }
    in1->reset(); in2->reset(); out->reset();
}
