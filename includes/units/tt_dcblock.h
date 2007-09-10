/*
 *******************************************************
 *		DC OFFSET FILTER/BLOCKER
 *******************************************************
 *		TT Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_DCBLOCK_H
#define TT_DCBLOCK_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_bundle.h"


/********************************************************
	CLASS INTERFACE/
 ********************************************************/

class tt_dcblock:public tt_audio_base{
	private:
		double	 	last_input[TT_MAX_NUM_CHANNELS];
		double		last_output[TT_MAX_NUM_CHANNELS];
	
	public:
		tt_dcblock();				// Constructor		
		~tt_dcblock();				// Destructor
		
		tt_err set_attr(tt_selector sel, const tt_value &val);	// Set Attributes
		tt_err get_attr(tt_selector sel, tt_value &val);			// Get Attributes
		
		// DSP LOOP - an algorithm that is frequently used in Max:
		//		"biquad~ 1.0 -1.0 -0.9997 0.0"
		void process(tt_audio_bundle *in, tt_audio_bundle *out);

		// METHOD: clear
		void clear();
};

#endif	// TT_DCBLOCK_H
