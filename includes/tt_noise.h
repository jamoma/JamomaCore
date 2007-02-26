/*
 *******************************************************
 *		NOISE GENERATOR
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_NOISE_H
#define TT_NOISE_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_noise:public tt_audio_base{

	private:
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_noise::*FuncPtr)(tt_audio_signal *);
		FuncPtr dsp_executor;

		// Attribute Values & Variables
		tt_attribute_value_discrete 	mode;
		long							noise_accum;
		tt_sample_value 				b0, b1, b2, b3, b4, b5, b6; // for the "pinking" filter

	
	public:
		enum selectors{									// Attribute Selectors
			k_mode,
			k_mode_white,
			k_mode_pink,
			k_mode_brown,
			k_mode_blue
		};
		

		// OBJECT LIFE					
		tt_noise()										// Constructor		
		{
			// set defaults
			set_attr(k_mode, k_mode_white);
			b0 = b1 = b2 = b3 = b4 = b5 = b6 = noise_accum = 0;
		}

		~tt_noise()									// Destructor
		{
			;
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){
				case k_mode:
					mode = (tt_attribute_value_discrete)val;
					if(mode == k_mode_white)
						dsp_executor = &tt_noise::dsp_vector_calc_white;
					else if(mode == k_mode_pink)
						dsp_executor = &tt_noise::dsp_vector_calc_pink;
					else if(mode == k_mode_brown)
						dsp_executor = &tt_noise::dsp_vector_calc_brown;
					else if(mode == k_mode_blue)
						dsp_executor = &tt_noise::dsp_vector_calc_blue;
					break;
			}
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch (sel){
				case k_mode:
					return mode;
				default:
					return 0.0;	// really should make this throw and exception (applies to all objects)!
			}
		}
		
		
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		
		// Publically exposed interface for this object's dsp routine
		void dsp_vector_calc(tt_audio_signal *out)
		{
			(*this.*dsp_executor)(out);	// Run the function pointed to by our function pointer
		}
	
	private:
		// DSP LOOP: WHITE
		void dsp_vector_calc_white(tt_audio_signal *out)
		{
			temp_vs = out->vectorsize;
		    while (temp_vs--){
				// Generate white noise
				noise_accum = (noise_accum * 3877 + 29573) % 139968;	// Random number generator
				*out->vector++ = 1.0 - (2.0 * float(noise_accum) / 139968);		// Scale to audio range
		    }
			out->reset();
		}		

		// DSP LOOP: PINK
		void dsp_vector_calc_pink(tt_audio_signal *out)
		{
			tt_sample_value temp;
			temp_vs = out->vectorsize;
			
		    while (temp_vs--){
				// Generate white noise
				noise_accum = (noise_accum * 3877 + 29573) % 139968;	// Random number generator
				temp = 1.0 - (2.0 * float(noise_accum) / 139968);		// Scale to audio range

				// Pinking Filter
				b0 = 0.99886 * b0 + temp * 0.0555179;
				b1 = 0.99332 * b1 + temp * 0.0750759; 
				b2 = 0.96900 * b2 + temp * 0.1538520; 
				b3 = 0.86650 * b3 + temp * 0.3104856; 
				b4 = 0.55000 * b4 + temp * 0.5329522; 
				b5 = -0.7616 * b5 - temp * 0.0168980; 
				b6 = temp * 0.115926;
				temp = b0 + b1 + b2 + b3 + b4 + b5 + b6 + temp * 0.5362; 

				*out->vector++ = temp * 0.1;
		    }
			out->reset();
		}		

		// DSP LOOP: BROWN
		void dsp_vector_calc_brown(tt_audio_signal *out)
		{
			tt_sample_value temp;
			temp_vs = out->vectorsize;
			
		    while(temp_vs--){
				// Generate white noise
				noise_accum = (noise_accum * 3877 + 29573) % 139968;	// Random number generator
				temp = 1.0 - (2.0 * float(noise_accum) / 139968);		// Scale to audio range

				// "Browning" Filter
				temp = temp * 0.1;									// scale the white noise			
				temp = clip(b1 + temp, float(-1.0), float(1.0));	// 6dB per octave lowpass
				b1 = temp;											// store Feedback Sample
				*out->vector++ = temp * 0.25;						// output	
		    }
			out->reset();
		}		

		// DSP LOOP: BLUE
		void dsp_vector_calc_blue(tt_audio_signal *out)
		{
			tt_sample_value temp;
			temp_vs = out->vectorsize;
			
		    while (temp_vs--){
				// Generate white noise
				noise_accum = (noise_accum * 3877 + 29573) % 139968;	// Random number generator
				temp = 1.0 - (2.0 * float(noise_accum) / 139968);		// Scale to audio range

				// "Blue-ing" Filter
				temp = temp - b1;									// 6dB per octave highpass (real blue noise = 3dB/oct)
				temp = clip(temp, float(-1.0), float(1.0));			// clip 
				*out->vector++ = temp;								// output
				b1 = temp;											// store feedback sample
		    }
			out->reset();
		}		

};


#endif		// TT_NOISE_H