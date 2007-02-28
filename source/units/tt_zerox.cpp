#include "tt_zerox.h"


// OBJECT LIFE					
tt_zerox::tt_zerox()										// Constructor		
{
	set_attr(k_analysis_size, 2000);
	clear();
}

tt_zerox::~tt_zerox()									// Destructor
{
	;
}


// ATTRIBUTES
TT_INLINE void tt_zerox::set_attr(tt_selector sel, tt_attribute_value val)		// Set Attributes
{
	switch (sel){
		case k_analysis_size:
			analysis_samps = (tt_attribute_value_discrete)val;
			r_analysis_samps = 1.0 / val;
			break;
	}
}

TT_INLINE tt_attribute_value tt_zerox::get_attr(tt_selector sel)				// Get Attributes
{
	switch (sel){
		case k_analysis_size:
			return tt_attribute_value(analysis_samps);
		default:
			return 0.0;
	}
}


// DSP LOOP
TT_INLINE void tt_zerox::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out1, tt_audio_signal *out2)
{
	bool this_samp_is_over_zero;
	bool zerox_occured;
	temp_vs = in->vectorsize;
	
	while(temp_vs--){
		//val = *in++;
		this_samp_is_over_zero = (0 < (*in->vector++));
		zerox_occured = last_samp_was_over_zero != this_samp_is_over_zero;
		last_samp_was_over_zero = this_samp_is_over_zero;

		counter += zerox_occured;
		analysis_location++;
		
		if(analysis_location >= analysis_samps){
			final_count = ((sr * counter) * r_analysis_samps) * r_sr;
//			final_count = ((sr * counter) * r_analysis_samps) / float(sr);
			analysis_location = 0;
			counter = 0;
		}

		*out1->vector++ = final_count;
		*out2->vector++ = zerox_occured;
	}
	in->reset(); out1->reset(); out2->reset();
}


// clear
TT_INLINE void tt_zerox::clear()
{
	last_samp_was_over_zero = 0;
	counter = 0;
	final_count = 0;
	analysis_location = 0;
}

