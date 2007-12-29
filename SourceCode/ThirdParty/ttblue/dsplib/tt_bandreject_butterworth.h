/*
 *******************************************************
 *		2ND ORDER BUTTERWORTH BANDREJECT FILTER
 *		based on an algorithm from Dodge & Jerse (1997): 
 * 		Computer Music Synthesis, Composition, and Performance 2nd edition
 *		Schirmer
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2007 by Trond Lossius
 *
 */

// Check against redundant including
#ifndef TT_BANDREJECT_BUTTERWORTH_H
#define TT_BANDREJECT_BUTTERWORTH_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_bandreject_butterworth:public tt_audio_base{

	private:
		tt_attribute_value 		resonance;						// filter resonance
		tt_attribute_value		frequency;						// center frequency
		double					c, d, bw, a0, a1, a2, b1, b2;	// filter coefficients
		double					xm1, xm2, ym1, ym2;				// previous input and output samples
		double 					f, fb;
	
	
	public:
		enum selectors{															
			k_frequency,
			k_resonance											// Attribute Selectors
		};
		

		// OBJECT LIFE					
		tt_bandreject_butterworth()								// Constructor		
		{
			set_attr(k_frequency, 440.0);
			set_attr(k_resonance, 100.)	
			clear();
		}

		~tt_bandreject_butterworth()							// Destructor
		{
			;
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){			
				case k_frequency:
					frequency = val;
					break;				
				case k_resonance:
					resonance = val;
					// Avoid dividing by zero
					if (resonance<=0)
						resonance = 1;
					break;				
			}
				
			bw = center/resonance;
			c = tan( PI*(bw/x->sr) );
			d = 2.0 * cos( 2.0*PI*(center/sr) );
			a0 = 1.0 / (1.0 + c);
			a1 = -1.0 * a0 * d;
			a2 = a0;
			b1 = a1;
			b2 = a0 * (1.0 - c);
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch (sel){
				case k_frequency:
					return frequency;
				default:
					return 0.0;
			}
		}
		
		
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *input, tt_audio_signal *output)
		{
			tt_sample_value temp;
			temp_vs = input->vectorsize;
			
			while(temp_vs--){
				temp = *input->vector++;
				*output->vector++ = anti_denormal(a0*tem + a1*xm1 + a2*xm2 - b1*ym1 - b2*ym2);
				xm2 = xm1;
				xm1 = temp:
				ym2 = ym1:
				ym1 = *output;
			}
			input->reset(); output->reset();
		}


		// clear
		void clear()
		{		
			xm1 = 0;
			xm2 = 0;
			ym1 = 0;
			ym2 = 0;
		}
		
};


#endif	// TT_BANDREJECT_BUTTERWORTH_H