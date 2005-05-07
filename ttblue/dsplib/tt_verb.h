/*
 *******************************************************
 *		REVERBERATION SIMULATOR
 *******************************************************
 *		taptools_audio object
 *		copyright © 2001-2004 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TAP_VERB_H
#define TAP_VERB_H

// Include appropriate headers
#include "taptools_base.h"
#include "tap_multitap.h"

/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

// NOTE: I BELIEVE THE PATCH VERSION HAD A SECOND BANK OF MODULATORS MODULATING THE LFOS

class tap_verb:public taptools_audio{

	private:
		enum constants{
			k_num_temp_signals = 9,
		};
		tt_attribute_value		delay_time;					// The specified delay time
		float					delay_base[6];				// Base delay times for the 6 comb filters
		tt_attribute_value		decay_time;					// Decay Time in seconds
		tt_attribute_value		damping_cf;					// Lowpass CF in the comb feedback loops
		tt_attribute_value		output_cf;					// Master Lowpass CF
		tt_attribute_value		moddepth;
		tt_attribute_value		modfreq;
		tt_attribute_value_bool	use_early_reflections;
		tt_attribute_value_bool	use_lite_version;
		
		tap_multitap			*early_reflections;			// other taptools objects used in this effect...
		tap_comb				*comb_filters[6];
		tap_lfo					*lfos[6];
		tap_allpass				*my_allpass;
		tap_lowpass_onepole		*my_lowpass;
		tap_mixer_mono			*mixer;
		tap_crossfade			*xfade;						// mix
		tap_gain				*master_gain;				// gain

		tt_audio_signal			*temp[k_num_temp_signals];	// Temp Signals
		
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tap_verb::*FuncPtr)(tt_audio_signal *, tt_audio_signal *);
		FuncPtr dsp_executor;

	
	public:
		enum selectors{			// Attribute Selectors
			k_mix,
			k_gain,
			k_delay,
			k_decay,
			k_damping,
			k_lowpass,
			k_modfreq,
			k_moddepth,
			k_use_early_reflections,
			k_use_lite_version,
		};
		

		// OBJECT LIFE ************************************************************
		tap_verb()										// Constructor		
		{
			short i;
			for(i=0; i < k_num_temp_signals; i++)
				temp[i] = new tt_audio_signal(vectorsize);			// allocate temp signals
			
				early_reflections = new tap_multitap(100.0f);		// 80 millisecond max delay time for early reflections
				early_reflections->set_attr(tap_multitap::k_num_taps, 18);
				early_reflections->set_attr(tap_multitap::k_master_gain, -24.0);	// Master gain for the multitap unit
				early_reflections->set_attr(tap_multitap::k_delay_ms, 0, 4.3);
				early_reflections->set_attr(tap_multitap::k_gain, 0, amplitude_to_decibels(0.841));
				early_reflections->set_attr(tap_multitap::k_delay_ms, 1, 21.5);
				early_reflections->set_attr(tap_multitap::k_gain, 1, amplitude_to_decibels(0.504));
				early_reflections->set_attr(tap_multitap::k_delay_ms, 2, 22.5);
				early_reflections->set_attr(tap_multitap::k_gain, 2, amplitude_to_decibels(0.491));
				early_reflections->set_attr(tap_multitap::k_delay_ms, 3, 26.8);
				early_reflections->set_attr(tap_multitap::k_gain, 3, amplitude_to_decibels(0.379));
				early_reflections->set_attr(tap_multitap::k_delay_ms, 4, 27.0);
				early_reflections->set_attr(tap_multitap::k_gain, 4, amplitude_to_decibels(0.38));
				early_reflections->set_attr(tap_multitap::k_delay_ms, 5, 29.8);
				early_reflections->set_attr(tap_multitap::k_gain, 5, amplitude_to_decibels(0.346));
				early_reflections->set_attr(tap_multitap::k_delay_ms, 6, 45.8);
				early_reflections->set_attr(tap_multitap::k_gain, 6, amplitude_to_decibels(0.289));
				early_reflections->set_attr(tap_multitap::k_delay_ms, 7, 48.5);
				early_reflections->set_attr(tap_multitap::k_gain, 7, amplitude_to_decibels(0.272));
				early_reflections->set_attr(tap_multitap::k_delay_ms, 8, 57.2);
				early_reflections->set_attr(tap_multitap::k_gain, 8, amplitude_to_decibels(0.192));
				early_reflections->set_attr(tap_multitap::k_delay_ms, 9, 58.7);
				early_reflections->set_attr(tap_multitap::k_gain, 9, amplitude_to_decibels(0.193));
				early_reflections->set_attr(tap_multitap::k_delay_ms, 10, 59.5);
				early_reflections->set_attr(tap_multitap::k_gain, 10, amplitude_to_decibels(0.217));
				early_reflections->set_attr(tap_multitap::k_delay_ms, 11, 61.2);
				early_reflections->set_attr(tap_multitap::k_gain, 11, amplitude_to_decibels(0.181));
				early_reflections->set_attr(tap_multitap::k_delay_ms, 12, 70.7);
				early_reflections->set_attr(tap_multitap::k_gain, 12, amplitude_to_decibels(0.18));
				early_reflections->set_attr(tap_multitap::k_delay_ms, 13, 70.8);
				early_reflections->set_attr(tap_multitap::k_gain, 13, amplitude_to_decibels(0.181));
				early_reflections->set_attr(tap_multitap::k_delay_ms, 14, 72.6);
				early_reflections->set_attr(tap_multitap::k_gain, 14, amplitude_to_decibels(0.176));
				early_reflections->set_attr(tap_multitap::k_delay_ms, 15, 74.1);
				early_reflections->set_attr(tap_multitap::k_gain, 15, amplitude_to_decibels(0.142));
				early_reflections->set_attr(tap_multitap::k_delay_ms, 16, 75.3);
				early_reflections->set_attr(tap_multitap::k_gain, 16, amplitude_to_decibels(0.167));
				early_reflections->set_attr(tap_multitap::k_delay_ms, 17, 79.7);
				early_reflections->set_attr(tap_multitap::k_gain, 17, amplitude_to_decibels(0.134));

				for(i=0; i<6; i++){
					comb_filters[i] = new tap_comb(200.0);	// comb filters have a max delay time of 200 ms.
					lfos[i] = new tap_lfo;					// LFOs each use the default 512 point sinewave
				}
				
				my_allpass = new tap_allpass(7.0);			// 7 millisecond max delay time
					my_allpass->set_attr(tap_allpass::k_delay_ms, 5.98);
					my_allpass->set_attr(tap_allpass::k_gain, 0.7);
					
				my_lowpass = new tap_lowpass_onepole;
				xfade = new tap_crossfade;
				mixer = new tap_mixer_mono;
					for(i=0; i<7; i++)
						mixer->set_attr(tap_mixer_mono::k_channel_gain, i, 1.0);
					mixer->set_attr(tap_mixer_mono::k_master_gain, 0.125);
				master_gain = new tap_gain;
				
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

		~tap_verb()									// Destructor
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
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			short i;
			switch(sel){
				case k_mix:
					xfade->set_attr(tap_crossfade::k_position, val * 0.01);
					break;
				case k_gain:
					master_gain->set_attr(tap_gain::k_gain, val);
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
						comb_filters[i]->set_attr(tap_comb::k_decay, deviate(val));
					decay_time = val;
					break;
				case k_damping:
					for(i=0; i<6; i++)
						comb_filters[i]->set_attr(tap_comb::k_cutoff_frequency, val);
					damping_cf = val;
					break;
				case k_lowpass:
					my_lowpass->set_attr(tap_lowpass_onepole::k_frequency, val);
					output_cf = val;
					break;
				case k_moddepth:
					for(i=0; i<6; i++)
						lfos[i]->set_attr(tap_lfo::k_gain, deviate(amplitude_to_decibels(val)));
					moddepth = val;
					break;
				case k_modfreq:
					for(i=0; i<6; i++)
						lfos[i]->set_attr(tap_lfo::k_frequency, deviate(val));
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
			}
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch(sel){
				case k_mix:
					return xfade->get_attr(tap_crossfade::k_position) * 100.0;
				case k_gain:
					return master_gain->get_attr(tap_gain::k_gain);
				case k_delay:
					return delay_time;
				case k_decay:
					return decay_time;
				case k_damping:
					return damping_cf;
				case k_lowpass:
					return output_cf;
				case k_moddepth:
					return moddepth;
				case k_modfreq:
					return modfreq;
				case k_use_early_reflections:
					return (tt_attribute_value)use_early_reflections;
				case k_use_lite_version:
					return (tt_attribute_value)use_lite_version;
				default:
					return -1;
			}
		}
		
		
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		// Because this is a meta-object, it is the user of this object who is responsible for making sure that
		//	the vectorsize of the signals are the same as that of this object.

		// Publically exposed interface for this object's dsp routine
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
		{
			(*this.*dsp_executor)(in, out);		// Run the function pointed to by our function pointer
		}

	private:
		// DSP LOOP: WITH EARLY REFLECTIONS
		void dsp_vector_calc_normal(tt_audio_signal *in, tt_audio_signal *out)
		{
			short i;
			
			// Early Reflections
			early_reflections->dsp_vector_calc(in, temp[0]);
			
			// LFOs & Comb Filters
			// Unrolling this for-loop for speed doesn't seem to make a difference - compiler must be doing this automagically
			for(i=0; i<6; i++){
				lfos[i]->dsp_vector_calc(temp[8]);														// Run the LFO
				comb_filters[i]->set_attr(tap_comb::k_delay_static, *temp[8]->vector + delay_base[i]);	// take the 1st value of the vector
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
		void dsp_vector_calc_no_reflections(tt_audio_signal *in, tt_audio_signal *out)
		{
			short i;
			
			// LFOs & Comb Filters
			for(i=0; i<6; i++){
				lfos[i]->dsp_vector_calc(temp[8]);														// Run the LFO
				comb_filters[i]->set_attr(tap_comb::k_delay_static, *temp[8]->vector + delay_base[i]);	// take the 1st value of the vector
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
		void dsp_vector_calc_normal_lite(tt_audio_signal *in, tt_audio_signal *out)
		{
			short i;
			
			// Early Reflections
			early_reflections->dsp_vector_calc(in, temp[0]);
			
			// LFOs & Comb Filters
			// Unrolling this for-loop for speed doesn't seem to make a difference - compiler must be doing this automagically
			for(i=0; i<6; i++){
				lfos[i]->dsp_vector_calc(temp[8]);														// Run the LFO
				comb_filters[i]->set_attr(tap_comb::k_delay_static, *temp[8]->vector + delay_base[i]);	// take the 1st value of the vector
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
		void dsp_vector_calc_no_reflections_lite(tt_audio_signal *in, tt_audio_signal *out)
		{
			short i;
			
			// LFOs & Comb Filters
			for(i=0; i<6; i++){
				lfos[i]->dsp_vector_calc(temp[8]);														// Run the LFO
				comb_filters[i]->set_attr(tap_comb::k_delay_static, *temp[8]->vector + delay_base[i]);	// take the 1st value of the vector
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




	public:
		// ADDITIONAL METHODS ************************************************************
		
		// clear
		void clear()
		{
			short i;
			for(i=0;i<6;i++)
				comb_filters[i]->clear();
			my_allpass->clear();
			my_lowpass->clear();
			early_reflections->clear();
		}
		
		// set sample-rate (override the inherited method)
		void set_sr(int	value)
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
		void set_vectorsize(int value)
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
		
	private:
		void config_dsp_pointers()
		{
			if(use_early_reflections && use_lite_version)
				dsp_executor = &tap_verb::dsp_vector_calc_normal_lite;
			else if(use_early_reflections)
				dsp_executor = &tap_verb::dsp_vector_calc_normal;
			else if(use_lite_version)
				dsp_executor = &tap_verb::dsp_vector_calc_no_reflections_lite;
			else
				dsp_executor = &tap_verb::dsp_vector_calc_no_reflections;	
		}
		
};


#endif	// TAP_VERB_H