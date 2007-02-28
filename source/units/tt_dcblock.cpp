#include "tt_dcblock.h"


inline tt_dcblock::tt_dcblock()				// Constructor		
{
	clear();
}

inline tt_dcblock::~tt_dcblock()				// Destructor
{
	;
}


// DSP LOOP
// Note: an algorithm that is frequently used in Max:
//		"biquad~ 1.0 -1.0 -0.9997 0.0"
inline void tt_dcblock::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
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
inline void tt_dcblock::dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2)
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


// METHOD: clear
inline void tt_dcblock::clear()
{
	last_input1 = 0.0;
	last_output1 = 0.0;	
	last_input2 = 0.0;
	last_output2 = 0.0;	
}
