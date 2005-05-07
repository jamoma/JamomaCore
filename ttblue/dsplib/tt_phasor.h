/*
 *******************************************************
 *		CYCLING RAMP GENERATOR
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_PHASOR_H
#define TT_PHASOR_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_phasor:public tt_audio_base{

	private:
		tt_attribute_value		frequency;				// define the ramp time cycle in hertz
		tt_attribute_value 		ramp_ms;				// ramp time in milliseconds
		long					ramp_samps;				// ramp time in samples
		tt_attribute_value		gain;

		tt_sample_value			current;				// 
		double					step;					// 		
	
	public:
		enum selectors{								// Attribute Selectors
			k_ramp_ms,
			k_ramp_samps,
			k_frequency,
			k_phase,
			k_gain,
			k_gain_direct,
		};
		

		// OBJECT LIFE					
		tt_phasor()								// Constructor		
		{
			current = 0;
			step = 0;
			gain = 1.0;
		}

		~tt_phasor()								// Destructor
		{
			;
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){
				case k_phase:
					current = val;
					break;
				case k_frequency:
					frequency = val;
					if(frequency == 0){
						ramp_samps = 1;
						ramp_ms = 0;
					}
					else{
						ramp_samps = (1.0 / frequency) * sr;
						ramp_ms = 1000.0 * (ramp_samps / float(sr));
					}
					break;
				case k_ramp_ms:
					ramp_ms = val;
					ramp_samps = (ramp_ms * 0.001) * sr;
					frequency = 1 / (ramp_samps / float(sr));
					break;
				case k_ramp_samps:
					ramp_samps = long(val);
					ramp_ms = 1000.0 * (ramp_samps / float(sr));
					frequency = 1 / (ramp_samps / float(sr));
					break;
				case k_gain:
					gain = decibels_to_amplitude(val);
					break;
				case k_gain_direct:
					gain = val;
			}
			step = 1.0 / double(ramp_samps);	// 1.0 is the destination
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch (sel){
				case k_phase:
					return current;
				case k_frequency:
					return frequency;
				case k_ramp_ms:
					return ramp_ms;
				case k_ramp_samps:
					return tt_attribute_value(ramp_samps);
				case k_gain:
					return amplitude_to_decibels(gain);
				case k_gain_direct:
					return gain;
				default:
					return 0.0;
			}
		}
		
		
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *out)
		{
			temp_vs = out->vectorsize;
			while(temp_vs--){
				current += step;
				if(current >= 1.0)
					current -= 1.0;
				else if(current < 0.0)
					current += 1.0;
				*out->vector++ = current * gain;	
			}
			out->reset();
		}
};


#endif	// tt_PHASOR_H