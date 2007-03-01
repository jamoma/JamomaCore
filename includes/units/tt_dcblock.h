/*
 *******************************************************
 *		DC OFFSET FILTER/BLOCKER
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_DCBLOCK_H
#define TT_DCBLOCK_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE/
 ********************************************************/

class tt_dcblock:public tt_audio_base{
	private:
		double	 	last_input1;
		double		last_output1;
		double	 	last_input2;
		double		last_output2;
	
	public:
		tt_dcblock();				// Constructor		
		~tt_dcblock();				// Destructor
		
		tt_err set_attr(tt_selector sel, const tt_atom &val)	// Set Attributes
		{return TT_ERR_NONE;}
		tt_err get_attr(tt_selector sel, tt_atom &val)			// Get Attributes
		{return TT_ERR_NONE;}
		
		// DSP LOOP
		// Note: an algorithm that is frequently used in Max:
		//		"biquad~ 1.0 -1.0 -0.9997 0.0"
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);
		// DSP LOOP - STEREO
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2);

		// METHOD: clear
		void clear();
};

#endif	// TT_DCBLOCK_H
