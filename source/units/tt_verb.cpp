#include "tt_verb.h"


// OBJECT LIFE ************************************************************

#define ER_SETDELAY(x, y) temp_atom.set(0, x); temp_atom.set(1, y); early_reflections->set_attr(tt_multitap::k_delay_ms, temp_atom);
#define ER_SETGAIN(x, y) temp_atom.set(0, x); temp_atom.set(1, amplitude_to_decibels(y)); early_reflections->set_attr(tt_multitap::k_gain, temp_atom);

tt_verb::tt_verb()										// Constructor		
{
	short	i;
	tt_value	temp_atom;
	
	temp_atom.set_num_values(2);
	
	for(i=0; i < k_num_temp_signals; i++)
		temp[i] = new tt_audio_signal(vectorsize);			// allocate temp signals
	
		early_reflections = new tt_multitap(100.0f);		// 80 millisecond max delay time for early reflections
		early_reflections->set_attr(tt_multitap::k_num_taps, 18);
		early_reflections->set_attr(tt_multitap::k_master_gain, -24.0);	// Master gain for the multitap unit
		ER_SETDELAY(0, 4.3);
		ER_SETGAIN(0, 0.841);
		ER_SETDELAY(1, 21.5);
		ER_SETGAIN(1, 0.504);
		ER_SETDELAY(2, 22.5);
		ER_SETGAIN(2, 0.491);
		ER_SETDELAY(3, 26.8);
		ER_SETGAIN(3, 0.379);
		ER_SETDELAY(4, 27.0);
		ER_SETGAIN(4, 0.38);
		ER_SETDELAY(5, 29.8);
		ER_SETGAIN(5, 0.346);
		ER_SETDELAY(6, 45.8);
		ER_SETGAIN(6, 0.289);
		ER_SETDELAY(7, 48.5);
		ER_SETGAIN(7, 0.272);
		ER_SETDELAY(8, 57.2);
		ER_SETGAIN(8, 0.192);
		ER_SETDELAY(9, 58.7);
		ER_SETGAIN(9, 0.193);
		ER_SETDELAY(10, 59.5);
		ER_SETGAIN(10, 0.217);
		ER_SETDELAY(11, 61.2);
		ER_SETGAIN(11, 0.181);
		ER_SETDELAY(12, 70.7);
		ER_SETGAIN(12, 0.18);
		ER_SETDELAY(13, 70.8);
		ER_SETGAIN(13, 0.181);
		ER_SETDELAY(14, 72.6);
		ER_SETGAIN(14, 0.176);
		ER_SETDELAY(15, 74.1);
		ER_SETGAIN(15, 0.142);
		ER_SETDELAY(16, 75.3);
		ER_SETGAIN(16, 0.167);
		ER_SETDELAY(17, 79.7);
		ER_SETGAIN(17, 0.134);

		for(i=0; i<6; i++){
			comb_filters[i] = new tt_comb(200.0);	// comb filters have a max delay time of 200 ms.
			lfos[i] = new tt_lfo;					// LFOs each use the default 512 point sinewave
		}
		
		my_allpass = new tt_allpass(7.0);			// 7 millisecond max delay time
			my_allpass->set_attr(tt_allpass::k_delay_ms, 5.98);
			my_allpass->set_attr(tt_allpass::k_gain, 0.7);
			
		my_lowpass = new tt_lowpass_onepole;
		xfade = new tt_crossfade;
		
		mixer = new tt_mixer_mono;
		temp_atom.set(1, 1.0);
		for(i=0; i<7; i++){
			temp_atom.set(0, i);
			mixer->set_attr(tt_mixer_mono::k_channel_gain, temp_atom);
		}
		mixer->set_attr(tt_mixer_mono::k_master_gain, 0.125);
		master_gain = new tt_gain;
		
		// Default Settings
		set_attr(k_delay, 100.0);
		set_attr(k_decay, 3.5);
		set_attr(k_damping, 20000.0);
		set_attr(k_modfreq, 0.1);
		set_attr(k_moddepth, 0.1);
		set_attr(k_lowpass, 15000.0);
		set_attr(k_mix, 50.0);
		set_attr(k_gain, 0.0);
		use_lite_version = false;
		set_attr(k_use_early_reflections, true);
}

tt_verb::~tt_verb()									// Destructor
{
	short i;

	delete early_reflections;
	delete my_allpass;
	delete my_lowpass;
	delete xfade;
	delete master_gain;
	delete mixer;
	for(i=0; i<6; i++){
		delete comb_filters[i];
		delete lfos[i];
	}

	// FREE THE TEMP VECTORS
	for(i=0; i<k_num_temp_signals; i++)
		delete temp[i];
}


// ATTRIBUTES ************************************************************
TT_INLINE 
tt_err tt_verb::set_attr(tt_selector sel, const tt_value &a)	// Set Attributes
{
	short		i;
	tt_float32	val = a;
	
	switch(sel){
		case k_mix:
			xfade->set_attr(tt_crossfade::k_position, val * 0.01);
			break;
		case k_gain:
			master_gain->set_attr(tt_gain::k_gain, val);
			break;
		case k_delay:
			delay_time = val;
			delay_base[0] = deviate(val * 0.641027);
			delay_base[1] = deviate(val * 0.717950);
			delay_base[2] = deviate(val * 0.782052);
			delay_base[3] = deviate(val * 0.871796);
			delay_base[4] = deviate(val * 0.923078);
			delay_base[5] = deviate(val * 1.0);
			break;
		case k_decay:
			for(i=0; i<6; i++)
				comb_filters[i]->set_attr(tt_comb::k_decay, deviate(val));
			decay_time = val;
			break;
		case k_damping:
			for(i=0; i<6; i++)
				comb_filters[i]->set_attr(tt_comb::k_cutoff_frequency, val);
			damping_cf = val;
			break;
		case k_lowpass:
			my_lowpass->set_attr(tt_lowpass_onepole::k_frequency, val);
			output_cf = val;
			break;
		case k_moddepth:
			for(i=0; i<6; i++)
				lfos[i]->set_attr(tt_lfo::k_gain, deviate(amplitude_to_decibels(val)));
			moddepth = val;
			break;
		case k_modfreq:
			for(i=0; i<6; i++)
				lfos[i]->set_attr(tt_lfo::k_frequency, deviate(val));
			modfreq = val;
			break;
		case k_use_early_reflections:
			use_early_reflections = (tt_attribute_value_bool)val;
			config_dsp_pointers();	
			break;
		case k_use_lite_version:
			use_lite_version = (tt_attribute_value_bool)val;
			config_dsp_pointers();
			break;	
		default:
			return TT_ERR_ATTR_INVALID;
	}
	return TT_ERR_NONE;
}


TT_INLINE 
tt_err tt_verb::get_attr(tt_selector sel, tt_value &a)				// Get Attributes
{	
	switch(sel){
		case k_mix:
			xfade->get_attr(tt_crossfade::k_position, a);	// WRONG: It should a * 100
			break;
		case k_gain:
			master_gain->get_attr(tt_gain::k_gain, a);
			break;
		case k_delay:
			a = delay_time;
			break;
		case k_decay:
			a = decay_time;
			break;
		case k_damping:
			a = damping_cf;
			break;
		case k_lowpass:
			a = output_cf;
			break;
		case k_moddepth:
			a = moddepth;
			break;
		case k_modfreq:
			a = modfreq;
			break;
		case k_use_early_reflections:
			a = (tt_attribute_value)use_early_reflections;
			break;
		case k_use_lite_version:
			a = (tt_attribute_value)use_lite_version;
			break;
		default:
			return TT_ERR_ATTR_INVALID;
	}
	return TT_ERR_NONE;
}


/*****************************************************
 * DSP LOOPS
 *****************************************************/
// Because this is a meta-object, it is the user of this object who is responsible for making sure that
//	the vectorsize of the signals are the same as that of this object.

// Publically exposed interface for this object's dsp routine
TT_INLINE void tt_verb::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	(*this.*dsp_executor)(in, out);		// Run the function pointed to by our function pointer
}


// DSP LOOP: WITH EARLY REFLECTIONS
void tt_verb::dsp_vector_calc_normal(tt_audio_signal *in, tt_audio_signal *out)
{
	short i;
	
	// Early Reflections
	early_reflections->dsp_vector_calc(in, temp[0]);
	
	// LFOs & Comb Filters
	// Unrolling this for-loop for speed doesn't seem to make a difference - compiler must be doing this automagically
	for(i=0; i<6; i++){
		lfos[i]->dsp_vector_calc(temp[8]);														// Run the LFO
		comb_filters[i]->set_attr(tt_comb::k_delay_static, *temp[8]->vector + delay_base[i]);	// take the 1st value of the vector
		comb_filters[i]->dsp_vector_calc(temp[0], temp[i+1]);									// Comb Stage
	}
	
	// Sum the Comb Filters (1-6) and early reflections (0)
	mixer->dsp_vector_calc(temp[0], temp[1], temp[2], temp[3], temp[4], temp[5], temp[6], temp[7]);
	
	// Allpass Stage
	my_allpass->dsp_vector_calc(temp[7], temp[2]);

	// Post-Processing
	my_lowpass->dsp_vector_calc(temp[2], temp[3]);	// Final Lowpass
	xfade->dsp_vector_calc(in, temp[3], temp[4]);	// Wet-Dry Mix
	master_gain->dsp_vector_calc(temp[4], out);		// Output Gain Control
}


// DSP LOOP: NO EARLY REFLECTIONS
void tt_verb::dsp_vector_calc_no_reflections(tt_audio_signal *in, tt_audio_signal *out)
{
	short i;
	
	// LFOs & Comb Filters
	for(i=0; i<6; i++){
		lfos[i]->dsp_vector_calc(temp[8]);														// Run the LFO
		comb_filters[i]->set_attr(tt_comb::k_delay_static, *temp[8]->vector + delay_base[i]);	// take the 1st value of the vector
		comb_filters[i]->dsp_vector_calc(in, temp[i+1]);										// Comb Stage
	}
	
	// Sum the Comb Filters (1-6) to the output (7)
	mixer->dsp_vector_calc(temp[1], temp[2], temp[3], temp[4], temp[5], temp[6], temp[7]);
	
	// Allpass Stage
	my_allpass->dsp_vector_calc(temp[7], temp[2]);

	// Post-Processing
	my_lowpass->dsp_vector_calc(temp[2], temp[3]);	// Final Lowpass
	xfade->dsp_vector_calc(in, temp[3], temp[4]);	// Wet-Dry Mix
	master_gain->dsp_vector_calc(temp[4], out);		// Output Gain Control
}


// DSP LOOP: WITH EARLY REFLECTIONS **** LITE
void tt_verb::dsp_vector_calc_normal_lite(tt_audio_signal *in, tt_audio_signal *out)
{
	short i;
	
	// Early Reflections
	early_reflections->dsp_vector_calc(in, temp[0]);
	
	// LFOs & Comb Filters
	// Unrolling this for-loop for speed doesn't seem to make a difference - compiler must be doing this automagically
	for(i=0; i<6; i++){
		lfos[i]->dsp_vector_calc(temp[8]);														// Run the LFO
		comb_filters[i]->set_attr(tt_comb::k_delay_static, *temp[8]->vector + delay_base[i]);	// take the 1st value of the vector
		comb_filters[i]->dsp_vector_calc(temp[0], temp[i+1]);									// Comb Stage
	}
	
	// Sum the Comb Filters (1-6) and early reflections (0)
	mixer->dsp_vector_calc(temp[0], temp[1], temp[2], temp[3], temp[4], temp[5], temp[6], temp[7]);
	
	// Allpass Stage
	my_allpass->dsp_vector_calc(temp[7], temp[2]);

	// Post-Processing
	my_lowpass->dsp_vector_calc(temp[2], out);	// Final Lowpass
	// LITE: No Wet-Dry Mix
	// LITE: No Output Gain Control
}


// DSP LOOP: NO EARLY REFLECTIONS **** LITE
void tt_verb::dsp_vector_calc_no_reflections_lite(tt_audio_signal *in, tt_audio_signal *out)
{
	short i;
	
	// LFOs & Comb Filters
	for(i=0; i<6; i++){
		lfos[i]->dsp_vector_calc(temp[8]);														// Run the LFO
		comb_filters[i]->set_attr(tt_comb::k_delay_static, *temp[8]->vector + delay_base[i]);	// take the 1st value of the vector
		comb_filters[i]->dsp_vector_calc(in, temp[i+1]);										// Comb Stage
	}
	
	// Sum the Comb Filters (1-6) to the output (7)
	mixer->dsp_vector_calc(temp[1], temp[2], temp[3], temp[4], temp[5], temp[6], temp[7]);
	
	// Allpass Stage
	my_allpass->dsp_vector_calc(temp[7], temp[2]);

	// Post-Processing
	my_lowpass->dsp_vector_calc(temp[2], out);	// Final Lowpass
	// LITE: No Wet-Dry Mix
	// LITE: No Output Gain Control
}


// ADDITIONAL METHODS ************************************************************

// clear
TT_INLINE void tt_verb::clear()
{
	short i;
	for(i=0;i<6;i++)
		comb_filters[i]->clear();
	my_allpass->clear();
	my_lowpass->clear();
	early_reflections->clear();
}


// set sample-rate (override the inherited method)
TT_INLINE void tt_verb::set_sr(int	value)
{
	short i;
	
	sr = value;
	r_sr = 1.0 / value;
	m_sr = sr * 0.001;
	
	early_reflections->set_sr(sr);
	my_allpass->set_sr(sr);
	my_lowpass->set_sr(sr);
	xfade->set_sr(sr);
	master_gain->set_sr(sr);
	mixer->set_sr(sr);
	for(i=0; i<6; i++){
		comb_filters[i]->set_sr(sr);
		lfos[i]->set_sr(sr);
	}			
}


// set the vector size (override the inherited method)
TT_INLINE void tt_verb::set_vectorsize(int value)
{
	short i;
	vectorsize = value;
	
	early_reflections->set_vectorsize(vectorsize);
	my_allpass->set_vectorsize(vectorsize);
	my_lowpass->set_vectorsize(vectorsize);
	xfade->set_vectorsize(vectorsize);
	master_gain->set_vectorsize(vectorsize);
	mixer->set_vectorsize(vectorsize);
	for(i=0; i<6; i++){
		comb_filters[i]->set_vectorsize(vectorsize);
		lfos[i]->set_vectorsize(vectorsize);
	}

	// FREE THE TEMP VECTORS
	for(i=0; i<k_num_temp_signals; i++)
		temp[i]->alloc(vectorsize);
}


TT_INLINE void tt_verb::config_dsp_pointers()
{
	if(use_early_reflections && use_lite_version)
		dsp_executor = &tt_verb::dsp_vector_calc_normal_lite;
	else if(use_early_reflections)
		dsp_executor = &tt_verb::dsp_vector_calc_normal;
	else if(use_lite_version)
		dsp_executor = &tt_verb::dsp_vector_calc_no_reflections_lite;
	else
		dsp_executor = &tt_verb::dsp_vector_calc_no_reflections;	
}
