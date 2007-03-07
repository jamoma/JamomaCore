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

TT_INLINE void tt_dcblock::process(tt_audio_bundle &in, tt_audio_bundle &out)
{
	tt_uint8		channel = get_min_num_channels(in, out);
	tt_uint16		vs = get_min_vs(in, out);
	tt_sample_value	temp;
	
	while(channel--){
		in.use_signal(channel);
		out.use_signal(channel);
		while(vs--){
			temp = in.vector++;
			*out->vector++ = last_output[channel] = anti_denormal(temp - last_input[channel] + (last_output[channel] * 0.9997));
			last_input[channel] = temp;
		}
		in.reset_signal();
		out.reset_signal();
	}
}
		
		
// OLD DSP METHODS		
/*
TT_INLINE void tt_dcblock::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	tt_sample_value temp;
	int vs = in->vectorsize;		

	while(vs--){
		temp = *in->vector++;
		*out->vector++ = last_output1 = anti_denormal(temp - last_input1 + (last_output1 * 0.9997));
		last_input1 = temp;
	}
	in->reset(); out->reset();
}

// DSP LOOP - STEREO
TT_INLINE void tt_dcblock::dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2)
{
	tt_sample_value temp1, temp2;
	temp_vs = in1->vectorsize;		

	while(temp_vs--){
		temp1 = *in1->vector++;
		temp2 = *in2->vector++;
		
		*out1->vector++ = last_output1 = anti_denormal(temp1 - last_input1 + (last_output1 * 0.9997));
		last_input1 = anti_denormal(temp1);

		*out2->vector++ = last_output2 = anti_denormal(temp2 - last_input2 + (last_output2 * 0.9997));
		last_input2 = anti_denormal(temp2);
	}
	in1->reset(); in2->reset(); out1->reset(); out2->reset();
}
*/

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
