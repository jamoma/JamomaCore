#include "tt_lowpass_onepole.h"


// OBJECT LIFE					
TT_INLINE 
tt_lowpass_onepole::tt_lowpass_onepole()			// Constructor		
{
	set_attr(k_frequency, 5000.0);
	clear();
}

TT_INLINE 
tt_lowpass_onepole::~tt_lowpass_onepole()							// Destructor
{
	;
}


// ATTRIBUTES
TT_INLINE 
tt_err tt_lowpass_onepole::set_attr(tt_selector sel, const tt_value &a)	// Set Attributes
{
	double radians;

	switch (sel){			
		case k_frequency:
			frequency = a;
			radians = hertz_to_radians(frequency);
			coefficient = clip(radians / pi, 0.0, 1.0);			
			break;
		case k_coefficient:
			coefficient = a;
			break;
		default:
			return TT_ERR_ATTR_INVALID;
	}
	return TT_ERR_NONE;
}

TT_INLINE 
tt_err tt_lowpass_onepole::get_attr(tt_selector sel, tt_value &a)				// Get Attributes
{
	switch (sel){
		case k_frequency:
			a = frequency;
			break;
		case k_coefficient:
			a = coefficient;
			break;
		default:
			return TT_ERR_ATTR_INVALID;
	}
	return TT_ERR_NONE;
}


// DSP LOOP
TT_INLINE 
void tt_lowpass_onepole::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	temp_vs = in->vectorsize;
	while(temp_vs--){
		*out->vector++ = feedback = anti_denormal((*in->vector++ * coefficient) + (feedback * (1 - coefficient)));
	}
	in->reset(); out->reset();
}

// ADDITIONAL METHODS *******************************************************

// clear
TT_INLINE void tt_lowpass_onepole::clear()
{
	feedback = 0.0;	
}

// set sample-rate (override the inherited method)
TT_INLINE void tt_lowpass_onepole::set_sr(int	value)
{
	sr = value;
	r_sr = 1.0 / value;
	m_sr = sr * 0.001;
	
	set_attr(k_frequency, frequency);
}		
