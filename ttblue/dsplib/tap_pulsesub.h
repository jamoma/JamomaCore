/*
 *******************************************************
 *		PULSE-BASED ENVELOPE SUBSTITUTION
 *******************************************************
 *		taptools_audio object
 *		copyright © 2000-2004 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TAP_PULSESUB_H
#define TAP_PULSESUB_H

// Include appropriate headers
#include "taptools_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tap_pulsesub:public taptools_audio{

	private:
		enum constants{
			k_num_temp_signals = 2,
		};

		tap_offset				*offset;					// member tap.tools objects
		tap_phasor				*phasor;
		tap_adsr				*env_gen;
		tap_multiply			*scaler;	
		tt_audio_signal			*temp[k_num_temp_signals];	// Temp Signals
			
	public:
		enum selectors{					// Attribute Selectors
			k_mode,
				k_mode_linear,
				k_mode_exponential,
			k_attack,
			k_decay,
			k_sustain,
			k_release,
			k_frequency,				// phasor freq
			k_length,					// offset length for duty-cycle control
		};
		

		// OBJECT LIFE ************************************************************
		tap_pulsesub()										// Constructor		
		{
			short i;
			for(i=0; i < k_num_temp_signals; i++)
				temp[i] = new tt_audio_signal(vectorsize);		// allocate temp signals
			
			env_gen = new tap_adsr;
			phasor = new tap_phasor;
			offset = new tap_offset;
			scaler = new tap_multiply;
				
			// Default Settings
			// set_attr(k_ratio, 1.0);
			// set_attr(k_windowsize, 87.0);
		}

		~tap_pulsesub()									// Destructor
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
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch(sel){
				case k_attack:
					env_gen->set_attr(tap_adsr::k_attack, val);
					break;
				case k_decay:
					env_gen->set_attr(tap_adsr::k_decay, val);
					break;
				case k_sustain:
					env_gen->set_attr(tap_adsr::k_sustain_db, val);
					break;
				case k_release:
					env_gen->set_attr(tap_adsr::k_release, val);
					break;
				case k_mode:
					if(val == k_mode_exponential)
						env_gen->set_attr(tap_adsr::k_mode, tap_adsr::k_mode_exponential);
					else
						env_gen->set_attr(tap_adsr::k_mode, tap_adsr::k_mode_linear);
					break;
				case k_frequency:
					phasor->set_attr(tap_phasor::k_frequency, val);
					break;
				case k_length:
					offset->set_attr(tap_offset::k_offset_value, val - 0.5);
					break;
			}
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch(sel){
				case k_attack:
					return env_gen->get_attr(tap_adsr::k_attack);
				case k_decay:
					return env_gen->get_attr(tap_adsr::k_decay);
				case k_sustain:
					return env_gen->get_attr(tap_adsr::k_sustain_db);
				case k_release:
					return env_gen->get_attr(tap_adsr::k_release);
				case k_mode:
					{
						tt_selector tempsel = env_gen->get_attr(tap_adsr::k_mode);
						if(tempsel == tap_adsr::k_mode_linear)
							return k_mode_linear;
						else
							return k_mode_exponential;
					}
				case k_frequency:
					return phasor->get_attr(tap_phasor::k_frequency);
				case k_length:
					return offset->get_attr(tap_offset::k_offset_value + 0.5);
				default:
					return -1;
			}
		}
		
		void set_trigger(bool value)
		{
			env_gen->set_trigger(value);
		}
		
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		// Because this is a meta-object, it is the user of this object who is responsible for making sure that
		//	the vectorsize of the signals are the same as that of this object.

		// Publically exposed interface for this object's dsp routine
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
		{
			phasor->dsp_vector_calc(temp[0]);			// ramp wave, stored in a temporary vector
			offset->dsp_vector_calc(temp[0], temp[1]);	// offset the ramp wave, effectively altering the duty cycle
			env_gen->dsp_vector_calc(temp[1], temp[0]);	// generate the envelope, reusing the temp[0] vector
			scaler->dsp_vector_calc(in, temp[0], out);	// apply the envelope to the input vector
		}



	public:
		// ADDITIONAL METHODS ************************************************************
				
		// set sample-rate (override the inherited method)
		void set_sr(int	value)
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
		void set_vectorsize(int value)
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
};


#endif	// TAP_SHIFT_H