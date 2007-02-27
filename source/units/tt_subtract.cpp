#include "tt_subtract.h"

tt_subtract::tt_subtract(void)	// Constructor		
{
	;
}

tt_subtract::~tt_subtract(void)		// Destructor
{
	;
}

// DSP LOOP
inline void tt_subtract::dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out)
{
	temp_vs = in1->vectorsize;
	while(temp_vs--)
		*out->vector++ = (*in1->vector++) - (*in2->vector++);
	in1->reset(); in2->reset(); out->reset();
}
