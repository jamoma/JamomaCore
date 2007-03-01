#include "tt_buffer_play.h"


// OBJECT LIFE					
TT_INLINE tt_buffer_play::tt_buffer_play()									// Constructor		
{
	wavetable = 0;
	// set defaults
	set_attr(k_mode, tt_int16(k_mode_normalized));
	set_attr(k_gain, 0.0);
	wavetable = 0;
}

TT_INLINE tt_buffer_play::tt_buffer_play(tt_buffer *mybuffer)				// Constructor - BUFFER ARG
{
	wavetable = 0;
	// set defaults
	set_attr(k_mode, tt_int16(k_mode_normalized));
	set_attr(k_gain, 0.0);
	wavetable = 0;
	set_buffer(mybuffer);
}

TT_INLINE tt_buffer_play::~tt_buffer_play()									// Destructor
{
	;
}


// ATTRIBUTES
TT_INLINE 
tt_err tt_buffer_play::set_attr(tt_selector sel, const tt_atom &a)	// Set Attributes
{
	tt_float32 val = a;
	
	switch (sel){
		case k_mode:	// mode sets a function pointer to the correct dsp loop
			mode = (tt_attribute_value_discrete)val;
			if(mode == k_mode_samples)
				dsp_executor = &tt_buffer_play::dsp_vector_calc_samples;
			else if(mode == k_mode_ms)
				dsp_executor = &tt_buffer_play::dsp_vector_calc_ms;
			else if(mode == k_mode_normalized)
				dsp_executor = &tt_buffer_play::dsp_vector_calc_normalized;
			else if(mode == k_mode_normalized_fast)
				dsp_executor = &tt_buffer_play::dsp_vector_calc_normalized_fast;
			break;
		case k_gain:
			gain = decibels_to_amplitude(val);
			break;
		default:
			return TT_ERR_ATTR_INVALID;
	}
	return TT_ERR_NONE;
}

TT_INLINE 
tt_err tt_buffer_play::get_attr(tt_selector sel, tt_atom &a)				// Get Attributes
{
	switch (sel){
		case k_mode:
			a = mode;
		case k_gain:
			a = amplitude_to_decibels(gain);
		default:
			return TT_ERR_ATTR_INVALID;
	}
	return TT_ERR_NONE;
}


// METHODS
TT_INLINE 
void tt_buffer_play::set_buffer(tt_buffer *mybuffer)	// Set Buffer
{
	wavetable = mybuffer;	
}

TT_INLINE tt_buffer *tt_buffer_play::get_buffer()				// Get Buffer
{
	return wavetable;
}


/*****************************************************
 * DSP LOOPS
 *****************************************************/

// Publically exposed interface for this object's dsp routine
TT_INLINE void tt_buffer_play::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	(*this.*dsp_executor)(in, out);
}


// DSP LOOP: input is the location in samples
void tt_buffer_play::dsp_vector_calc_samples(tt_audio_signal *in, tt_audio_signal *out)
{
	unsigned long p1, p2;	
	float diff;
	double index;
	float wavetable_length = float(wavetable->length_samples);
	temp_vs = in->vectorsize;
							
    while(temp_vs--){
		// locate the play head, range check
		index = clip( *in->vector++, float(0), wavetable_length);
						
		// table lookup (linear interpolation)	
		p1 = (unsigned long)index;
		p2 = p1 + 1;
		diff = index - p1;	
		p2 &= ((wavetable->length_samples) - 1);	// fast modulo
								
    	*out->vector++ = ((wavetable->contents[p2] * diff) + (wavetable->contents[p1] * (1.0 - diff))) * gain;
    }
    in->reset(); out->reset();
}

// DSP LOOP: input is the location in ms
void tt_buffer_play::dsp_vector_calc_ms(tt_audio_signal *in, tt_audio_signal *out)
{
	int p1, p2;
	float diff;
	double index;
	temp_vs = in->vectorsize;	
							
    while(temp_vs--){
		// locate the play head, range check
		index = clip(float(*in->vector++ /** 1000.0) * sr*/ * m_sr), 0.0f, float(wavetable->length_samples));
						
		// table lookup (linear interpolation)	
		p1 = (int)index;
		p2 = p1 + 1;
		diff = index - p1;	
		p2 &= ((wavetable->length_samples) - 1);	// fast modulo
								
    	*out->vector++ = ((wavetable->contents[p2] * diff) + (wavetable->contents[p1] * (1.0 - diff))) * gain;
    }
    in->reset(); out->reset();
}

// DSP LOOP: input is the location from 0 to 1
void tt_buffer_play::dsp_vector_calc_normalized(tt_audio_signal *in, tt_audio_signal *out)
{
	unsigned long p1, p2;
	float diff, wavetable_length = (float)wavetable->length_samples;
	double index;
	temp_vs = in->vectorsize;
							
    while(temp_vs--){
		// locate the play head, range check
		index = clip(*in->vector++ * wavetable_length, 0.0f, wavetable_length);
						
		// table lookup (linear interpolation)	
		p1 = (unsigned long)index;
		p2 = p1 + 1;
		diff = index - p1;	
		p2 &= ((wavetable->length_samples) - 1);	// fast modulo
								
    	*out->vector++ = ((wavetable->contents[p2] * diff) + (wavetable->contents[p1] * (1.0 - diff))) * gain;
    }
}

// DSP LOOP: input is the location from 0 to 1, NO INTERPOLATION, NO RANGE CHECK
void tt_buffer_play::dsp_vector_calc_normalized_fast(tt_audio_signal *in, tt_audio_signal *out)
{
	long index;
	temp_vs = in->vectorsize;				
    while(temp_vs--){
		// locate the play head, range check
		index = long(*in->vector++ * wavetable->length_samples);
						
    	*out->vector++ = wavetable->contents[index];
    }
}
