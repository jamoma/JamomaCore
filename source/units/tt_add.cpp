#include "tt_add.h"


TT_INLINE 
tt_add::tt_add(void)	// Constructor		
{
	;
}

TT_INLINE 
tt_add::~tt_add(void)		// Destructor
{
	;
}


// use the generic c++ copy constructor
// tt_add operator = (const tt_add &tt_add_source)


TT_INLINE 
tt_err tt_add::set_attr(tt_selector sel, const tt_value &val)		// Set Attributes
{
	return TT_ERR_ATTR_INVALID;
}


TT_INLINE 
tt_err tt_add::get_attr(tt_selector sel, tt_value &val)			// Get Attributes
{
	return TT_ERR_NONE;
}


TT_INLINE 
void tt_add::dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out)
{
	temp_vs = in1->vectorsize;
	while(temp_vs--)
		*out->vector++ = (*in1->vector++) + (*in2->vector++);
	in1->reset(); in2->reset(); out->reset();
}


