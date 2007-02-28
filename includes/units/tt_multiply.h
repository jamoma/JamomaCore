/*
 *******************************************************
 *		VECTOR MULTIPLIER
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_MULTIPLY_H
#define TT_MULTIPLY_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_multiply:public tt_audio_base{

	private:
		
	public:
		tt_multiply(void)	// Constructor		
		{
			;
		}

		~tt_multiply(void)		// Destructor
		{
			;
		}

		void set_attr(tt_selector sel, tt_attribute_value val)		// Set Attributes
		{;}
		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{;}
		
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out)
		{
			temp_vs = in1->vectorsize;
			while(temp_vs--)
				*out->vector++ = (*in1->vector++) * (*in2->vector++);
			in1->reset(); in2->reset(); out->reset();
		}
};

#endif // TT_MULTIPLY_H


