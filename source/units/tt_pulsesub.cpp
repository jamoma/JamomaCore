#include "tt_pulsesub.h"


// OBJECT LIFE ************************************************************
tt_pulsesub::tt_pulsesub()										// Constructor		
{
	short i;
	for(i=0; i < k_num_temp_signals; i++)
		temp[i] = new tt_audio_signal(vectorsize);		// allocate temp signals
	
	env_gen = new tt_adsr;
	phasor = new tt_phasor;
	offset = new tt_offset;
	scaler = new tt_multiply;
		
	// Default Settings
	// set_attr(k_ratio, 1.0);
	// set_attr(k_windowsize, 87.0);
}

tt_pulsesub::~tt_pulsesub()									// Destructor
{
	short i;

	delete offset;
	delete phasor;
	delete env_gen;
	delete scaler;

	// FREE THE TEMP SIGNALS
	for(i=0; i<k_num_temp_signals; i++)
		delete temp[i];
}


// ATTRIBUTES ************************************************************
TT_INLINE 
tt_err tt_pulsesub::set_attr(tt_selector sel, const tt_value &a)	// Set Attributes
{
	tt_float32 val = a;
	
	switch(sel){
		case k_attack:
			env_gen->set_attr(tt_adsr::k_attack, val);
			break;
		case k_decay:
			env_gen->set_attr(tt_adsr::k_decay, val);
			break;
		case k_sustain:
			env_gen->set_attr(tt_adsr::k_sustain_db, val);
			break;
		case k_release:
			env_gen->set_attr(tt_adsr::k_release, val);
			break;
		case k_mode:
			if(val == k_mode_exponential)
				env_gen->set_attr(tt_adsr::k_mode, tt_adsr::k_mode_exponential);
			else
				env_gen->set_attr(tt_adsr::k_mode, tt_adsr::k_mode_linear);
			break;
		case k_frequency:
			phasor->set_attr(tt_phasor::k_frequency, val);
			break;
		case k_length:
			offset->set_attr(tt_offset::k_offset_value, val - 0.5);
			break;
		default:
			return TT_ERR_ATTR_INVALID;	// really should make this throw and exception (applies to all objects)!
	}
	return TT_ERR_NONE;
}

TT_INLINE 
tt_err tt_pulsesub::get_attr(tt_selector sel, tt_value &a)				// Get Attributes
{
	switch(sel){
		case k_attack:
			env_gen->get_attr(tt_adsr::k_attack, a);
			break;
		case k_decay:
			env_gen->get_attr(tt_adsr::k_decay, a);
			break;
		case k_sustain:
			env_gen->get_attr(tt_adsr::k_sustain_db, a);
			break;
		case k_release:
			env_gen->get_attr(tt_adsr::k_release, a);
			break;
		case k_mode:
			{
				env_gen->get_attr(tt_adsr::k_mode, a);
//				if(tempsel == tt_adsr::k_mode_linear)
//					a = k_mode_linear;
//				else
//					a = k_mode_exponential;
			}
			break;
		case k_frequency:
			phasor->get_attr(tt_phasor::k_frequency, a);
			break;
		case k_length:
			offset->get_attr(tt_offset::k_offset_value, a);
			break;
		default:
			return TT_ERR_ATTR_INVALID;	// really should make this throw and exception (applies to all objects)!
	}
	return TT_ERR_NONE;
}


TT_INLINE 
void tt_pulsesub::set_trigger(bool value)
{
	env_gen->set_trigger(value);
}

/*****************************************************
 * DSP LOOPS
 *****************************************************/
// Because this is a meta-object, it is the user of this object who is responsible for making sure that
//	the vectorsize of the signals are the same as that of this object.

// Publically exposed interface for this object's dsp routine
TT_INLINE void tt_pulsesub::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	phasor->dsp_vector_calc(temp[0]);			// ramp wave, stored in a temporary vector
	offset->dsp_vector_calc(temp[0], temp[1]);	// offset the ramp wave, effectively altering the duty cycle
	env_gen->dsp_vector_calc(temp[1], temp[0]);	// generate the envelope, reusing the temp[0] vector
	scaler->dsp_vector_calc(in, temp[0], out);	// apply the envelope to the input vector
}


// set sample-rate (override the inherited method)
TT_INLINE void tt_pulsesub::set_sr(int	value)
{
	if(value != sr){
		sr = value;
		r_sr = 1.0 / value;
		m_sr = sr * 0.001;
		
		phasor->set_sr(sr);
		offset->set_sr(sr);
		env_gen->set_sr(sr);
		scaler->set_sr(sr);
	}
}

// set the vector size (override the inherited method)
TT_INLINE void tt_pulsesub::set_vectorsize(int value)
{
	short i;
	if(value != vectorsize){
		vectorsize = value;

		phasor->set_vectorsize(vectorsize);
		offset->set_vectorsize(vectorsize);
		env_gen->set_vectorsize(vectorsize);
		scaler->set_vectorsize(vectorsize);

		// RESIZE THE TEMP SIGNALS
		for(i=0; i<k_num_temp_signals; i++)
			temp[i]->alloc(vectorsize);
	}
}
