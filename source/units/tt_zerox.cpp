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
TT_INLINE 
tt_err tt_zerox::set_attr(tt_selector sel, const tt_value &a)		// Set Attributes
{
	tt_float32 val = a;
	switch (sel){
		case k_analysis_size:
			analysis_samps = a;
			r_analysis_samps = 1.0 / val;
			break;
		default:
			return TT_ERR_ATTR_INVALID;
	}
	return TT_ERR_NONE;
}

TT_INLINE 
tt_err tt_zerox::get_attr(tt_selector sel, tt_value &a)				// Get Attributes
{
	switch (sel){
		case k_analysis_size:
			a = analysis_samps;
			break;
		default:
			return TT_ERR_ATTR_INVALID;
	}
	return TT_ERR_NONE;
}


// DSP LOOP
/*
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
*/

TT_INLINE 
void tt_zerox::process(tt_audio_bundle *in, tt_audio_bundle *out)
{
	tt_uint16			vs		= tt_audio_bundle::get_min_vs(in, out);
	tt_sample_vector	value_in; 
	tt_sample_vector	value_out1; 
	tt_sample_vector	value_out2; 
	bool				this_samp_is_over_zero;
	bool				zerox_occured;

	in->get_vector(0, &value_in);
	out->get_vector(0, &value_out1);
	out->get_vector(1, &value_out2);

	while(vs--){
		this_samp_is_over_zero = (0 < (*value_in++));
		zerox_occured = last_samp_was_over_zero != this_samp_is_over_zero;
		last_samp_was_over_zero = this_samp_is_over_zero;

		counter += zerox_occured;
		analysis_location++;

		if(analysis_location >= analysis_samps){
			final_count = ((sr * counter) * r_analysis_samps) * r_sr;
			analysis_location = 0;
			counter = 0;
		}

		*value_out1++ = final_count;
		*value_out2++ = zerox_occured;
	}
// these shouldn't be needed because we aren't manipulating the signals themselves in this unit
//	in->reset(); 
//	out1->reset(); 
//	out2->reset();
}


// clear
TT_INLINE 
void tt_zerox::clear()
{
	last_samp_was_over_zero = 0;
	counter = 0;
	final_count = 0;
	analysis_location = 0;
}
