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
void tt_gain::set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
{
	switch (sel){
		case k_gain:
			gain = decibels_to_amplitude(val);
			break;
		case k_gain_direct:
			gain = val;
			break;
	}
}

tt_attribute_value tt_gain::get_attr(tt_selector sel)				// Get Attributes
{
	switch (sel){
		case k_gain:
			return amplitude_to_decibels(gain);
		case k_gain_direct:
			return gain;
	}
	return 0.0;
}
		

// DSP LOOP
void tt_gain::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	temp_vs = in->vectorsize;
	while(temp_vs--)
		*out->vector++ = (*in->vector++) * gain;
	in->reset(); out->reset();
}
