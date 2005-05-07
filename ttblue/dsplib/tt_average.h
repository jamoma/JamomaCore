/*
 *******************************************************
 *		RUNNING AVERAGER
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_AVERAGE_H
#define TT_AVERAGE_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_average:public tt_audio_base{

	private:
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_average::*FuncPtr)(tt_audio_signal *, tt_audio_signal *);
		FuncPtr dsp_executor;
		
		// Attribute Values & Variables
		tt_attribute_value_discrete		interval;
		tt_attribute_value_discrete		mode;
		double 							accumulator, intervalReciprocal;
		tt_sample_value					*bins, *inBinPtr, *outBinPtr, *lastBinPtr;
	
		// Constants
		enum constants{
			MAX_AVERAGE_INTERVAL = 256
		};
	
	
	public:
		enum selectors{								
			k_mode,							// Attribute Selectors
			k_mode_bipolar,
			k_mode_absolute,
			k_mode_rms,
			k_interval,		
		};
		

		// OBJECT LIFE					
		tt_average()								// Constructor		
		{
			bins = (tt_sample_value *)mem_alloc((1 + MAX_AVERAGE_INTERVAL) * sizeof(tt_sample_value));
			set_attr(k_interval, 100);
			set_attr(k_mode, k_mode_absolute);
			clear();
		}

		~tt_average()								// Destructor
		{
			mem_free(bins);
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){
				case k_interval:
					val = clip(int(val), 1, int(MAX_AVERAGE_INTERVAL));
					interval = val;
					clear();
					break;
				case k_mode:
					mode = val;
					if(mode == k_mode_bipolar)
						dsp_executor = &tt_average::dsp_vector_calc_bipolar;
					else if(mode == k_mode_absolute)
						dsp_executor = &tt_average::dsp_vector_calc_absolute;
					else if(mode == k_mode_rms)
						dsp_executor = &tt_average::dsp_vector_calc_rms;
					break;
			}
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch (sel){
				case k_interval:
					return interval;
				case k_mode:
					return mode;
				default:
					return 0.0;
			}
		}
		
		
		// clear
		void clear()
		{
			int i;
			
			inBinPtr = bins;
			for (i = 0; i < MAX_AVERAGE_INTERVAL; i++)
				*(inBinPtr+i) = 0.0;
			
			accumulator = 0.0;
			intervalReciprocal = 1.0 / interval;
			lastBinPtr = bins + interval;
			outBinPtr = inBinPtr - interval;
			if (outBinPtr < bins)
				outBinPtr = lastBinPtr + (outBinPtr - bins) + 1;
		}


		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		
		// Publically exposed interface for this object's dsp routine
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
		{
			(*this.*dsp_executor)(in, out);	// Run the function pointed to by our function pointer
		}
	
	private:
		// DSP LOOP: BIPOLAR
		void dsp_vector_calc_bipolar(tt_audio_signal *in, tt_audio_signal *out)
		{
			temp_vs = in->vectorsize;
			while(temp_vs--){
				if (outBinPtr > lastBinPtr)
					outBinPtr = bins;
				if (inBinPtr > lastBinPtr)
					inBinPtr = bins;
				accumulator -= *outBinPtr++;
				
				accumulator += *inBinPtr++ = *in->vector++;
				*out->vector++ = accumulator * intervalReciprocal;
			}
			in->reset(); out->reset();
		}

		// DSP LOOP: ABSOLUTE
		void dsp_vector_calc_absolute(tt_audio_signal *in, tt_audio_signal *out)
		{
			temp_vs = in->vectorsize;
			while(temp_vs--){
				if (outBinPtr > lastBinPtr)
					outBinPtr = bins;
				if (inBinPtr > lastBinPtr)
					inBinPtr = bins;
				accumulator -= *outBinPtr++;
				
				accumulator += *inBinPtr++ = fabs(*in->vector++);
				*out->vector++ = accumulator * intervalReciprocal;
			}
			in->reset(); out->reset();
		}

		// DSP LOOP: RMS
		void dsp_vector_calc_rms(tt_audio_signal *in, tt_audio_signal *out)
		{
			tt_sample_value value;
			temp_vs = in->vectorsize;
			
			while(temp_vs--){
				if (outBinPtr > lastBinPtr)
					outBinPtr = bins;
				if (inBinPtr > lastBinPtr)
					inBinPtr = bins;
				accumulator -= *outBinPtr++;
				
				value = *in->vector++;
				accumulator += *inBinPtr++ = value * value;
				*out->vector++ = sqrt(accumulator * intervalReciprocal);
			}
			in->reset(); out->reset();
		}
};

#endif	// tt_AVERAGE_H