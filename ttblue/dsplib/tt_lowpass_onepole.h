/*
 *******************************************************
 *		ONE POLE LOWPASS FILTER
 *******************************************************
 *		taptools_audio object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TAP_LOWPASS_ONEPOLE_H
#define TAP_LOWPASS_ONEPOLE_H

// Include appropriate headers
#include "taptools_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tap_lowpass_onepole:public taptools_audio{

	private:
		// int	sr;									*** Inherited: Holds local sample rate
		tt_attribute_value 	coefficient;
		tt_attribute_value	frequency;
		double				feedback;	
	
	
	public:
		// void set_sr(int);						*** Inherited: Sets local sample rate
		// int get_sr();							*** Inherited: Retrieves local sample rate
		// void set_global_sr(int);					*** Inherited: Sets global sample rate
		// int get_global_sr();						*** Inherited: Retrieves global sample rate

		enum selectors{								// Attribute Selectors
			k_coefficient,
			k_frequency
		};
		

		// OBJECT LIFE					
		tap_lowpass_onepole()			// Constructor		
		{
			set_attr(k_frequency, 5000.0);
			clear();
		}

		~tap_lowpass_onepole()							// Destructor
		{
			;
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			double radians;

			switch (sel){			
				case k_frequency:
					frequency = val;
					radians = hertz_to_radians(frequency);
					coefficient = clip(radians / pi, 0.0, 1.0);			
					break;
				case k_coefficient:
					coefficient = val;
					break;
			}
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch (sel){
				case k_frequency:
					return frequency;
				case k_coefficient:
					return coefficient;
				default:
					return 0.0;
			}
		}
		
		
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
		{
			temp_vs = in->vectorsize;
			while(temp_vs--){
				*out->vector++ = feedback = (*in->vector++ * coefficient) + (feedback * (1 - coefficient));
			}
			in->reset(); out->reset();
		}

		// ADDITIONAL METHODS *******************************************************

		// clear
		void clear()
		{
			feedback = 0.0;	
		}
		
		// set sample-rate (override the inherited method)
		void set_sr(int	value)
		{
			sr = value;
			r_sr = 1.0 / value;
			m_sr = sr * 0.001;
			
			set_attr(k_frequency, frequency);
		}		
};


#endif	// TAP_LOWPASS_ONEPOLE_H