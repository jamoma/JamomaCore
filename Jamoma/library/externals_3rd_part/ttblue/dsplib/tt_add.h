/*
 *******************************************************
 *		VECTOR ADDITION
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_ADD_H
#define TT_ADD_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_add:public tt_audio_base{

	private:
		
	public:
		tt_add(void)	// Constructor		
		{
			;
		}

		~tt_add(void)		// Destructor
		{
			;
		}
		
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out)
		{
			temp_vs = in1->vectorsize;
			while(temp_vs--)
				*out->vector++ = (*in1->vector++) + (*in2->vector++);
			in1->reset(); in2->reset(); out->reset();
		}
};

#endif // TT_ADD_H
