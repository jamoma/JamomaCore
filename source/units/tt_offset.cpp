#include "tt_offset.h"


tt_offset::tt_offset(void)					// Constructor		
{
	set_attr(k_offset_value, 0.0);
}

tt_offset::~tt_offset(void)					// Destructor
{
	;
}


// ATTRIBUTES
TT_INLINE 
tt_err tt_offset::set_attr(tt_selector sel, const tt_value &val)	// Set Attributes
{
	switch (sel){			
		case k_offset_value:
			offset_value = val;
			break;
		default:
			return TT_ERR_ATTR_INVALID;	// really should make this throw and exception (applies to all objects)!
	}
	return TT_ERR_NONE;
}

TT_INLINE 
tt_err tt_offset::get_attr(tt_selector sel, tt_value &a)				// Get Attributes
{
	switch (sel){
		case k_offset_value:
			a = offset_value;
			break;
		default:
			return TT_ERR_ATTR_INVALID;	// really should make this throw and exception (applies to all objects)!
	}
	return TT_ERR_NONE;
}
		

// DSP LOOP
TT_INLINE void tt_offset::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	temp_vs = in->vectorsize;
	while(temp_vs--)
		*out->vector++ = *in->vector++ + offset_value;
	in->reset(); out->reset();
}
