#include "tt_degrade.h"


// OBJECT LIFE					
TT_INLINE 
tt_degrade::tt_degrade()								// Constructor		
{
	set_attr(k_bitdepth, 24);
	set_attr(k_sr_ratio, 1.0);
	accumulator = 0.0;
	output = 0.0;
}

TT_INLINE 
tt_degrade::~tt_degrade()								// Destructor
{
	;
}


// ATTRIBUTES
TT_INLINE 
tt_err tt_degrade::set_attr(tt_selector sel, const tt_value &a)	// Set Attributes
{
	tt_float32 val = a;
	
	switch (sel){			
		case k_bitdepth:
			bitdepth = clip(int(val), 1, 24);
			bit_shift = 24 - bitdepth;
			break;
		case k_sr_ratio:
			sr_ratio = val;
			break;
		default:
			return TT_ERR_ATTR_INVALID;
	}
	return TT_ERR_NONE;
}

TT_INLINE 
tt_err tt_degrade::get_attr(tt_selector sel, tt_value &a)			// Get Attributes
{
	switch (sel){
		case k_bitdepth:
			a = bitdepth;
			break;
		case k_sr_ratio:
			a = sr_ratio;
			break;
		default:
			return TT_ERR_ATTR_INVALID;
	}
	return TT_ERR_NONE;
}


// DSP LOOP
TT_INLINE 
void tt_degrade::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
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
