/*
 *******************************************************
 *		RAMP GENERATOR
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_RAMP_H
#define TT_RAMP_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_ramp:public tt_audio_base{

	private:
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_ramp::*function_ptr_0in_1out)(tt_audio_signal *);
		function_ptr_0in_1out dsp_executor;	
	
		tt_attribute_value_discrete	mode;					// mode: sample_accurate or vector_accurate
		tt_attribute_value 			ramp_ms;				// ramp time in milliseconds
		long						ramp_samps;				// ramp time in samples
		tt_sample_value				current;				// 
		tt_sample_value				destination;			// 
		double						step;					// 
		bool						direction;				// 0 = ramp up, 1 = ramp down
	
	
	public:
		enum selectors{								// Attribute Selectors
			k_current_value,
			k_destination_value,
			k_ramp_ms,
			k_ramp_samps,
			k_mode,
			k_mode_sample_accurate,
			k_mode_vector_accurate,
		};
		

		// OBJECT LIFE					
		tt_ramp()									// Constructor		
		{
			current = 0;
			destination = 0;
			step = 0;
			set_attr(k_mode, k_mode_vector_accurate);
			direction = 0;
		}

		~tt_ramp()									// Destructor
		{
			;
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){
				case k_mode:
					mode = (tt_attribute_value_discrete)val;
					init();
					break;
				case k_current_value:
					current = val;
					break;
				case k_destination_value:
					destination = val;
					break;
				case k_ramp_ms:
					if((val <= 0 + anti_denormal_value) && (val >= 0 - anti_denormal_value)){
						step = 0;
						current = destination;
						direction = 0;
						init();
						return;
					}
					ramp_ms = val;
					ramp_samps = long((ramp_ms * 0.001) * sr);
					set_step();
					
					init();
					break;
				case k_ramp_samps:
					if(val == 0){
						step = 0;
						current = destination;
						direction = 0;
						init();
						return;
					}				
					ramp_samps = long(val);
					ramp_ms = 1000.0 * (ramp_samps / float(sr));
					set_step();
					init();
					break;
			}
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch (sel){
				case k_current_value:
					return current;
				case k_destination_value:
					return destination;
				case k_ramp_ms:
					return ramp_ms;
				case k_ramp_samps:
					return tt_attribute_value(ramp_samps);
				default:
					return 0.0;
			}
		}
		
		

		// halt the ramp
		void stop()
		{
			step = 0;	
		}
		
		
		// DSP LOOP
		// Publically exposed interface for the dsp routine
		void dsp_vector_calc(tt_audio_signal *out)
		{
			(*this.*dsp_executor)(out);	// Run the function pointed to by our function pointer
		}
	private:	
		// DSP LOOP - SAMPLE ACCURATE - UP
		void dsp_vector_calc_sa_up(tt_audio_signal *out)
		{
			temp_vs = out->vectorsize;
			while(temp_vs--){
				if(step){
					current += step;
					if(current >= destination){
						step = 0;
						current = destination; // clamp
					}
				}
				*out->vector++ = current;	
			}
			out->reset();
		}

		// DSP LOOP - SAMPLE ACCURATE - DOWN
		void dsp_vector_calc_sa_down(tt_audio_signal *out)
		{
			temp_vs = out->vectorsize;
			while(temp_vs--){
				if(step){
					current += step;
					if(current <= destination){
						step = 0;
						current = destination; // clamp
					}
				}
				*out->vector++ = current;	
			}
			out->reset();
		}

		// DSP LOOP - VECTOR ACCURATE - UP
		void dsp_vector_calc_va_up(tt_audio_signal *out)
		{
			if(step){
				current += (step * out->vectorsize);
				if(current >= destination){
					step = 0;
					current = destination;	// clamp
				}
			}
			*out->vector++ = current;	
			out->reset();
		}

		// DSP LOOP - VECTOR ACCURATE - DOWN
		void dsp_vector_calc_va_down(tt_audio_signal *out)
		{
			if(step){
				current += (step * out->vectorsize);
				if(current <= destination){
					step = 0;
					current = destination;	// clamp
				}
			}
			*out->vector++ = current;	
			out->reset();
		}
		
		
		// INIT
		void init()
		{
			// Set the function pointers based on the attributes above
			if((mode == k_mode_sample_accurate) && (direction == 0))
				dsp_executor = &tt_ramp::dsp_vector_calc_sa_up;					
			else if((mode == k_mode_sample_accurate) && (direction == 1))
				dsp_executor = &tt_ramp::dsp_vector_calc_sa_down;					
			else if((mode == k_mode_vector_accurate) && (direction == 0))
				dsp_executor = &tt_ramp::dsp_vector_calc_va_up;					
			else
				dsp_executor = &tt_ramp::dsp_vector_calc_va_down;
		}
	
		// private function needed for setting attr
		void set_step()					
		{
			step = (destination - current) / double(ramp_samps);
			direction = (step < 0);
		}
		

};


#endif	// tt_RAMP_H