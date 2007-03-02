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
TT_INLINE 
tt_err tt_rms::set_attr(tt_selector sel, const tt_atom &val)	// Set Attributes
{
	switch (sel){
		case k_feedback_coefficient:
			coefficient = val;
			break;
		default:
			return TT_ERR_ATTR_INVALID;
	}
	return TT_ERR_NONE;
}

TT_INLINE 
tt_err tt_rms::get_attr(tt_selector sel, tt_atom &val)				// Get Attributes
{
	switch (sel){
		case k_feedback_coefficient:
			val = coefficient;
			break;
		default:
			return TT_ERR_ATTR_INVALID;
	}
	return TT_ERR_NONE;
}


// DSP LOOP
TT_INLINE void tt_rms::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
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
TT_INLINE void tt_rms::clear()
{
	feedback = 0.0;	
}
