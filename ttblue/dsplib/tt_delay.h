/*
 *******************************************************
 *		DELAY UNIT
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_DELAY_H
#define TT_DELAY_H

// Include appropriate headers
#include "tt_audio_base.h"

/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_delay:public tt_audio_base{

	private:
		// Function pointers for the DSP Loops (use this instead of branching for speed)
		typedef void (tt_delay::*function_ptr_1in_1out)(tt_audio_signal *, tt_audio_signal *);
		typedef void (tt_delay::*function_ptr_2in_1out)(tt_audio_signal *, tt_audio_signal *, tt_audio_signal *);
		function_ptr_1in_1out		dsp_executor;
		function_ptr_2in_1out		dsp_executor2;

		// ATTRIBUTES & VARIABLES
		tt_attribute_value				delay_ms;			// in milliseconds
		tt_attribute_value				delay_ms_max;
		tt_attribute_value_discrete		delay_samples;
		tt_attribute_value_discrete		delay_samples_max;
		tt_attribute_value_discrete		interpolation;
		double							fractional_delay;	// used in interpolated dsp loops
		double 							fdelay_samples;

		tt_sample_vector				buffer;
		tt_sample_vector				in_ptr;				// "write" pointer for buffer
		tt_sample_vector				out_ptr;			// "read" pointer
		tt_sample_vector				end_ptr;			// points to last sample in buffer (for speed)

		tt_sample_value					output[4];		
	
	public:
		enum selectors{										// Attribute Selectors
			k_delay_ms,
			k_delay_samples,
			k_interpolation,
				k_interpolation_none,
				k_interpolation_linear,
				k_interpolation_linear2,
				k_interpolation_polynomial,
				k_interpolation_polynomial2,
		};
		

		// OBJECT LIFE					
		tt_delay(long max)						// Constructor - INT ARGUMENT: SPECIFY IN SAMPLES
		{
			init(max);
		}

		tt_delay(float max_ms)					// Constructor - FLOAT ARGUMENT: SPECIFY IN MS
		{
			long max = long(max_ms * m_sr);
			init(max);
		}

		// Internal method which is called by the constructors
		void init(long max_samples)
		{			
			short i;
			
			buffer = in_ptr = out_ptr = end_ptr = 0;
			output[0] = output[1] = output[2] = output[3] = 0;		
		
			mem_free(buffer);
			buffer = (tt_sample_value *)mem_alloc((max_samples + 4) * sizeof(tt_sample_value));
			
			in_ptr = buffer;
			delay_samples_max = max_samples;
			delay_ms_max = delay_samples_max / m_sr;
			//post("INIT: delay_ms_max: %f    delay_samps_max: %i", delay_ms_max, delay_samples_max);			
			set_attr(k_delay_samples, max_samples - 1);
			set_attr(k_interpolation, k_interpolation_linear);
			for(i=0;i<4;i++)
				output[i] = 0;
					
			reset();
		}


		~tt_delay()										// Destructor
		{
			mem_free(buffer);
		}
		
		
		// OVER-RIDE THE INHERITED SET SR METHOD
		void set_sr(int value)
		{
			if(value != sr){
				sr = value;					// These first three need to be called to do the standard stuff from the base class
				r_sr = 1.0 / value;			// 	THERE SHOULD BE A MORE ELEGANT WAY OF DOING THIS, NO ?!?!?!?!?
				m_sr = (float)sr * 0.001;	//		...
			
				// This is the SR setting stuff that is specific to this object.
//				if((m_sr * delay_ms) > delay_samples_max)
					init(long(m_sr * delay_ms));	// allocate a larger delay buffer if neccessary
				set_attr(k_delay_ms, delay_ms);		// hold the delay_length in ms constant, despite the change of sr
			}
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
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
					log_error("tt_delay: invalid attribute specified for set_attr()");
					break;
			}
			reset();
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch (sel){
				case k_delay_ms:
					return delay_ms;
				case k_delay_samples:
					return tt_attribute_value(delay_samples);
				case k_interpolation:
					return interpolation;
				default:
					log_error("tt_delay: invalid attribute specified for get_attr()");				
					return 0.0;
			}
		}
		
		
		
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		
		// Publically exposed interface for CONTROL RATE triggered dsp routine
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
		{
			(*this.*dsp_executor)(in, out);	// Run the function pointed to by our function pointer
		}
	
		// Publically exposed interface for AUDIO RATE delay dsp routine
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out)
		{
			(*this.*dsp_executor2)(in1, in2, out);	// Run the function pointed to by our function pointer
		}

	private:
		// DSP LOOP - NO INTERPOLATION
		void dsp_vector_calc_nointerp(tt_audio_signal *in, tt_audio_signal *out)
		{
			temp_vs = in->vectorsize;
		    while(temp_vs--){
				*in_ptr++ = *in->vector++;		// Store Input
				*out->vector++ = *out_ptr++;	// Find Output
				
				if(in_ptr > end_ptr)	// Buffer Managment...
					in_ptr = buffer;
				if(out_ptr > end_ptr)
					out_ptr = buffer;	
		    }
		    in->reset(); out->reset();
		}

		// DSP LOOP - NO INTERPOLATION - SIGNAL SPEC'D DELAY TIME
		void dsp_vector_calc_nointerp_2in(tt_audio_signal *in, tt_audio_signal *in2, tt_audio_signal *out)
		{
			temp_vs = in->vectorsize;

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
		}


		// DSP LOOP - LINEAR INTERPOLATION
		void dsp_vector_calc_linear(tt_audio_signal *in, tt_audio_signal *out)
		{
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
		}


		// DSP LOOP - DELAY TIME IS A SIGNAL (LINEAR INTERPOLATION)
		// Note: A modulated delay is essentially a resampling process. This means that when we resample we need the 
		//	values that are "between" the buffer indices - thus we interpolate to find them (not between output indices).
		void dsp_vector_calc_linear_2in(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out)
		{
			tt_sample_value	temp;
			tt_sample_value	*next;
			
			if(buffer == NULL)
				return;
			
			temp_vs = in1->vectorsize;
		    while(temp_vs--){
				*in_ptr = *in1->vector++;		// Store the audio input @ the record head
				delay_ms = *in2->vector++;		// Store the delay time input
//				delay_ms = clip(*in2->vector++, 0.f, delay_ms_max);		// Store the delay time input
				
				// CALCULATE THE DELAY TIME
				// delay_samples = clip(long(delay_ms * m_sr), long(0), delay_samples_max);
//				delay_samples = delay_ms * m_sr;
				fdelay_samples = delay_ms * m_sr;
				delay_samples = (tt_attribute_value_discrete)fdelay_samples;
				fractional_delay = fdelay_samples - delay_samples;

//				end_ptr = buffer + delay_samples;					// set pointer to the end of the buffer

				// MOVE THE RECORD HEAD
				in_ptr++;
				if(in_ptr > end_ptr)
					in_ptr = buffer;
//				*in_ptr = *in1->vector++;		// Store the audio input @ the record head
					
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
		}

/*
		// DSP LOOP - DELAY TIME IS A SIGNAL (POLYNOMIAL INTERPOLATION)
		void dsp_vector_calc_poly_2in(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out)
		{
			//sample_value temp;
			double fdelay_samples;
			short i;
			
			temp_vs = in1->vectorsize;
		    while(temp_vs--){
				*in_ptr = *in1->vector++;		// Store the Audio Input			
				delay_ms = *in2->vector++;		// Store the Delay Time Input
				
				// MOVE THE RECORD HEAD
				in_ptr++;
				if(in_ptr > end_ptr)
					in_ptr = buffer;

				// CALCULATE THE DELAY TIME
				fdelay_samples = delay_ms * m_sr;
				delay_samples = fdelay_samples;
				fractional_delay = fdelay_samples - delay_samples;

				// STORE THE PLAY HEAD VALUE
				//temp = *out_ptr;
					
				// MOVE THE PLAY HEAD
				out_ptr = in_ptr - delay_samples;
				if(out_ptr > end_ptr)
					out_ptr = buffer + (out_ptr - end_ptr);
				else if(out_ptr < buffer)
					out_ptr = end_ptr + (out_ptr - buffer) + 1;
				
				
				
				// shift the past outputs
				for(i=0; i<3; i++)
					output[i] = output[i+1];
				// store the latest resolved sample
				output[3] = *out_ptr;	
				
				// Interpolate between the play head value (from above) and the next play head value
				// *out++ = (temp * (1.0 - fractional_delay)) + (*out_ptr * fractional_delay);
				*out->vector++ = interpolation_polynomial(output[0], output[1], output[2], output[3]);
		    }
		    in1->reset(); in2->reset(); out->reset();
		}
		

		// polynomial interpolation
		// taken straight from Hal Chamberlin, page 517
		tt_sample_value interpolation_polynomial(tt_sample_value y0, tt_sample_value y1, tt_sample_value y2, tt_sample_value y3)
		{
			tt_sample_value	yu;
			float	x0 = fractional_delay - 1;
			float	x1 = x1 -1;
			float	xu = 0;
			float	x2 = fractional_delay;
			float	x3 = fractional_delay + 1;
			
			yu =  -0.1666667 * y0 * ((xu - x1) * (xu - x2) * (xu - x3))
				 + 0.5 		 * y1 * ((xu - x0) * (xu - x2) * (xu - x3))
				 - 0.5		 * y2 * ((xu - x0) * (xu - x1) * (xu - x3))
				 + 0.1666667 * y3 * ((xu - x0) * (xu - x1) * (xu - x2));
			
			return(yu);
		}
*/		
		
		
		// Reset the pointers
		void reset()
		{
			end_ptr = buffer + delay_samples;
			out_ptr = in_ptr - delay_samples;
			if(out_ptr < buffer)
				out_ptr = end_ptr + (out_ptr - buffer) + 1;
			else if(out_ptr > end_ptr)
				out_ptr = buffer + (out_ptr - end_ptr);
				
			clear();
		}
		
		
	public:	
		// clear
		void clear(void)
		{
			float * i;
			long j = 0;
						
			for(i = buffer; i< end_ptr; i++, j++)
				//buffer[i] = 0.0;
				buffer[j] = 0.0;
				//*(buffer+i) = 0.0;
		}

			
};

#endif		// TT_DELAY_H