#include "tt_comb.h"


// OBJECT LIFE					
TT_INLINE tt_comb::tt_comb(tt_attribute_value arg)				// Constructor		
{
	long i;
	alloc = memwriteptr = memory = 0;
	buffersize = arg > 24 ? arg : 25;		// init the size of the delay buffer - minimum is 25

	// ALLOCATE MEMORY BUFFER
	buffersize_in_samples = (long int)(buffersize * (sr * 0.001));
	if (buffersize_in_samples < 24)			// minimum delay buffer size is 24 samples
			buffersize_in_samples = 24;
	alloc = (float *)mem_alloc((buffersize_in_samples + 4) * sizeof(float));
	for (i = 0; i < buffersize_in_samples + 4; i++)
		alloc[i] = 0.;
	memory = alloc + 1;

	// SET DEFAULTS
	msdelay = clip((float)50,(float)1,arg);			// the initial delay time
	//delay = 0;
	comb_fb_coef = 0.9;					// the initial feedback coefficient
	clipping = 1.0;						// the initial toggle state for autoclipping
	lowpass_coef = 0.1;   				// lpass
	lowpass_feedback = 0.;				// init the feedback sample

	delay = clip(buffersize_in_samples - 4, long(1), buffersize_in_samples);
	memwriteptr = memory + delay;
}

TT_INLINE tt_comb::~tt_comb(void)							// Destructor
{
	mem_free(alloc);
}


// ATTRIBUTES
TT_INLINE 
tt_err tt_comb::set_attr(tt_selector sel, const tt_value &a)	// Set Attributes
{
	tt_float32	val = a;
	double		radians;
	
	switch (sel){
		case k_cutoff_frequency:
			lowpass_frequency = val;
			radians = hertz_to_radians(lowpass_frequency);
			lowpass_coef = clip(radians / pi, 0.0, 1.0);			
			break;
		case k_feedback:
			comb_fb_coef = val;
			decay = feedback_to_decay(comb_fb_coef, msdelay);
			break;
		case k_clip:
			clipping = val;
			break;
		case k_delay:
			msdelay = val;
			delay = clip((long)(msdelay * (sr * 0.001)),(long)1, buffersize_in_samples);
			comb_fb_coef = decay_to_feedback(decay, msdelay);
			break;
		case k_delay_static:	// Doesn't goof with the feedback coef
			msdelay = val;
			delay = clip((long)(msdelay * (sr * 0.001)),(long)1,buffersize_in_samples);
			break;
		case k_decay:
			decay = val;
			comb_fb_coef = decay_to_feedback(decay, msdelay);
			break;
		default:
			return TT_ERR_ATTR_INVALID;
	}
	return TT_ERR_NONE;
}

TT_INLINE 
tt_err tt_comb::get_attr(tt_selector sel, tt_value &a)				// Get Attributes
{
	switch (sel){
		case k_cutoff_frequency:
			a = lowpass_frequency;
			break;
		case k_feedback:
			a = comb_fb_coef;
			break;
		case k_clip:
			a = clipping;
			break;
		case k_delay:
			a = msdelay;
			break;
		case k_decay:
			a = decay;
			break;
		default:
			return TT_ERR_ATTR_INVALID;
	}
	return TT_ERR_NONE;
}


// DSP LOOP
TT_INLINE 
void tt_comb::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	float comb_fb_sample;
	float *mem_end, *mem_readptr;
	temp_vs = in->vectorsize;

	while(temp_vs--){
		mem_end = memory + buffersize_in_samples;
		mem_readptr = memwriteptr - delay;
	
		if (mem_readptr < memory)
			mem_readptr = mem_end - (memory - mem_readptr);
	
		comb_fb_sample = *mem_readptr;
	
		// LOWPASS FILTER
		comb_fb_sample = anti_denormal((comb_fb_sample * lowpass_coef) + (lowpass_feedback * (1 - lowpass_coef))); 
		lowpass_feedback = comb_fb_sample;
	
		// CLIPPING
		if (clipping != 0)
			comb_fb_sample = clip(comb_fb_sample, clipping * -1, clipping);
	
		// CALCULATION & OUTPUT
		*out->vector++ = *memwriteptr++ = anti_denormal(*in->vector++ + (comb_fb_coef * comb_fb_sample));
	
		//WRAP THE HEADS
		if (++mem_readptr >= mem_end)
			mem_readptr = memory;
		if (memwriteptr >= mem_end)
			memwriteptr = memory;
	}
	in->reset(); out->reset();
}


// ADDITIONAL METHODS ****************************************************

// clear
TT_INLINE void tt_comb::clear()
{
	long i;
	for (i=0; i<(buffersize_in_samples + 4); i++) 
		alloc[i] = 0.0;
	lowpass_feedback = 0.0;	
}

// set sample-rate (override the inherited method)
TT_INLINE void tt_comb::set_sr(int	value)
{
	sr = value;
	r_sr = 1.0 / value;
	m_sr = sr * 0.001;
	
	set_attr(k_cutoff_frequency, 	lowpass_frequency);
	set_attr(k_delay, 				msdelay);
}		
