/*
 *******************************************************
 *		OFFSET A VECTOR (ADD A CONSTANT)
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_OFFSET_H
#define TT_OFFSET_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_offset:public tt_audio_base{

	private:
		tt_attribute_value		offset_value;
		
	public:
		enum selectors{								
			k_offset_value,								// Attribute Selectors
		};

		tt_offset(void)					// Constructor		
		{
			set_attr(k_offset_value, 0.0);
		}

		~tt_offset(void)					// Destructor
		{
			;
		}
		
		
		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){			
				case k_offset_value:
					offset_value = val;
					break;
			}
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch (sel){
				case k_offset_value:
					return offset_value;
				default:
					return 0.0;
			}
		}
				
		
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
		{
			temp_vs = in->vectorsize;
			while(temp_vs--)
				*out->vector++ = *in->vector++ + offset_value;
			in->reset(); out->reset();
		}
};

#endif // TT_OFFSET_H


