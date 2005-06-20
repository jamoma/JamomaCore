/*
 *******************************************************
 *		GAIN MODIFIER
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_GAIN_H
#define TT_GAIN_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_gain:public tt_audio_base{

	private:
		// int	sr;											*** Inherited: Holds local sample rate
		tt_attribute_value		gain;
			
		
	public:
		// void set_sr(int);								*** Inherited: Sets local sample rate
		// int get_sr();									*** Inherited: Retrieves local sample rate
		// void set_global_sr(int);							*** Inherited: Sets global sample rate
		// int get_global_sr();								*** Inherited: Retrieves global sample rate
		
		enum selectors{										// Attribute Selectors
			k_gain,
			k_gain_direct,
		};
		
		// OBJECT LIFE					
		tt_gain(void)										// Constructor		
		{
			gain = 1.0;
		}

		~tt_gain(void)										// Destructor
		{
			;
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){
				case k_gain:
					gain = decibels_to_amplitude(val);
					break;
				case k_gain_direct:
					gain = val;
					break;
			}
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch (sel){
				case k_gain:
					return amplitude_to_decibels(gain);
				case k_gain_direct:
					return gain;
			}
			return 0.0;
		}
				
		
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
		{
			temp_vs = in->vectorsize;
			while(temp_vs--)
				*out->vector++ = (*in->vector++) * gain;
			in->reset(); out->reset();
		}
		
};

#endif // TT_GAIN_H


