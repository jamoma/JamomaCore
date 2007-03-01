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

		tt_err 		set_attr(tt_selector sel, const tt_atom &val)
		{return TT_ERR_NONE;}
		tt_err		get_attr(tt_selector sel, tt_atom &value)
		{return TT_ERR_NONE;}
		
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


