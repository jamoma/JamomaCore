/*
 *******************************************************
 *		CHEAPER VECTOR MODULO
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_ONEWRAP_H
#define TT_ONEWRAP_H

// Include appropriate headers
#include "tt_audio_base.h"
#include <math.h>

/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_onewrap:public tt_audio_base{

	private:
		
	public:
//		enum selectors{									// Attribute Selectors
//		};

		tt_onewrap(void)	// Constructor		
		{
			;
		}

		~tt_onewrap(void)		// Destructor
		{
			;
		}


		// ATTRIBUTES
//		void set_attr(selector sel, attribute_value val)								// Set Attributes
//		{
//			;
//		}

		
//		attribute_value get_attr(selector sel)							// Get Attributes
//		{
//			;
//		}
		


		// DSP LOOP - ARGUMENT IS A CONSTANT
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
		{
			tt_sample_value temp;
			temp_vs = in->vectorsize;
			
			while(temp_vs--){
				//*out++ = onewrap(*in++, 0.0f, 1.0f);
				temp = *in->vector++;
				if(temp >= 1.0)
					temp -= 1.0;
				else if(temp < 0.0)
					temp += 1.0;
				*out->vector++ = temp;
			}
			in->reset(); out->reset();
		}
		
};

#endif // TT_ONEWRAP_H


