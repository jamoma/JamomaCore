/*
 * TTBlue Delay Unit
 * Copyright © 2003, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDelay.h"


TTDelay::TTDelay(TTUInt8 newMaxNumChannels)
	: TTAudioObject("filter.dcblock", newMaxNumChannels),
	buffer(NULL),
	inPtr(NULL)
{
	// make the clear method available to be called:
	registerMessage(TT("clear"), (TTMethod)&TTDelay::clear, kTTMessagePassNone);
	
	// this next one is called by the parent class so we can allocate memory as required
	registerMessage(TT("updateMaxNumChannels"), (TTMethod)&TTDelay::updateMaxNumChannels, kTTMessagePassNone);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);
//	setProcess((TTProcessMethod)&TTDCBlock::processAudio);
}

/*
 
 
 // OBJECT LIFE					
 TT_INLINE tt_delay::tt_delay(long max)						// Constructor - INT ARGUMENT: SPECIFY IN SAMPLES
 {
 init(max);
 }
 
 TT_INLINE tt_delay::tt_delay(float max_ms)					// Constructor - FLOAT ARGUMENT: SPECIFY IN MS
 {
 long max = long(max_ms * m_sr);
 init(max);
 }
 
 // Internal method which is called by the constructors
 TT_INLINE void tt_delay::init(long max_samples)
 {			
 short i;
 
 buffer = in_ptr = out_ptr = end_ptr = 0;
 output[0] = output[1] = output[2] = output[3] = 0;		
 
 mem_free(buffer);
 buffer = (tt_sample_value *)mem_alloc((max_samples + 4) * sizeof(tt_sample_value));
 
 in_ptr = buffer;
 delay_samples_max = max_samples;
 delay_ms_max = delay_samples_max / m_sr;
 //log_post("INIT: delay_ms_max: %f    delay_samps_max: %i", delay_ms_max, delay_samples_max);			
 set_attr(k_delay_samples, max_samples - 1);
 set_attr(k_interpolation, k_interpolation_linear);
 for(i=0;i<4;i++)
 output[i] = 0;
 
 reset();
 }
 
 
 TT_INLINE tt_delay::~tt_delay()										// Destructor
 {
 mem_free(buffer);
 }
 
 */

TTDelay::~TTDelay()
{
//	free(lastInput);
//	free(lastOutput);
}


TTErr TTDelay::updateMaxNumChannels()
{
/*	if(lastInput)
		free(lastInput);
	if(lastOutput)
		free(lastOutput);
	lastInput = (TTSampleValue*)malloc(sizeof(TTSampleValue) * maxNumChannels);
	lastOutput = (TTSampleValue*)malloc(sizeof(TTSampleValue) * maxNumChannels);
	clear();
	return kTTErrNone;
 */
}


TTErr TTDelay::updateSr()
{
//	TTValue	v(attrFrequency);
//	return setFrequency(v);
}


/*
 
 // OVER-RIDE THE INHERITED SET SR METHOD
 TT_INLINE 
 void tt_delay::set_sr(int value)
 {
 if(value != sr){
 sr = value;					// These first three need to be called to do the standard stuff from the base class
 r_sr = 1.0 / value;			// 	THERE SHOULD BE A MORE ELEGANT WAY OF DOING THIS, NO ?!?!?!?!?
 m_sr = (float)sr * 0.001;	//		...
 
 // This is the SR setting stuff that is specific to this object.
 //		if((m_sr * delay_ms) > delay_samples_max)
 init(long(m_sr * delay_ms));	// allocate a larger delay buffer if neccessary
 set_attr(k_delay_ms, delay_ms);		// hold the delay_length in ms constant, despite the change of sr
 }
 }
 
 */


TTErr TTDelay::clear()
{
	/*
	 float * i;
	 long j = 0;
	 
	 for(i = buffer; i< end_ptr; i++, j++)
	 //buffer[i] = 0.0;
	 buffer[j] = 0.0;
	 //*(buffer+i) = 0.0;
	 
	 */
	
	TTUInt16 channel;

	for(channel=0; channel<maxNumChannels; channel++){
//		lastInput[i] = 0;
//		lastOutput[i] = 0;
		TTSampleValue*	i;
		long			j=0;
		
		for(i = buffer[channel]; i< endPtr[channel]; i++, j++)
			//buffer[i] = 0.0;
			buffer[channel][j] = 0.0;
		//*(buffer+i) = 0.0;
		
	}

	return kTTErrNone;
}


// Reset the pointers
void TTDelay::reset()
{
	/*
	end_ptr = buffer + delay_samples;
	out_ptr = in_ptr - delay_samples;
	if(out_ptr < buffer)
		out_ptr = end_ptr + (out_ptr - buffer) + 1;
	else if(out_ptr > end_ptr)
		out_ptr = buffer + (out_ptr - end_ptr);
	
	clear();
	*/
}



/*
 // ATTRIBUTES
 TT_INLINE 
 tt_err tt_delay::set_attr(tt_selector sel, const tt_value &a)	// Set Attributes
 {
 tt_float32 val = a;
 
 switch (sel){
 case k_delay_ms:
 delay_ms = val;
 //delay_samples = clip(long(delay_ms * m_sr), long(0), delay_samples_max);
 fdelay_samples = delay_ms * m_sr;
 delay_samples = (tt_attribute_value_discrete)fdelay_samples;
 fractional_delay = fdelay_samples - delay_samples;
 break;
 case k_delay_samples:
 fdelay_samples = delay_samples = clip(long(val), long(0), delay_samples_max);
 delay_ms = (float)delay_samples * 1000.0 / (float)sr;
 fractional_delay = 0;
 break;
 case k_interpolation:
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
 else
 log_error("tt_delay: invalid interpolation mode specified");
 break;
 default:
 return TT_ERR_ATTR_INVALID;
 }
 reset();
 return TT_ERR_NONE;
 }
 */




// DSP LOOPS

TTErr TTDelay::processAudioNoInterpolation(TTAudioSignal& in, TTAudioSignal& out)
{
	TTUInt16		vs;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	
	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		while(vs--){			
			*inPtr[channel]++ = *inSample++;		// write the input into our buffer
			*outSample++ = *outPtr[channel]++;		// fetch the output from our buffer
			
			if(inPtr[channel] > endPtr[channel])			// wrap the pointers in the buffer, if needed
				inPtr[channel] = buffer[channel];
			if(outPtr[channel] > endPtr[channel])
				outPtr[channel] = buffer[channel];				
		}
	}
	return kTTErrNone;
}


TTErr TTDelay::processAudioLinearInterpolation(TTAudioSignal& in, TTAudioSignal& out)
{
	/*
	 float temp;
	 tt_sample_value *next;
	 
	 temp_vs = in->vectorsize;
	 while(temp_vs--){
	 *in_ptr = *in->vector++;		// Store Input
	 
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
	 *out->vector++ = (temp * (1.0 - fractional_delay)) + (*out_ptr * fractional_delay);
	 }
	 in->reset(); out->reset();
	 */
	return kTTErrNone;
}


TTErr TTDelay::processAudioCubicInterpolation(TTAudioSignal& in, TTAudioSignal& out)
{
	// see http://crca.ucsd.edu/~msp/techniques/latest/book-html/node114.html
	// see http://crca.ucsd.edu/~msp/techniques/latest/book-html/node31.html#tab02.1
	
	return kTTErrNone;
}



// Process with a delay time set by a signal
TTErr TTDelay::processAudioNoInterpolationWithDelaySignal(TTAudioSignal& in, TTAudioSignal& delayIn, TTAudioSignal& out, TTAudioSignal&)
{
	/*	temp_vs = in->vectorsize;
	 
	 // CALCULATE THE DELAY TIME
	 delay_ms = *in2->vector;		// Because this is the Lo-Fi loop, just do this at the vector...
	 fdelay_samples = delay_ms * m_sr;
	 delay_samples = (tt_attribute_value_discrete)fdelay_samples;
	 fractional_delay = fdelay_samples - delay_samples;
	 
	 while(temp_vs--){
	 *in_ptr++ = *in->vector++;		// Store Input
	 *out->vector++ = *out_ptr++;	// Find Output
	 
	 if(in_ptr > end_ptr)	// Buffer Managment...
	 in_ptr = buffer;
	 if(out_ptr > end_ptr)
	 out_ptr = buffer;	
	 }
	 in->reset(); in2->reset(); out->reset();
	 */
	return kTTErrNone;
}


TTErr TTDelay::processAudioLinearInterpolationWithDelaySignal(TTAudioSignal& in, TTAudioSignal& delayIn, TTAudioSignal& out, TTAudioSignal&)
{
/*
 tt_sample_value	temp;
 tt_sample_value	*next;
 
 if(buffer == NULL)
 return;
 
 temp_vs = in1->vectorsize;
 while(temp_vs--){
 *in_ptr = *in1->vector++;		// Store the audio input @ the record head
 delay_ms = *in2->vector++;		// Store the delay time input
 //		delay_ms = clip(*in2->vector++, 0.f, delay_ms_max);		// Store the delay time input
 
 // CALCULATE THE DELAY TIME
 // delay_samples = clip(long(delay_ms * m_sr), long(0), delay_samples_max);
 //		delay_samples = delay_ms * m_sr;
 fdelay_samples = delay_ms * m_sr;
 delay_samples = (tt_attribute_value_discrete)fdelay_samples;
 fractional_delay = fdelay_samples - delay_samples;
 
 //		end_ptr = buffer + delay_samples;					// set pointer to the end of the buffer
 
 // MOVE THE RECORD HEAD
 in_ptr++;
 if(in_ptr > end_ptr)
 in_ptr = buffer;
 //		*in_ptr = *in1->vector++;		// Store the audio input @ the record head
 
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
 *out->vector++ = (temp * (1.0 - fractional_delay)) + (*out_ptr * fractional_delay);
 }
 in1->reset(); in2->reset(); out->reset();
 //log_post("delay_signal_ms: %f, samples: %f (%i)", delay_ms, fdelay_samples, delay_samples);
 */
	return kTTErrNone;
}


TTErr TTDelay::processAudioCubicInterpolationWithDelaySignal(TTAudioSignal& in, TTAudioSignal& delayIn, TTAudioSignal& out, TTAudioSignal&)
{
	return kTTErrNone;
}



