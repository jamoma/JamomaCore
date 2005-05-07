/*
 *******************************************************
 *		RMS AVERAGER
 *******************************************************
 *		taptools_audio object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TAP_RMS_H
#define TAP_RMS_H

// Include appropriate headers
#include "taptools_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tap_rms:public taptools_audio{

	private:
		// int	sr;									*** Inherited: Holds local sample rate
		tt_attribute_value 	coefficient;
		double				feedback;	
	
	public:
		// void set_sr(int);						*** Inherited: Sets local sample rate
		// int get_sr();							*** Inherited: Retrieves local sample rate
		// void set_global_sr(int);					*** Inherited: Sets global sample rate
		// int get_global_sr();						*** Inherited: Retrieves global sample rate

		enum selectors{								// Attribute Selectors
			k_feedback_coefficient,
		};
		

		// OBJECT LIFE					
		tap_rms()				// Constructor		
		{
			coefficient = 0.9;
		}

		~tap_rms()				// Destructor
		{
			;
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){
				case k_feedback_coefficient:
					coefficient = val;
					break;
			}
		}

		tt_attribute_value get_attr(tt_selector sel)			// Get Attributes
		{
			switch (sel){
				case k_feedback_coefficient:
					return coefficient;
				default:
					return 0.0;
			}
		}
		
		
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
		{
			tt_sample_value val;
			temp_vs = in->vectorsize;
			while(temp_vs--){
				val = *in->vector++;
				val = val * val;														// Square
				val = feedback = (feedback * coefficient) + (val * (1 - coefficient));	// Mean
				*out->vector++ = sqrt(val);											// Root
			}
			in->reset(); out->reset();
		}


		// clear
		void clear()
		{
			feedback = 0.0;	
		}

		
};


#endif	// TAP_RMS_H