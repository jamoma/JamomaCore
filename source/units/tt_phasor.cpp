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
TT_INLINE 
void tt_phasor::set_sr(int value)
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
TT_INLINE 
tt_err tt_phasor::set_attr(tt_selector sel, const tt_atom &val)	// Set Attributes
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
			ramp_samps = val;
			ramp_ms = 1000.0 * (ramp_samps / float(sr));
			frequency = 1 / (ramp_samps / float(sr));
			break;
		case k_gain:
			gain = val;
			gain = decibels_to_amplitude(gain);
			break;
		case k_gain_direct:
			gain = val;
		default:
			return TT_ERR_ATTR_INVALID;	// really should make this throw and exception (applies to all objects)!
	}
	step = 1.0 / double(ramp_samps);	// 1.0 is the destination
	return TT_ERR_NONE;
}

TT_INLINE 
tt_err tt_phasor::get_attr(tt_selector sel, tt_atom &a)				// Get Attributes
{
	switch (sel){
		case k_phase:
			a = current;
			break;
		case k_frequency:
			a = frequency;
			break;
		case k_ramp_ms:
			a = ramp_ms;
			break;
		case k_ramp_samps:
			a = tt_attribute_value(ramp_samps);
			break;
		case k_gain:
			a = amplitude_to_decibels(gain);
			break;
		case k_gain_direct:
			a = gain;
			break;
		default:
			return TT_ERR_ATTR_INVALID;	// really should make this throw and exception (applies to all objects)!
	}
	return TT_ERR_NONE;
}


// DSP LOOP
TT_INLINE 
void tt_phasor::dsp_vector_calc(tt_audio_signal *out)
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
