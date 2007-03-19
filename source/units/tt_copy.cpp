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
void tt_copy::process(tt_audio_bundle *in, tt_audio_bundle *out)
{
	tt_uint8		channel = tt_audio_bundle::get_min_num_channels(in, out);
	tt_uint16		vs		= tt_audio_bundle::get_min_vs(in, out);
	
	while(channel--){
		in->use_signal(channel);
		out->use_signal(channel);
		temp_vs = vs;
		while(vs--)
			*out->vector++ = *in->vector++;
	}
	in->reset();
	out->reset();
}
