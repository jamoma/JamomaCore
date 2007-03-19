#include "tt_dcblock.h"


TT_INLINE tt_dcblock::tt_dcblock()				// Constructor		
{
	clear();
}

TT_INLINE tt_dcblock::~tt_dcblock()				// Destructor
{
	;
}


TT_INLINE tt_err tt_dcblock::set_attr(tt_selector sel, const tt_atom &val)		// Set Attributes
{
	return TT_ERR_NONE;
}

TT_INLINE tt_err tt_dcblock::get_attr(tt_selector sel, tt_atom &val)			// Get Attributes
{
	return TT_ERR_NONE;
}


// DSP LOOP
// Note: an algorithm that is frequently used in Max:
//		"biquad~ 1.0 -1.0 -0.9997 0.0"

TT_INLINE void tt_dcblock::process(tt_audio_bundle *in, tt_audio_bundle *out)
{
	tt_uint8		channel = tt_audio_bundle::get_min_num_channels(in, out);
	tt_uint16		vs		= tt_audio_bundle::get_min_vs(in, out);
	tt_sample_value	temp;
	
	while(channel--){
		in->use_signal(channel);
		out->use_signal(channel);
		temp_vs = vs;
		while(temp_vs--){
			temp = *in->vector++;
			*out->vector++ = last_output[channel] = anti_denormal(temp - last_input[channel] + (last_output[channel] * 0.9997));
			last_input[channel] = temp;
		}
	}
	in->reset();
	out->reset();
}
		
		
// METHOD: clear
TT_INLINE void tt_dcblock::clear()
{
	/*
	last_input1 = 0.0;
	last_output1 = 0.0;	
	last_input2 = 0.0;
	last_output2 = 0.0;	
	*/
	
	tt_uint8 i;

	for(i=0; i<TT_MAX_NUM_CHANNELS; i++){
		last_input[i] = 0;
		last_output[i] = 0;
	}
}
