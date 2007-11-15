/*
 *******************************************************
 *		DEGRADE
 *		sample-rate and bit-depth reduction 
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_DEGRADE_H
#define TT_DEGRADE_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

#define BIG_INT	0x00800000
#define ONE_OVER_BIG_INT 1.1920928955E-7

class tt_degrade:public tt_audio_base{

	private:
		tt_attribute_value_discrete 	bitdepth;
		tt_attribute_value				sr_ratio;
		short							bit_shift;
		float							accumulator;
		tt_sample_value					output;
	
	public:
		enum selectors{								
			k_bitdepth,								// Attribute Selectors
			k_sr_ratio
		};
		

		// OBJECT LIFE					
		tt_degrade()								// Constructor		
		{
			set_attr(k_bitdepth, 24);
			set_attr(k_sr_ratio, 1.0);
			accumulator = 0.0;
			output = 0.0;
		}

		~tt_degrade()								// Destructor
		{
			;
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){			
				case k_bitdepth:
					bitdepth = clip(int(val), 1, 24);
					bit_shift = 24 - bitdepth;
					break;
				case k_sr_ratio:
					sr_ratio = val;
					break;
			}
		}

		tt_attribute_value get_attr(tt_selector sel)			// Get Attributes
		{
			switch (sel){
				case k_bitdepth:
					return bitdepth;
				case k_sr_ratio:
					return sr_ratio;
				default:
					return 0.0;
			}
		}
		
		
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
		{
			long l;
			temp_vs = in->vectorsize;
			
			while(temp_vs--){
				// SR Reduction
				accumulator += sr_ratio;
				if (accumulator >= 1.0){
					output = *in->vector++;
					accumulator -= 1.0;
				}
				
				// Bit Depth Reduction
				l = long(output * BIG_INT);				// change float to long int
				l >>= bit_shift;						// shift away the least-significant bits
				l <<= bit_shift;						// shift back to the correct registers
				*out->vector++ = (float) l * ONE_OVER_BIG_INT;	// back to float
			}
			in->reset(); out->reset();
		}

};


#endif	// tt_DEGRADE_H