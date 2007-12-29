/*
 *******************************************************
 *		2ND ORDER BUTTERWORTH HIGHPASS FILTER
 *		based on an algorithm from Dodge & Jerse (1997): 
 * 		Computer Music Synthesis, Composition, and Performance 2nd edition
 *		Schirmer
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2007 by Trond Lossius
 *
 */

// Check against redundant including
#ifndef TT_HIGHPASS_BUTTERWORTH_H
#define TT_HIGHPASS_BUTTERWORTH_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_highpass_butterworth:public tt_audio_base{

	private:
		tt_attribute_value		frequency;						// filter cutoff frequency
		double					c, a0, a1, a2, b1, b2;			// filter coefficients
		double					xm1, xm2, ym1, ym2;				// previous input and output samples
		double 					f, fb;
	
	
	public:
		enum selectors{															
			k_frequency											// Attribute Selectors
		};
		

		// OBJECT LIFE					
		tt_highpass_butterworth()								// Constructor		
		{
			set_attr(k_frequency, 200.0);	
			clear();
		}

		~tt_highpass_butterworth()								// Destructor
		{
			;
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){			
				case k_frequency:
					frequency = val;
					
					// calculations					
					c = tan( PI*(cutoff/x->sr ) );
					a0 = 1 / (1 + sqrt2*c + c*c);
					a1 = -2*a0;
					a2 = a0;
					b1 = 2*a0*( c*c - 1 );
					b2 = a0 * (1 - sqrt2*c + c*c);									
					break;
			}
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
				*output->vector++ = a0*tem + a1*xm1 + a2*xm2 - b1*ym1 - b2*ym2;
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


#endif	// TT_HIGHPASS_BUTTERWORTH_H