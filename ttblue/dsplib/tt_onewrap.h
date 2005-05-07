/*
 *******************************************************
 *		CHEAPER VECTOR MODULO
 *******************************************************
 *		taptools_audio object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TAP_ONEWRAP_H
#define TAP_ONEWRAP_H

// Include appropriate headers
#include "taptools_base.h"
#include <math.h>

/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tap_onewrap:public taptools_audio{

	private:
		
	public:
//		enum selectors{									// Attribute Selectors
//		};

		tap_onewrap(void)	// Constructor		
		{
			;
		}

		~tap_onewrap(void)		// Destructor
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

#endif // TAP_ONEWRAP_H


