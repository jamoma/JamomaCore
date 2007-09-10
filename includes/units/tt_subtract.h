/*
 *******************************************************
 *		VECTOR SUBTRACTION
 *******************************************************
 *		TT Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_SUBTRACT_H
#define TT_SUBTRACT_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_subtract:public tt_audio_base{

	private:
		
	public:
		tt_subtract(void);	// Constructor		
		~tt_subtract(void);		// Destructor
		
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out);
};

#endif // TT_SUBTRACT_H
