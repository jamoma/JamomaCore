/*
 *******************************************************
 *		OFFSET A VECTOR (ADD A CONSTANT)
 *******************************************************
 *		TT Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_OFFSET_H
#define TT_OFFSET_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_offset:public tt_audio_base{

	private:
		tt_attribute_value		offset_value;
		
	public:
		enum selectors{								
			k_offset_value,								// Attribute Selectors
		};

		tt_offset(void);					// Constructor		
		~tt_offset(void);					// Destructor
		
		// ATTRIBUTES
		tt_err 		set_attr(tt_selector sel, const tt_value &val);
		tt_err		get_attr(tt_selector sel, tt_value &value);
				
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);
};

#endif // TT_OFFSET_H
