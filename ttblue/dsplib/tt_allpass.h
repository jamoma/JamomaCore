/*
 *******************************************************
 *		ALLPASS FILTER
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_ALLPASS_H
#define TT_ALLPASS_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_allpass:public tt_audio_base{

	private:
		tt_attribute_value 	delay_ms;					// ATTRIBUTE: Delay time in milliseconds
		tt_attribute_value	gain;						// ATTRIBUTE: Gain coefficient
		tt_sample_value		*ff_buffer, *fb_buffer;		// buffers for the delays
		tt_sample_value		*ff_end_ptr, *fb_end_ptr;	// pointers to the buffer ends
		tt_sample_value		*ff_in_ptr, *fb_in_ptr;		// write pointers
		tt_sample_value		*ff_out_ptr, *fb_out_ptr;	// read pointers
		long				delay_samples_max;			// size of the delay buffers
		float				delay_ms_max;				// ...
		long				delay_samples;				// Delay time in samples (internal)	
		
	
	public:
		enum selectors{									// Attribute Selectors				
			k_delay_ms,
			k_gain
		};
		

		// OBJECT LIFE
		tt_allpass(tt_attribute_value milliseconds)	// Constructor
		{
			init(milliseconds);
			set_attr(k_delay_ms, 0.0);
			set_attr(k_gain, 0.0);
		}

		~tt_allpass()									// Destructor
		{
			mem_free(ff_buffer);
			mem_free(fb_buffer);
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){			
				case k_delay_ms:
					delay_ms = clip(val, float(0.0), delay_ms_max);
					delay_samples = delay_ms * (sr / 1000.0);
					ff_end_ptr = ff_buffer + delay_samples;
					fb_end_ptr = fb_buffer + delay_samples;	
					break;
				case k_gain:
					gain = val;
					break;
			}
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
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
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
		{
			tt_sample_value temp;
			temp_vs = in->vectorsize;
			
			while(temp_vs--){
				temp = *in->vector++;	// Input	
				*ff_in_ptr = temp;		// Store the input in the feedforward buffer
					
				// Apply the filter
				temp = (*ff_out_ptr) + (temp * (-gain)) + (*fb_out_ptr * gain);	
				
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
		void init(tt_attribute_value milliseconds)
		{
			delay_ms_max = milliseconds;
			delay_samples_max = delay_ms_max * (sr / 1000.0);
			mem_free(ff_buffer);
			mem_free(fb_buffer);
			ff_buffer = (tt_sample_value *)mem_alloc(delay_samples_max * sizeof(tt_sample_value));
			fb_buffer = (tt_sample_value *)mem_alloc(delay_samples_max * sizeof(tt_sample_value));
			clear();
		}


		// clear
		void clear()
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
		void set_sr(int	value)
		{
			sr = value;
			r_sr = 1.0 / value;
			m_sr = sr * 0.001;
			
			set_attr(k_delay_ms, delay_ms);
		}
};


#endif	// tt_ALLPASS_H