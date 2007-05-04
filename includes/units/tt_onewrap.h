/*
 *******************************************************
 *		CHEAPER VECTOR MODULO
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_ONEWRAP_H
#define TT_ONEWRAP_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"
#include <math.h>


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_onewrap:public tt_audio_base{

	private:
		
	public:
		enum selector{									// Attribute Selectors
		};

		tt_onewrap(void);										// Constructor		
		~tt_onewrap(void);										// Destructor

		// ATTRIBUTES
		tt_err 		set_attr(tt_selector sel, const tt_value &val);
		tt_err		get_attr(tt_selector sel, tt_value &value);
		
		// DSP LOOP - ARGUMENT IS A CONSTANT
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);
};

#endif // TT_ONEWRAP_H
