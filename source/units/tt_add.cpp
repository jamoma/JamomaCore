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


// NOTE:  This object many have N inputs, but only one output
TT_INLINE 
void tt_add::process(tt_audio_bundle *in, tt_audio_bundle *out)
{
	tt_value		channel;
	tt_uint8		currentchannel;  
	tt_uint16		vs		= tt_audio_bundle::get_min_vs(in, out);
	tt_sample_value	temp;
	
	in->get_attr(tt_audio_bundle::k_num_channels, channel);
	currentchannel = channel;
	out->use_signal(0);
	
	while(vs--){
		temp = 0.0;
		while(currentchannel--){
			in->use_signal(currentchannel);
			temp += *in->vector;
		}
		*out->vector++ = temp;
		in->vector++;
	}

	in->reset();
	out->reset();
}
