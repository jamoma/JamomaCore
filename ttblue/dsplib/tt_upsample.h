/*
 *******************************************************
 *		UPSAMPLE A SIGNAL - USE WHEN A SIGNAL HAS BEEN 
 *		DOWNSAMPLED AND NEEDS TO BE RECONSTITUTED
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_UPSAMPLE_H
#define TT_UPSAMPLE_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_upsample:public tt_audio_base{

	private:
		tt_attribute_value_discrete 	factor;			// should be a power of 2
	
	public:
		enum selectors{									// Attribute Selectors
			k_factor,
		};
		

		// OBJECT LIFE					
		tt_upsample()									// Constructor		
		{
			set_attr(k_factor, 1);						// default: no upsampling
		}

		~tt_upsample()									// Destructor
		{
			;
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value_discrete val)	// Set Attributes
		{
			switch (sel){
				case k_factor:
					factor = val;
					break;
			}
		}

		tt_attribute_value_discrete get_attr(tt_selector sel)			// Get Attributes
		{
			switch (sel){
				case k_factor:
					return factor;
				default:
					return 0.0;
			}
		}
		
		
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
		{
			short			up_size;
			tt_sample_value	temp;
			temp_vs = out->vectorsize / factor;

			while(temp_vs--){
				up_size = factor;
				temp = *in->vector++;
				
				while(up_size--){
					*out->vector++ = temp;
				}
			}
			in->reset(); out->reset();
		}

		// DSP LOOP - STEREO
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, 
			tt_audio_signal *out1, tt_audio_signal *out2)
		{
			short			up_size;
			tt_sample_value	temp1, temp2;
			temp_vs = out1->vectorsize / factor;

			while(temp_vs--){
				up_size = factor;
				temp1 = *in1->vector++;
				temp2 = *in2->vector++;
				
				while(up_size--){
					*out1->vector++ = temp1;
					*out2->vector++ = temp2;
				}
			}
			in1->reset(); in2->reset(); out1->reset(); out2->reset();
		}

};


#endif	// tt_UPSAMPLE_H