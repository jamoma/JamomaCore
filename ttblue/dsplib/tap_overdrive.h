/*
 *******************************************************
 *		OVERDRIVE / SOFT SATURATION
 *		waveshaping object which uses the equation 
 *		y = 1 - (1 - x)^n (positive quadrant only) 
 *		to shape the input signal.
 *******************************************************
 *		taptools_audio object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TAP_OVERDRIVE_H
#define TAP_OVERDRIVE_H

// Include appropriate headers
#include "taptools_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tap_overdrive:public taptools_audio{

	private:
		tt_attribute_value 	drive;
	
	
	public:
		enum selectors{								
			k_drive									// Attribute Selectors
		};
		

		// OBJECT LIFE					
		tap_overdrive()								// Constructor		
		{
			set_attr(k_drive, 3.0);	
		}

		~tap_overdrive()								// Destructor
		{
			;
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){			
				case k_drive:
					drive = clip(val, float(1.0), float(10.0));
					break;
			}
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch (sel){
				case k_drive:
					return drive;
				default:
					return 0.0;
			}
		}
		
		
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
		{
			tt_sample_value temp;
			temp_vs = in->vectorsize;
			
			while(temp_vs--){
				temp = *in->vector++;

				float sign = 1.0;
				
				// the equation only works in the positive quadrant...
				// so we strip off the sign, apply the equation, and reapply the sign
				if (temp < 0.0) {
					temp = -temp;
					sign = -1.0;
				}
				
				if (temp > 1.0){		// clip signal if it's out of range
					*out->vector++ = clip(temp * sign, float(-1.0), float(1.0));
				}
				else{
					*out->vector++ = sign * (1.0 - exp(drive * log(1.0 - temp)));
				}
			}
			in->reset(); out->reset();
		}

};


#endif	// TAP_OVERDRIVE_H