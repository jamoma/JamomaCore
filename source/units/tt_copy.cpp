#include "tt_copy.h"


tt_copy::tt_copy(void)	// Constructor		
{
	;
}

tt_copy::~tt_copy(void)		// Destructor
{
	;
}

// DSP LOOP
void tt_copy::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	int vs = in->vectorsize;
	while(vs--)
		*out->vector++ = *in->vector++;
	in->reset(); out->reset();
}

// DSP LOOP
void tt_copy::dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2)
{
	temp_vs = in1->vectorsize;
	while(temp_vs--){
		*out1->vector++ = *in1->vector++;
		*out2->vector++ = *in2->vector++;
	}
	in1->reset(); in2->reset(); out1->reset(); out2->reset();
}
