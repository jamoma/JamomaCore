/*
 *******************************************************
 *		ZERO CROSSING DETECTOR / COUNTER
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_ZEROX_H
#define TT_ZEROX_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_zerox:public tt_audio_base{

	private:
		tt_attribute_value_discrete 	analysis_samps;				// analysis period in samples
		double							r_analysis_samps;			// reciprocal of analysis size
		bool							last_samp_was_over_zero;	// was the last sample over zero?
		long							counter;					// counts zero-crossings
		tt_sample_value					final_count;
		long							analysis_location;			// keep track of how many samples so far
	
	public:
		enum selectors{									// Attribute Selectors
			k_analysis_size,
		};
		

		// OBJECT LIFE					
		tt_zerox()										// Constructor		
		{
			set_attr(k_analysis_size, 2000);
			clear();
		}

		~tt_zerox()									// Destructor
		{
			;
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){
				case k_analysis_size:
					analysis_samps = (tt_attribute_value_discrete)val;
					r_analysis_samps = 1.0 / val;
					break;
			}
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch (sel){
				case k_analysis_size:
					return tt_attribute_value(analysis_samps);
				default:
					return 0.0;
			}
		}
		
		
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out1, tt_audio_signal *out2)
		{
			bool this_samp_is_over_zero;
			bool zerox_occured;
			temp_vs = in->vectorsize;
			
			while(temp_vs--){
				//val = *in++;
				this_samp_is_over_zero = (0 < (*in->vector++));
				zerox_occured = last_samp_was_over_zero != this_samp_is_over_zero;
				last_samp_was_over_zero = this_samp_is_over_zero;

				counter += zerox_occured;
				analysis_location++;
				
				if(analysis_location >= analysis_samps){
					final_count = ((sr * counter) * r_analysis_samps) * r_sr;
//					final_count = ((sr * counter) * r_analysis_samps) / float(sr);
					analysis_location = 0;
					counter = 0;
				}

				*out1->vector++ = final_count;
				*out2->vector++ = zerox_occured;
			}
			in->reset(); out1->reset(); out2->reset();
		}


		// clear
		void clear()
		{
			last_samp_was_over_zero = 0;
			counter = 0;
			final_count = 0;
			analysis_location = 0;
		}

		
};


#endif	// TT_ZEROX_H