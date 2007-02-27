#include "tt_add.h"


tt_add::tt_add(void)	// Constructor		
{
	;
}

tt_add::~tt_add(void)		// Destructor
{
	;
}

// use the generic c++ copy constructor
// tt_add operator = (const tt_add &tt_add_source)


inline void tt_add::dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out)
{
	temp_vs = in1->vectorsize;
	while(temp_vs--)
		*out->vector++ = (*in1->vector++) + (*in2->vector++);
	in1->reset(); in2->reset(); out->reset();
}


