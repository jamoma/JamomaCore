/*
 *******************************************************
 *		APPLY A WINDOW FROM A BUFFER
 *******************************************************
 *		taptools_audio object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TAP_BUFFER_WINDOW_H
#define TAP_BUFFER_WINDOW_H

// Include appropriate headers
#include "taptools_base.h"
#include "tap_buffer.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tap_buffer_window:public taptools_audio{

	private:
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tap_buffer_window::*FuncPtr)(tt_audio_signal *, tt_audio_signal *, tt_audio_signal *);
		FuncPtr dsp_executor;
		
		// Attribute Values
		tt_attribute_value_discrete 	mode;
		tt_attribute_value				gain;
		tap_buffer						*wavetable;
	
	public:
		enum selectors{										// Attribute Selectors
			k_mode,
			k_mode_normalized,
			k_mode_normalized_fast,
		};
		

		// OBJECT LIFE					
		tap_buffer_window(tap_buffer *mybuffer)				// Constructor - BUFFER ARG
		{
			// set defaults
			set_attr(k_mode, k_mode_normalized);
			wavetable = 0;
			set_buffer(mybuffer);
		}

		~tap_buffer_window()								// Destructor
		{
			;
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){
				case k_mode:	// mode sets a function pointer to the correct dsp loop
					mode = val;
					if(mode == k_mode_normalized)
						dsp_executor = &tap_buffer_window::dsp_vector_calc_normalized;
					else if(mode == k_mode_normalized_fast)
						dsp_executor = &tap_buffer_window::dsp_vector_calc_normalized_fast;
					break;
			}
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch (sel){
				case k_mode:
					return mode;
				default:
					return 0.0;
			}
		}


		// METHODS
		void set_buffer(tap_buffer *mybuffer)	// Set Buffer
		{
			wavetable = mybuffer;	
		}

		tap_buffer *get_buffer()				// Get Buffer
		{
			return wavetable;
		}
		

		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		
		// Publically exposed interface for this object's dsp routine
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out)
		{
			(*this.*dsp_executor)(in1, in2, out);
		}

	private:
		// DSP LOOP: input is the location from 0 to 1
		void dsp_vector_calc_normalized(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out)
		{
			int p1, p2;
			double diff;
			double index;
			
			temp_vs = in1->vectorsize;						
		    while(temp_vs--){
				// locate the play head, range check
				index = *in1->vector++ * wavetable->length_samples;
								
				// table lookup (linear interpolation)	
				p1 = index;
				p2 = p1 + 1;
				diff = index - p1;	
				p2 &= ((wavetable->length_samples) - 1);	// fast modulo
										
		    	*out->vector++ = *in2->vector++ * ((wavetable->contents[p2] * diff) + (wavetable->contents[p1] * (1.0 - diff)));
		    }
		    in1->reset(); in2->reset(); out->reset();
		}
		
		// DSP LOOP: input is the location from 0 to 1, NO INTERPOLATION, NO RANGE CHECK
		//	in1: index
		//	in2: signal to scale
		//	out: output
		void dsp_vector_calc_normalized_fast(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out)
		{
			long index;
			temp_vs = in1->vectorsize;						
		    while(temp_vs--){
				// locate the play head, range check
				index = *in1->vector++ * wavetable->length_samples;				
		    	*out->vector++ = *in2->vector++ * wavetable->contents[index];
		    }
		    in1->reset(); in2->reset(); out->reset();
		}
};

#endif	// TAP_BUFFER_WINDOW_H