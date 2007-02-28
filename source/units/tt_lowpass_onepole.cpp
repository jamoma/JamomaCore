#include "tt_lowpass_onepole.h"


// OBJECT LIFE					
inline tt_lowpass_onepole::tt_lowpass_onepole()			// Constructor		
{
	set_attr(k_frequency, 5000.0);
	clear();
}

inline tt_lowpass_onepole::~tt_lowpass_onepole()							// Destructor
{
	;
}


// ATTRIBUTES
inline void tt_lowpass_onepole::set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
{
	double radians;

	switch (sel){			
		case k_frequency:
			frequency = val;
			radians = hertz_to_radians(frequency);
			coefficient = clip(radians / pi, 0.0, 1.0);			
			break;
		case k_coefficient:
			coefficient = val;
			break;
	}
}

inline tt_attribute_value tt_lowpass_onepole::get_attr(tt_selector sel)				// Get Attributes
{
	switch (sel){
		case k_frequency:
			return frequency;
		case k_coefficient:
			return coefficient;
		default:
			return 0.0;
	}
}


// DSP LOOP
inline void tt_lowpass_onepole::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	temp_vs = in->vectorsize;
	while(temp_vs--){
		*out->vector++ = feedback = anti_denormal((*in->vector++ * coefficient) + (feedback * (1 - coefficient)));
	}
	in->reset(); out->reset();
}

// ADDITIONAL METHODS *******************************************************

// clear
inline void tt_lowpass_onepole::clear()
{
	feedback = 0.0;	
}

// set sample-rate (override the inherited method)
inline void tt_lowpass_onepole::set_sr(int	value)
{
	sr = value;
	r_sr = 1.0 / value;
	m_sr = sr * 0.001;
	
	set_attr(k_frequency, frequency);
}		
