/*
 *******************************************************
 *		VECTOR ADDITION
 *******************************************************
 *		taptools_audio object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TAP_ADD_H
#define TAP_ADD_H

// Include appropriate headers
#include "taptools_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tap_add:public taptools_audio{

	private:
		
	public:
		tap_add(void)	// Constructor		
		{
			;
		}

		~tap_add(void)		// Destructor
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

#endif // TAP_ADD_H
