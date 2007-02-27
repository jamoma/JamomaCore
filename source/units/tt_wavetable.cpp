#include "tt_wavetable.h"


// OBJECT LIFE					
tt_wavetable::tt_wavetable()									// Constructor		
{
	index = index_delta = 0.0;
	wavetable = new tt_buffer(512);
	//wavetable->set_attr(tt_buffer::k_length_samples, 512);

	// set defaults
	set_attr(k_mode, k_mode_sine);
	set_attr(k_gain, 0.0);
	set_attr(k_frequency, 1.0);
}

tt_wavetable::~tt_wavetable()									// Destructor
{
	delete wavetable;
}


// ATTRIBUTES
inline void tt_wavetable::set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
{
	switch (sel){

		case k_frequency:
			frequency = clip(double(val), 0.0, sr/2.0);
			index_delta = frequency * wavetable->get_attr(tt_buffer::k_length_samples) / sr;
			break;
			
		case k_mode:
			mode = (tt_attribute_value_discrete)val;

			if(val == k_mode_sine)
				wavetable->fill(tt_buffer::k_sine);
			if(val == k_mode_sine_mod)
				wavetable->fill(tt_buffer::k_sine_mod);

			if(val == k_mode_cos)
				wavetable->fill(tt_buffer::k_cos);
			if(val == k_mode_cos_mod)
				wavetable->fill(tt_buffer::k_cos_mod);

			if(val == k_mode_square)
				wavetable->fill(tt_buffer::k_square);
			if(val == k_mode_square_mod)
				wavetable->fill(tt_buffer::k_square_mod);

			if(val == k_mode_triangle)
				wavetable->fill(tt_buffer::k_triangle);
			if(val == k_mode_triangle_mod)
				wavetable->fill(tt_buffer::k_triangle_mod);

			if(val == k_mode_ramp)
				wavetable->fill(tt_buffer::k_ramp);
			if(val == k_mode_ramp_mod)
				wavetable->fill(tt_buffer::k_ramp_mod);
			break;
			
		case k_gain:
			gain = decibels_to_amplitude(val);
			break;
	}
}

inline tt_attribute_value tt_wavetable::get_attr(tt_selector sel)				// Get Attributes
{
	switch (sel){
		case k_frequency:
			return frequency;
		case k_mode:
			return mode;
		case k_gain:
			return amplitude_to_decibels(gain);
		default:
			return 0.0;
	}
}


// METHOD: SET_WAVETABLE
inline void tt_wavetable::set_wavetable(tt_buffer *newbuffer)
{
	wavetable->set_buffer(newbuffer);
}


// DSP LOOP - WITHOUT MODULATION
inline void tt_wavetable::dsp_vector_calc(tt_audio_signal *out)
{
	unsigned long p1, p2;
	float diff;
	double wavetable_length = double(wavetable->length_samples); //512.0
	temp_vs = out->vectorsize;
							
    while(temp_vs--){

		// Move the play head
		index += index_delta;
		
		// Wrap the play head
		if(index >= wavetable_length)	    		
			index -= wavetable_length;
		else if(index < 0)	    		
			index += wavetable_length;
		
		// table lookup (linear interpolation)	
		p1 = (unsigned long)index;
		p2 = p1 + 1;
		diff = index - p1;	
		p2 &= ((wavetable->length_samples) - 1);	// fast modulo
								
    	*out->vector++ = ((wavetable->contents[p2] * diff) + (wavetable->contents[p1] * (1.0 - diff))) * gain;
    }
    out->reset();
}


// DSP LOOP - WITH MODULATION INPUT
inline void tt_wavetable::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	unsigned long p1, p2;
	float diff, wavetable_length = float(wavetable->length_samples);
	temp_vs = in->vectorsize;
										
    while(temp_vs--){

		// Move the play head
		index += index_delta;
		
		// Apply modulation to the play head **
		index += *in->vector++ * wavetable_length / sr;
		
		// Wrap the play head
		if(index >= wavetable_length)	    		
			index -= wavetable_length;
		else if(index < 0)	    		
			index += wavetable_length;
		
		// table lookup (linear interpolation)	
		p1 = (unsigned long)index;
		p2 = p1 + 1;
		diff = index - p1;	
		p2 &= ((wavetable->length_samples) - 1);	// fast modulo
								
    	*out->vector++ = ((wavetable->contents[p2] * diff) + (wavetable->contents[p1] * (1.0 - diff))) * gain;
    }
    in->reset(); out->reset();
}
