#include "tt_gain.h"


// OBJECT LIFE					
tt_gain::tt_gain(void)										// Constructor		
{
	gain = 1.0;
}

tt_gain::~tt_gain(void)										// Destructor
{
	;
}


// ATTRIBUTES
TT_INLINE
tt_err tt_gain::set_attr(tt_selector sel, const tt_value &a)	// Set Attributes
{
	tt_float32 val = a;
	
	switch (sel){
		case k_gain:
			gain = decibels_to_amplitude(val);
			break;
		case k_gain_direct:
			gain = val;
			break;
		default:
			return TT_ERR_ATTR_INVALID;
	}
	return TT_ERR_NONE;
}

TT_INLINE
tt_err tt_gain::get_attr(tt_selector sel, tt_value &a)				// Get Attributes
{
	switch (sel){
		case k_gain:
			a = amplitude_to_decibels(gain);
			break;
		case k_gain_direct:
			a = gain;
			break;
		default:
			return TT_ERR_ATTR_INVALID;
	}
	return TT_ERR_NONE;
}
		

// DSP LOOP
void tt_gain::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	temp_vs = in->vectorsize;
	while(temp_vs--)
		*out->vector++ = (*in->vector++) * gain;
	in->reset(); out->reset();
}
