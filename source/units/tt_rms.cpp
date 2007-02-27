#include "tt_rms.h"


// OBJECT LIFE					
tt_rms::tt_rms()				// Constructor		
{
	coefficient = 0.9;
}

tt_rms::~tt_rms()				// Destructor
{
	;
}


// ATTRIBUTES
inline void tt_rms::set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
{
	switch (sel){
		case k_feedback_coefficient:
			coefficient = val;
			break;
	}
}

inline tt_attribute_value tt_rms::get_attr(tt_selector sel)				// Get Attributes
{
	switch (sel){
		case k_feedback_coefficient:
			return coefficient;
		default:
			return 0.0;
	}
}


// DSP LOOP
inline void tt_rms::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	tt_sample_value val;
	temp_vs = in->vectorsize;
	while(temp_vs--){
		val = *in->vector++;
		val = val * val;														// Square
		val = feedback = anti_denormal((feedback * coefficient) + (val * (1 - coefficient)));	// Mean
		*out->vector++ = sqrt(val);											// Root
	}
	in->reset(); out->reset();
}


// clear
void clear()
{
	feedback = 0.0;	
}
