/*
 *******************************************************
 *		2ND ORDER BUTTERWORTH BANDPASS FILTER
 *		based on an algorithm from Dodge & Jerse (1997): 
 * 		Computer Music Synthesis, Composition, and Performance 2nd edition
 *		Schirmer
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2007 by Trond Lossius
 *
 */

// Check against redundant including
#ifndef TT_BANDPASS_BUTTERWORTH_H
#define TT_BANDPASS_BUTTERWORTH_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_bandpass_butterworth:public tt_audio_base{

	private:
		tt_attribute_value 		resonance;						// filter resonance
		tt_attribute_value		frequency;						// center frequency
		double					c, a0, a2, b1, b2;				// filter coefficients
		double					xm1, xm2, ym1, ym2;				// previous input and output samples
		double 					f, fb;
	
	
	public:
		enum selectors{															
			k_frequency,										// Attribute Selectors
			k_resonance
		};
		

		// OBJECT LIFE					
		tt_bandpass_butterworth()								// Constructor		
		{
			set_attr(k_frequency, 440.0);
			set_attr(k_resonance, 100.);
			clear();
		}

		~tt_bandpass_butterworth()								// Destructor
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
		
			// calculations					
			float bw = frequency/resonance;
			c = 1. / tan( PI*(bw/sr) );
			d = 2. * cos( 2*PI*(frequency/sr) );
			a0 = 1. / (1. + c);
			// a1 = 0.
			a2 = -a0;
			b1 = -1. * a0 * c * d;
			b2 = a0 * (c - 1.);
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
				*output->vector++ = a0*tem + a2*xm2 - b1*ym1 - b2*ym2;
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


#endif	// TT_BANDPASS_BUTTERWORTH_H