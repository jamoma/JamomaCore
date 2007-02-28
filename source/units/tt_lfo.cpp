#include "tt_lfo.h"


// OBJECT LIFE					
inline tt_lfo::tt_lfo()											// Constructor		
{
	index = index_delta = 0;
	phase = phase_in_samples = 0;
	wavetable = new tt_buffer(512);

	// set defaults
	set_attr(k_mode, k_mode_sine_mod);
	set_attr(k_gain, 0.0);
	set_attr(k_frequency, 1.0);
	set_attr(k_phase, 0.0);
}

inline tt_lfo::~tt_lfo()											// Destructor
{
	delete wavetable;
}


// ATTRIBUTES
inline void tt_lfo::set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
{
	switch (sel){

		case k_frequency:
			frequency = clip(val, 0.f, sr/2.f);
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
			
			if(val == k_mode_sawtooth)
				wavetable->fill(tt_buffer::k_sawtooth);
			if(val == k_mode_sawtooth_mod)
				wavetable->fill(tt_buffer::k_sawtooth_mod);
			break;
			
		case k_gain:
			gain = decibels_to_amplitude(val);
			break;
			
		case k_depth:
			gain = val;
			break;
			
		case k_phase:
			{	
				short old_phase_in_samples = phase_in_samples;					
				phase = val;
				phase_in_samples = short(phase * 512.0);

				index += (phase_in_samples - old_phase_in_samples);		// offset the play head
				if(index >= (wavetable->length_samples))	    		// Wrap the play head...
					index -= wavetable->length_samples;
				else if(index < 0)	    		
					index += wavetable->length_samples;
			}	
			break;
	}
}

inline tt_attribute_value tt_lfo::get_attr(tt_selector sel)				// Get Attributes
{
	switch (sel){
		case k_frequency:
			return frequency;
		case k_mode:
			return mode;
		case k_gain:
			return amplitude_to_decibels(gain);
		case k_depth:
			return gain;
		case k_phase:
			return phase;
		default:
			return 0.0;
	}
}


// METHOD: SET_WAVETABLE
inline void tt_lfo::set_wavetable(tt_buffer *newbuffer)
{
	wavetable->set_buffer(newbuffer);
}


// METHOD: RESET PHASE
inline void tt_lfo::phase_reset()
{
	index = phase_in_samples;		
}


// DSP LOOP
//	only processes the first sample of the vector
//	intended only for driving parameters of other objects
//	not for use as audio
inline void tt_lfo::dsp_vector_calc(tt_audio_signal *out)
{
	int p1, p2;
	float diff;
	double wavetable_length = (double)(wavetable->length_samples); // 512.0
					
	// Move the play head
	index += (index_delta * vectorsize);	// THIS OBJECT DOES NOT LOOK AT THE VECTORSIZE OF THE OUT SIGNAL

	// Wrap the play head
	if(index >= wavetable_length)	// ADDING EXPLICIT CAST TO DOUBLE FOR DUMB WINDOWS    		
		index -= wavetable_length;
	else if(index < 0.0)	    		
		index += wavetable_length;
		

	/***************************************** PROBLEM !!!!!
	**************** THE ABOVE WRAPPING WILL CRASH IF THE FREQUENCY GOES HIGHER THAN THE KRATE (SR/VECTOR_SIZE)
	****************	THE RANGE NEEDS TO BE LIMITED - MEANING ALSO THAT THE OBJECT MUST KNOW IT'S VECTOR SIZE!!!!!!
	****************/	

	// table lookup (linear interpolation)	
	p1 = (int)index;
	p2 = p1 + 1;
	diff = index - p1;	
	p2 &= ((wavetable->length_samples) - 1);	// fast modulo:  NOTE - ONLY WORKS ON POWERS OF 2 !!!!   MAKE A SEPARATE DSP LOOP FOR THIS!!!!


    *out->vector = ((wavetable->contents[p2] * diff) + (wavetable->contents[p1] * (1.0 - diff))) * gain;
	out->reset();		
}

// ADDITIONAL METHODS ************************************************

// set sample-rate (override the inherited method)
inline void tt_lfo::set_sr(int	value)
{
	sr = value;
	r_sr = 1.0 / value;
	m_sr = sr * 0.001;
	index = 0;
	
	set_attr(k_frequency, frequency);
}		

// set vectorsize (override the inherited method)
inline void tt_lfo::set_vectorsize(int value)
{
	vectorsize = value;
	index = 0;
}
