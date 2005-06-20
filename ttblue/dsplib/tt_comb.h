/*
 *******************************************************
 *		IIR COMB FILTER
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_COMB_H
#define TT_COMB_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_comb:public tt_audio_base{

	private:
		// int				sr;								*** Inherited: Holds local sample rate
		tt_sample_vector	memory, memwriteptr, alloc;		// Internal Stuff for the comb filter
		//float 			delaysize;
		long 				delay;
		float 				msdelay;
		float 				comb_fb_coef;
	
		tt_attribute_value 		lowpass_feedback;			// lowpass filter parameters
		tt_attribute_value 		lowpass_coef;
		tt_attribute_value		lowpass_frequency;
		tt_attribute_value 		decay;						// comb filter parameters
		tt_attribute_value		clipping;
		tt_attribute_value		buffersize;
		long 					buffersize_in_samples;
	
	
	public:
		// void set_sr(int);							*** Inherited: Sets local sample rate
		// int get_sr();								*** Inherited: Retrieves local sample rate
		// void set_global_sr(int);						*** Inherited: Sets global sample rate
		// int get_global_sr();							*** Inherited: Retrieves global sample rate

		enum selectors{									// Attribute Selectors
			k_feedback,
			k_clip,
			k_delay,
			k_delay_static,
			k_decay,
			k_cutoff_frequency,
			k_buffersize,
		};
		

		// OBJECT LIFE					
		tt_comb(tt_attribute_value arg)				// Constructor		
		{
			long i;
			alloc = memwriteptr = memory = 0;
			buffersize = arg > 24 ? arg : 25;		// init the size of the delay buffer - minimum is 25
		
			// ALLOCATE MEMORY BUFFER
			buffersize_in_samples = buffersize * (sr * 0.001);
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

		~tt_comb(void)							// Destructor
		{
			mem_free(alloc);
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			double radians;
			
			switch (sel){
				case k_cutoff_frequency:
					lowpass_frequency = val;
					radians = hertz_to_radians(lowpass_frequency);
					lowpass_coef = clip(radians / pi, 0.0, 1.0);			
					break;
				case k_feedback:
					comb_fb_coef = val;
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
			}
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch (sel){
				case k_cutoff_frequency:
					return lowpass_frequency;
				case k_feedback:
					return comb_fb_coef;
				case k_clip:
					return clipping;
				case k_delay:
					return msdelay;
				case k_decay:
					return decay;
				default:
					return 0.0;
			}
		}
		
		
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
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
				comb_fb_sample = (comb_fb_sample * lowpass_coef) + (lowpass_feedback * (1 - lowpass_coef)); 
				lowpass_feedback = comb_fb_sample;
			
				// CLIPPING
				if (clipping != 0)
					comb_fb_sample = clip(comb_fb_sample, clipping * -1, clipping);
			
				// CALCULATION & OUTPUT
				*out->vector++ = *memwriteptr++ = *in->vector++ + (comb_fb_coef * comb_fb_sample);
			
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
		void clear()
		{
			long i;
			for (i=0; i<(buffersize_in_samples + 4); i++) 
				alloc[i] = 0.0;
			lowpass_feedback = 0.0;	
		}
		
		// set sample-rate (override the inherited method)
		void set_sr(int	value)
		{
			sr = value;
			r_sr = 1.0 / value;
			m_sr = sr * 0.001;
			
			set_attr(k_cutoff_frequency, 	lowpass_frequency);
			set_attr(k_delay, 				msdelay);
		}		

		
};


#endif		// TT_COMB_H