#include "tt_phasor.h"


// OBJECT LIFE					
tt_phasor::tt_phasor()									// Constructor		
{
	current = 0;
	step = 0;
	gain = 1.0;
}

tt_phasor::~tt_phasor()								// Destructor
{
	;
}


// OVER-RIDE THE INHERITED SET SR METHOD
TT_INLINE void tt_phasor::set_sr(int value)
{
	if(value != sr){
		sr = value;					// These first three need to be called to do the standard stuff from the base class
		r_sr = 1.0 / value;			// 	THERE SHOULD BE A MORE ELEGANT WAY OF DOING THIS, NO ?!?!?!?!?
		m_sr = (float)sr * 0.001;	//		...
	
		// This is the SR setting stuff that is specific to this object.
		set_attr(k_frequency, frequency);		// set our step size (etc)
	}
}


// ATTRIBUTES
TT_INLINE void tt_phasor::set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
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
				ramp_samps = long((1.0 / frequency) * sr);
				ramp_ms = 1000.0 * (ramp_samps / float(sr));
			}
			break;
		case k_ramp_ms:
			ramp_ms = val;
			ramp_samps = long((ramp_ms * 0.001) * sr);
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

TT_INLINE tt_attribute_value tt_phasor::get_attr(tt_selector sel)				// Get Attributes
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
TT_INLINE void tt_phasor::dsp_vector_calc(tt_audio_signal *out)
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
