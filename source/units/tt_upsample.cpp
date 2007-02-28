#include "tt_upsample.h"


// OBJECT LIFE					
tt_upsample::tt_upsample()									// Constructor		
{
	set_attr(k_factor, 1);						// default: no upsampling
}

tt_upsample::~tt_upsample()									// Destructor
{
	;
}


// ATTRIBUTES
TT_INLINE void tt_upsample::set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
{
	switch (sel){
		case k_factor:
			factor = val;
			break;
	}
}

TT_INLINE tt_attribute_value tt_upsample::get_attr(tt_selector sel)			// Get Attributes
{
	switch (sel){
		case k_factor:
			return factor;
		default:
			return 0;
	}
}


// DSP LOOP
TT_INLINE void tt_upsample::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	short			up_size;
	tt_sample_value	temp;
	temp_vs = out->vectorsize / factor;

	while(temp_vs--){
		up_size = factor;
		temp = *in->vector++;
		
		while(up_size--){
			*out->vector++ = temp;
		}
	}
	in->reset(); out->reset();
}

// DSP LOOP - STEREO
TT_INLINE void tt_upsample::dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, 
	tt_audio_signal *out1, tt_audio_signal *out2)
{
	short			up_size;
	tt_sample_value	temp1, temp2;
	temp_vs = out1->vectorsize / factor;

	while(temp_vs--){
		up_size = factor;
		temp1 = *in1->vector++;
		temp2 = *in2->vector++;
		
		while(up_size--){
			*out1->vector++ = temp1;
			*out2->vector++ = temp2;
		}
	}
	in1->reset(); in2->reset(); out1->reset(); out2->reset();
}
