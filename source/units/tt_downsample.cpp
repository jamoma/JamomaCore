#include "tt_downsample.h"


// OBJECT LIFE					
TT_INLINE tt_downsample::tt_downsample()									// Constructor		
{
	set_attr(k_factor, 1);							// default: no upsampling
}

TT_INLINE tt_downsample::~tt_downsample()									// Destructor
{
	;
}


// ATTRIBUTES
TT_INLINE 
tt_err tt_downsample::set_attr(tt_selector sel, const tt_atom &a)	// Set Attributes
{
	switch (sel){
		case k_factor:
			factor = a;
			break;
		default:
			return TT_ERR_ATTR_INVALID;
	}
	return TT_ERR_NONE;
}

TT_INLINE 
tt_err tt_downsample::get_attr(tt_selector sel, tt_atom &a)			// Get Attributes
{
	switch (sel){
		case k_factor:
			a = factor;
			break;
		default:
			return TT_ERR_ATTR_INVALID;
	}
	return TT_ERR_NONE;
}


// DSP LOOP - MONO
TT_INLINE void tt_downsample::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	tt_sample_value	temp;
	short			down_size;

	temp_vs = in->vectorsize;			
	while(temp_vs){
		down_size = factor;
		
		while(down_size--){				// simple SAH technique
			temp = *(in->vector++);
		}
		*(out->vector++) = temp;
		temp_vs -= factor;
	}
	in->reset(); out->reset();
}

// DSP LOOP - STEREO
TT_INLINE void tt_downsample::dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2)
{
	tt_sample_value	temp1, temp2;
	short			down_size;

	temp_vs = in1->vectorsize;			
	while(temp_vs){
		down_size = factor;
		
		while(down_size--){				// simple SAH technique
			temp1 = *(in1->vector++);
			temp2 = *(in2->vector++);
		}
		*(out1->vector++) = temp1;
		*(out2->vector++) = temp2;
		temp_vs -= factor;
	}
	in1->reset(); in2->reset(); out1->reset(); out2->reset();
}
