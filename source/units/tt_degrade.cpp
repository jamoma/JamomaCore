#include "tt_degrade.h"


// OBJECT LIFE					
TT_INLINE tt_degrade::tt_degrade()								// Constructor		
{
	set_attr(k_bitdepth, 24);
	set_attr(k_sr_ratio, 1.0);
	accumulator = 0.0;
	output = 0.0;
}

TT_INLINE tt_degrade::~tt_degrade()								// Destructor
{
	;
}


// ATTRIBUTES
TT_INLINE void tt_degrade::set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
{
	switch (sel){			
		case k_bitdepth:
			bitdepth = clip(int(val), 1, 24);
			bit_shift = 24 - bitdepth;
			break;
		case k_sr_ratio:
			sr_ratio = val;
			break;
	}
}

TT_INLINE tt_attribute_value tt_degrade::get_attr(tt_selector sel)			// Get Attributes
{
	switch (sel){
		case k_bitdepth:
			return bitdepth;
		case k_sr_ratio:
			return sr_ratio;
		default:
			return 0.0;
	}
}


// DSP LOOP
TT_INLINE void tt_degrade::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	long l;
	temp_vs = in->vectorsize;
	
	while(temp_vs--){
		// SR Reduction
		accumulator += sr_ratio;
		if (accumulator >= 1.0){
			output = *in->vector++;
			accumulator -= 1.0;
		}
		
		// Bit Depth Reduction
		l = long(output * BIG_INT);				// change float to long int
		l >>= bit_shift;						// shift away the least-significant bits
		l <<= bit_shift;						// shift back to the correct registers
		*out->vector++ = (float) l * ONE_OVER_BIG_INT;	// back to float
	}
	in->reset(); out->reset();
}
