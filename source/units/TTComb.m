//	TTCombObject
//	IIR Comb Filter
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL

#import "TTComb.h"


@implementation TTCombObject

- (id)init
{
	[super init];
	
	// TODO: Stuff...
	
	
	
	[self clear];
	return self;
}	


- (void) dealloc
{
	free(alloc);
	[super dealloc];
}


- (TTErr) clear
{
	long i;
	for (i=0; i<(buffersize_in_samples + 4); i++) 
		alloc[i] = 0.0;
	lowpass_feedback = 0.0;	
	return TT_ERR_NONE;
}


- (TTErr) srAttributeSetLongValue:(long)value
{
	if(value != sr){
		[super srAttributeSetLongValue:value];
		set_attr(k_cutoff_frequency, lowpass_frequency);
		set_attr(k_delay, msdelay);
	}
	return TT_ERR_NONE;
}


- (TTErr) processAudioWithInput:(TTAudioSignal *)signals_in andOutput:(TTAudioSignal *)signals_out
{
	short			vs = signals_in->vs;
	float			*in,
					*out;
	short			numchannels = [TTAudioSignal GetMinNumChannelsForASignal:signals_in andAnotherSignal:signals_out];
	short			channel;
	TTSampleValue	temp;
	
	for(channel=0; channel<numchannels; channel++){
		in = signals_in->vectors[channel];
		out = signals_out->vectors[channel];
		
		while(vs--){
			temp = *in++;
			*out++ = last_output[channel] = ttantidenormal(temp - last_input[channel] + (last_output[channel] * 0.9997));
			last_input[channel] = temp;
		}
	}
}


@end

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


