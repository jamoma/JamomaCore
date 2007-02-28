#include "tt_lowpass_twopole.h"


// OBJECT LIFE					
inline tt_lowpass_twopole::tt_lowpass_twopole()								// Constructor		
{
	set_attr(k_frequency, 1000.0);	
	set_attr(k_resonance, 1.0);	
	clear();
}

inline tt_lowpass_twopole::~tt_lowpass_twopole()								// Destructor
{
	;
}


// ATTRIBUTES
inline void tt_lowpass_twopole::set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
{
	switch (sel){			
		case k_frequency:
			frequency = val;
			radians = hertz_to_radians(val);
			break;
		case k_resonance:
			resonance = val;
			if (val <= 0.001) minus_one_over_resonance = -1000.;
			else minus_one_over_resonance = -1.0 / resonance;					
			break;
	}
	coef_a = 2.0 * cos(radians) * exp(0.5 * radians * minus_one_over_resonance);
	coef_b = exp(radians * minus_one_over_resonance);
	coef_c = 1.0 - coef_a + coef_b;			
}

inline tt_attribute_value tt_lowpass_twopole::get_attr(tt_selector sel)				// Get Attributes
{
	switch (sel){
		case k_frequency:
			return frequency;
		case k_resonance:
			return resonance;
		default:
			return 0.0;
	}
}


// DSP LOOP
inline void tt_lowpass_twopole::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	tt_sample_value temp;
	temp_vs = in->vectorsize;
	
	while(temp_vs--){
		temp = *in->vector++;
		temp = anti_denormal((feedback[k_left][0] * coef_a) - (feedback[k_left][1] * coef_b) + (temp * coef_c));
		*out->vector++ = temp;
		feedback[k_left][1] = feedback[k_left][0];
		feedback[k_left][0] = temp;
/*		temp = *in->vector++;
		temp = (feedback[0] * coef_a) - (feedback[1] * coef_b) + (temp * coef_c);
		*out->vector++ = temp;
		feedback[1] = feedback[0];
		feedback[0] = temp;
*/	}
	in->reset(); out->reset();
}

// DSP LOOP - STEREO
inline void tt_lowpass_twopole::dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2)
{
	tt_sample_value temp[2];
	temp_vs = in1->vectorsize;
	
	while(temp_vs--){
		// LEFT
		temp[k_left] = *in1->vector++;
		temp[k_left] = anti_denormal((feedback[k_left][0] * coef_a) - (feedback[k_left][1] * coef_b) + (temp[k_left] * coef_c));
		*out1->vector++ = temp[k_left];
		feedback[k_left][1] = feedback[k_left][0];
		feedback[k_left][0] = temp[k_left];
		
		// RIGHT
		temp[k_right] = *in2->vector++;
		temp[k_right] = anti_denormal((feedback[k_right][0] * coef_a) - (feedback[k_right][1] * coef_b) + (temp[k_right] * coef_c));
		*out2->vector++ = temp[k_right];
		feedback[k_right][1] = feedback[k_right][0];
		feedback[k_right][0] = temp[k_right];				
	}
	in1->reset(); in2->reset(); out1->reset(); out2->reset();
}


// clear
inline void tt_lowpass_twopole::clear()
{
	short i;
	
	for(i=0; i < num_poles; i++){
		feedback[k_left][i] = 0.0;
		feedback[k_right][i] = 0.0;
	}	
}
