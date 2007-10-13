//	TTDelayObject
//	Delay unit 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL

#import "TTDelay.h"


@implementation TTDelayObject

- (id) init
{
	return [self init initWithSizeInSamples:256];
}	

- (id) initWithSizeInMS:(float)max_ms
{
	long numSamples = TTMSToSamples(max_ms);				// Uses global sample rate for calculation
	return [self init initWithSizeInSamples:numSamples];
}

- (id) initWithSizeInSamples:(long)max_samples
{
	[super init];
	[self setupBuffersForNumSamples:max_samples];
	return self;
}


- (TTErr) setupBuffersForNumSamples:(long)max_samples
{
	short i;
	
	in_ptr = out_ptr = end_ptr = 0;
	output[0] = output[1] = output[2] = output[3] = 0;		

	if(buffer)
		free(buffer);
	buffer = (TTSampleValue *)malloc((max_samples + 4) * sizeof(TTSampleValue));
	
	in_ptr = buffer;
	delay_samples_max = max_samples;
	delay_ms_max = delay_samples_max / m_sr;
	//log_post("INIT: delay_ms_max: %f    delay_samps_max: %i", delay_ms_max, delay_samples_max);			
	set_attr(k_delay_samples, max_samples - 1);
	set_attr(k_interpolation, k_interpolation_linear);
	for(i=0;i<4;i++)
		output[i] = 0;
			
	[self reset];
}


- (void) dealloc
{
	free(buffer);	
	[super dealloc];
}


// Reset the pointers
- (void) reset
{
	end_ptr = buffer + delay_samples;
	out_ptr = in_ptr - delay_samples;
	if(out_ptr < buffer)
		out_ptr = end_ptr + (out_ptr - buffer) + 1;
	else if(out_ptr > end_ptr)
		out_ptr = buffer + (out_ptr - end_ptr);
		
	[self clear];
}


// clear
- (TTErr) clear
{
	float *i;
	long j = 0;
				
	for(i = buffer; i< end_ptr; i++, j++)
		buffer[j] = 0.0;
}


#pragma mark Attributes


- (void) setSr:(long)value
{
	if(value != sr){
		long	numsamples;
		
		[super setLong:value forKey:@"sr"];
		numsamples = srm * delay_ms;

		// allocate a larger delay buffer if neccessary
		[self setupBuffersForNumSamples:numsamples];
		
		// hold the delay_length in ms constant, despite the change of sr (but should only do this if the time was specified in ms...)
		[self setFloat:delayMSAttribute forKey:@"delayMSAttribute"];
	}
}


- (void) setDelayMSAttribute:(float)value
{
	delayMSAttribute = value;
	fdelay_samples = delay_ms * m_sr;
	delay_samples = (tt_attribute_value_discrete)fdelay_samples;
	fractional_delay = fdelay_samples - delay_samples;
	
	[self reset];
}

- (void) setDelaySamplesAttribute:(long)value
{
	//	case k_delay_samples:
	fdelay_samples = delay_samples = clip(long(val), long(0), delay_samples_max);
	delay_ms = (float)delay_samples * 1000.0 / (float)sr;
	fractional_delay = 0;
	
	[self reset];
}

- (void) setInterpolationAttribute:(long)value
{
	//	case k_interpolation:
	interpolation = (tt_attribute_value_discrete)val;
	if(interpolation == k_interpolation_linear){
		dsp_executor = &tt_delay::dsp_vector_calc_linear;
		dsp_executor2 = &tt_delay::dsp_vector_calc_linear_2in;
	}	
	else if(interpolation == k_interpolation_none){
		dsp_executor = &tt_delay::dsp_vector_calc_nointerp;
		dsp_executor2 = &tt_delay::dsp_vector_calc_nointerp_2in;
	}
	else if(interpolation == k_interpolation_polynomial){
		dsp_executor = 0;
		dsp_executor2 = 0;
		// dsp_executor2 = &tt_delay::dsp_vector_calc_poly_2in;
		log_post("tt_delay: This interpolation mode is not currently functional");
	}
	else if(interpolation == k_interpolation_polynomial2){
		dsp_executor = 0;
		// dsp_executor2 = &tt_delay::dsp_vector_calc_poly2_2in;
	}
	else if(interpolation == k_interpolation_linear2){
		dsp_executor = &tt_delay::dsp_vector_calc_linear;
		// dsp_executor2 = &tt_delay::dsp_vector_calc_linear2_2in;
	}

	[self reset];
}


#pragma mark Audio

- (TTErr) processAudioWithInput:(TTAudioSignal *)audioIn andOutput:(TTAudioSignal *)audioOut
{
	short	numchannels = [TTAudioSignal GetMinNumChannelsForASignal:audioIn andAnotherSignal:audioOut];

	// if there are more inputs than pairs of in-outs, then we take the last input and use it as a delay time signal
	if(audioIn->numChannels > numchannels){
		if(interpolationAttribute)
			[self processLinearInterpolationWithInputVector:audioIn->vector[0] 
												delayVector:audioIn->vector[1] 
												outputVector:audioOut->vector[0] 
												andVectorSize:audioIn->vs];
		else
			[self processNoInterpolationWithInputVector:audioIn->vector[0] 
												delayVector:audioIn->vector[1] 
												outputVector:audioOut->vector[0] 
												andVectorSize:audioIn->vs];
	}
	else{
		if(interpolationAttribute)
			[self processLinearInterpolationWithInputVector:audioIn->vector[0] 
												outputVector:audioOut->vector[0] 
												andVectorSize:audioIn->vs];
		else
			[self processNoInterpolationWithInputVector:audioIn->vector[0] 
												outputVector:audioOut->vector[0] 
												andVectorSize:audioIn->vs];
	}
}


// Note: A modulated delay is essentially a resampling process. This means that when we resample we need the 
//	values that are "between" the buffer indices - thus we interpolate to find them (not between output indices).
- (void) processLinearInterpolationWithInputVector:(TTSampleValue*)input 
									delayVector:(TTSampleValue*)delay 
									outputVector:(TTSampleValue*)output 
									andVectorSize:(short)vs
{
	TTSampleValue	temp;
	TTSampleValue	*next;
	
	if(buffer == NULL)
		return;
	
    while(vs--){
		*in_ptr = *input++;			// Store the audio input @ the record head
		delay_ms = *delay++;		// Store the delay time input
		//delay_ms = clip(*in2->vector++, 0.f, delay_ms_max);		// Store the delay time input
		
		// CALCULATE THE DELAY TIME
		// delay_samples = clip(long(delay_ms * m_sr), long(0), delay_samples_max);
		//delay_samples = delay_ms * m_sr;
		fdelay_samples = delay_ms * m_sr;
		delay_samples = (tt_attribute_value_discrete)fdelay_samples;
		fractional_delay = fdelay_samples - delay_samples;

		//end_ptr = buffer + delay_samples;					// set pointer to the end of the buffer

		// MOVE THE RECORD HEAD
		in_ptr++;
		if(in_ptr > end_ptr)
			in_ptr = buffer;
		//*in_ptr = *in1->vector++;		// Store the audio input @ the record head
			
		// MOVE THE PLAY HEAD
		out_ptr = in_ptr - delay_samples;
		if(out_ptr > end_ptr)
			out_ptr = buffer + (out_ptr - end_ptr);
		else if(out_ptr < buffer)
			out_ptr = end_ptr + (out_ptr - buffer) + 1;

		// STORE THE VALUE OF THE NEXT SAMPLE IN THE BUFFER FOR INTERPOLATION
		next = out_ptr + 1;
		if(next > end_ptr)
			next = buffer + (next - end_ptr);
		else if(next < buffer)
			next = end_ptr + (next - buffer) + 1;
		temp = *next;
		
		// Interpolate between the play head value (from above) and the next value in the buffer
		*output++ = (temp * (1.0 - fractional_delay)) + (*out_ptr * fractional_delay);
    }
}


- (void) processNoInterpolationWithInputVector:(TTSampleValue*)input 
									delayVector:(TTSampleValue*)delay
									outputVector:(TTSampleValue*)output 
									andVectorSize:(short)vs
{
	// CALCULATE THE DELAY TIME
	delay_ms = *delay;		// Because this is the Lo-Fi loop, just do this at the vector...
	fdelay_samples = delay_ms * m_sr;
	delay_samples = (tt_attribute_value_discrete)fdelay_samples;
	fractional_delay = fdelay_samples - delay_samples;

    while(vs--){
		*in_ptr++ = *input++;		// Store Input
		*output++ = *out_ptr++;		// Find Output
		
		if(in_ptr > end_ptr)	// Buffer Managment...
			in_ptr = buffer;
		if(out_ptr > end_ptr)
			out_ptr = buffer;	
    }
}


- (void) processLinearInterpolationWithInputVector:(TTSampleValue*)input 
									outputVector:(TTSampleValue*)output 
									andVectorSize:(short)vs
{
	float temp;
	TTSampleValue *next;
	
    while(vs--){
		*in_ptr = *input++;			// Store Input
						
		// MOVE THE RECORD HEAD
		in_ptr++;
		if(in_ptr > end_ptr)
			in_ptr = buffer;

		// MOVE THE PLAY HEAD
		out_ptr++;				
		if(out_ptr > end_ptr)	
			out_ptr = buffer;

		// STORE THE VALUE OF THE NEXT SAMPLE IN THE BUFFER FOR INTERPOLATION
		next = out_ptr + 1;
		if(next > end_ptr)
			next = buffer + (next - end_ptr);
		else if(next < buffer)
			next = end_ptr + (next - buffer) + 1;
		temp = *next;

			
		// Interpolate between the play head value (from above) and the next play head value
		*output++ = (temp * (1.0 - fractional_delay)) + (*out_ptr * fractional_delay);
    }
}


- (void) processNoInterpolationWithInputVector:(TTSampleValue*)input 
									outputVector:(TTSampleValue*)output 
									andVectorSize:(short)vs
{
    while(vs--){
		*in_ptr++ = *input++;		// Store Input
		*output++ = *out_ptr++;		// Find Output
		
		if(in_ptr > end_ptr)		// Buffer Managment...
			in_ptr = buffer;
		if(out_ptr > end_ptr)
			out_ptr = buffer;	
    }
}


@end
