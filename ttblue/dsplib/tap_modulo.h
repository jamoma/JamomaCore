/*
 *******************************************************
 *		VECTOR MODULO
 *******************************************************
 *		taptools_audio object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TAP_MODULO_H
#define TAP_MODULO_H

// Include appropriate headers
#include "taptools_base.h"
#include <math.h>

/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tap_modulo:public taptools_audio{

	private:
		tt_attribute_value		argument;
		
	public:
		enum selectors{									// Attribute Selectors
			k_modulo_argument,
		};

		tap_modulo(void)	// Constructor		
		{
			set_attr(k_modulo_argument, 1.0);
		}

		~tap_modulo(void)		// Destructor
		{
			;
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)			// Set Attributes
		{
			switch (sel){
				case k_modulo_argument:
					argument = val;
					// NOTE: SHOULD CHECK TO SEE IF THE VALUE IS A POWER OF TWO - THEN CAN OPTIMIZE
					//	BY DOING BITAND INSTEAD OF A MATHEMATICAL MODULO
					break;
			}
		}

		
		tt_attribute_value get_attr(tt_selector sel)					// Get Attributes
		{
			switch(sel){
				case k_modulo_argument:
					return argument;
				default:
					return 0;
			}
		}
		


		// DSP LOOP - ARGUMENT IS A CONSTANT
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
		{
			temp_vs = in->vectorsize;
			while(temp_vs--)
				*out->vector++ = fmod(*in->vector++, argument);
				//*out++ = *in++ & argument;
//p2 &= ((wavetable->length_samples) - 1);	// fast modulo
			in->reset(); out->reset();
		}
		
		// DSP LOOP - ARGUMENT IS A SIGNAL
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out)
		{
			temp_vs = in1->vectorsize;
			while(temp_vs--)
				*out++ = fmod(*in1->vector++, *in2->vector++);
			in1->reset(); in2->reset(); out->reset();
		}
};

#endif // TAP_MODULO_H


