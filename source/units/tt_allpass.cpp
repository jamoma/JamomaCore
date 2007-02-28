#include "tt_allpass.h"

// OBJECT LIFE
tt_allpass::tt_allpass(tt_attribute_value milliseconds)	// Constructor
{
	ff_in_ptr = ff_out_ptr = ff_end_ptr = ff_buffer = 0;
	fb_in_ptr = fb_out_ptr = fb_end_ptr = fb_buffer = 0;
	delay_ms_max = delay_samples = delay_samples_max = 0;
	init(milliseconds);
	set_attr(k_delay_ms, 0.0);
	set_attr(k_gain, 0.0);
}

tt_allpass::~tt_allpass()									// Destructor
{
	mem_free(ff_buffer);
	mem_free(fb_buffer);
}


// ATTRIBUTES
TT_INLINE void tt_allpass::set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
{
	switch (sel){			
		case k_delay_ms:
			delay_ms = clip(val, float(0.0), delay_ms_max);
			delay_samples = long(delay_ms * (sr / 1000.0));
			ff_end_ptr = ff_buffer + delay_samples;
			fb_end_ptr = fb_buffer + delay_samples;	
			break;
		case k_gain:
			gain = val;
			break;
	}
}

TT_INLINE tt_attribute_value tt_allpass::get_attr(tt_selector sel)				// Get Attributes
{
	switch (sel){
		case k_delay_ms:
			return delay_ms;
		case k_gain:
			return gain;
		default:
			return 0.0;
	}
}


// DSP LOOP
TT_INLINE void tt_allpass::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	tt_sample_value temp;
	temp_vs = in->vectorsize;
	
	while(temp_vs--){
		temp = anti_denormal(*in->vector++);	// Input	
		*ff_in_ptr = temp;		// Store the input in the feedforward buffer
			
		// Apply the filter
		temp = anti_denormal((*ff_out_ptr) + (temp * (-gain)) + (*fb_out_ptr * gain));	
		
		*fb_in_ptr = temp;		// Store the output in the feedback buffer
		*out->vector++ = temp;	// Output
		
		// Move the heads
		ff_in_ptr++;
		ff_out_ptr++;
		fb_in_ptr++;
		fb_out_ptr++;
		
		// Wrap the heads
		if(ff_in_ptr > ff_end_ptr)
			ff_in_ptr = ff_buffer;
		if(ff_out_ptr > ff_end_ptr)
			ff_out_ptr = ff_buffer;	
		if(fb_in_ptr > fb_end_ptr)
			fb_in_ptr = fb_buffer;
		if(fb_out_ptr > fb_end_ptr)
			fb_out_ptr = fb_buffer;	
	}
	in->reset(); out->reset();
}


// INIT
TT_INLINE void tt_allpass::init(tt_attribute_value milliseconds)
{
	delay_ms_max = milliseconds;
	delay_samples_max = long(delay_ms_max * (sr / 1000.0));
	mem_free(ff_buffer);
	mem_free(fb_buffer);
	ff_buffer = (tt_sample_value *)mem_alloc(delay_samples_max * sizeof(tt_sample_value));
	fb_buffer = (tt_sample_value *)mem_alloc(delay_samples_max * sizeof(tt_sample_value));
	if((ff_buffer == NULL) || (fb_buffer == NULL))
		log_error("tt_allpass could not allocate buffers!");
	
	clear();
}


// clear
TT_INLINE void tt_allpass::clear()
{
	short i;			
	for(i=0; i < delay_samples_max; i++){
		ff_buffer[i] = 0.0;
		fb_buffer[i] = 0.0;
	}
	ff_in_ptr = ff_buffer;
	ff_end_ptr = ff_buffer + delay_samples;
	ff_out_ptr = ff_in_ptr - delay_samples;
	if(ff_out_ptr < ff_buffer)
		ff_out_ptr = ff_end_ptr + (ff_out_ptr - ff_buffer) + 1;

	fb_in_ptr = fb_buffer;
	fb_end_ptr = fb_buffer + delay_samples;
	fb_out_ptr = fb_in_ptr - delay_samples;
	if(fb_out_ptr < fb_buffer)
		fb_out_ptr = fb_end_ptr + (fb_out_ptr - fb_buffer) + 1;
}

// set sample-rate (override the inherited method)
TT_INLINE void tt_allpass::set_sr(int	value)
{
	sr = value;
	r_sr = 1.0 / value;
	m_sr = sr * 0.001;
	
	init(delay_ms_max);				// re-alloc memory
	set_attr(k_delay_ms, delay_ms);
}

