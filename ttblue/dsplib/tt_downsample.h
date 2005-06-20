/*
 *******************************************************
 *		DOWNSAMPLE A SIGNAL - REDUCES VECTOR SIZE
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_DOWNSAMPLE_H
#define TT_DOWNSAMPLE_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_downsample:public tt_audio_base{

	private:
		tt_attribute_value_discrete 	factor;				// should be a power of 2
	
	public:
		enum selectors{										// Attribute Selectors
			k_factor,
		};
		

		// OBJECT LIFE					
		tt_downsample()									// Constructor		
		{
			set_attr(k_factor, 1);							// default: no upsampling
		}

		~tt_downsample()									// Destructor
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
		
		
		// DSP LOOP - MONO
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
		{
			tt_sample_value	temp;
			short			down_size;

			temp_vs = in->vectorsize;			
			while(temp_vs){
				down_size = factor;
				
				while(down_size--){				// simple SAH technique
					temp = *(in->vector++);
				}
				*(out->vector++) = temp;
				temp_vs -= factor;
			}
			in->reset(); out->reset();
		}

		// DSP LOOP - STEREO
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2)
		{
			tt_sample_value	temp1, temp2;
			short			down_size;

			temp_vs = in1->vectorsize;			
			while(temp_vs){
				down_size = factor;
				
				while(down_size--){				// simple SAH technique
					temp1 = *(in1->vector++);
					temp2 = *(in2->vector++);
				}
				*(out1->vector++) = temp1;
				*(out2->vector++) = temp2;
				temp_vs -= factor;
			}
			in1->reset(); in2->reset(); out1->reset(); out2->reset();
		}
};


#endif	// TT_DOWNSAMPLE_H