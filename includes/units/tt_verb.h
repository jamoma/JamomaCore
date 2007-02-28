/*
 *******************************************************
 *		REVERBERATION SIMULATOR
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2001-2004 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_VERB_H
#define TT_VERB_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"
#include "tt_multitap.h"
#include "tt_comb.h"
#include "tt_lfo.h"
#include "tt_allpass.h"
#include "tt_lowpass_onepole.h"
#include "tt_mixer_mono.h"
#include "tt_crossfade.h"
#include "tt_gain.h"

/********************************************************
	CLASS INTERFACE
 ********************************************************/

// NOTE: I BELIEVE THE PATCH VERSION HAD A SECOND BANK OF MODULATORS MODULATING THE LFOS

class tt_verb:public tt_audio_base{

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
		
		tt_multitap				*early_reflections;			// other taptools objects used in this effect...
		tt_comb					*comb_filters[6];
		tt_lfo					*lfos[6];
		tt_allpass				*my_allpass;
		tt_lowpass_onepole		*my_lowpass;
		tt_mixer_mono			*mixer;
		tt_crossfade			*xfade;						// mix
		tt_gain					*master_gain;				// gain

		tt_audio_signal			*temp[k_num_temp_signals];	// Temp Signals
		
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_verb::*FuncPtr)(tt_audio_signal *, tt_audio_signal *);
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
		tt_verb();												// Constructor		
		~tt_verb();												// Destructor

		// ATTRIBUTES ************************************************************
		void set_attr(tt_selector sel, tt_attribute_value val);	// Set Attributes
		tt_attribute_value get_attr(tt_selector sel);			// Get Attributes
		
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		// Because this is a meta-object, it is the user of this object who is responsible for making sure that
		//	the vectorsize of the signals are the same as that of this object.

		// Publically exposed interface for this object's dsp routine
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);
	private:
		void dsp_vector_calc_normal(tt_audio_signal *in, tt_audio_signal *out);					// DSP LOOP: WITH EARLY REFLECTIONS
		void dsp_vector_calc_no_reflections(tt_audio_signal *in, tt_audio_signal *out);			// DSP LOOP: NO EARLY REFLECTIONS
		void dsp_vector_calc_normal_lite(tt_audio_signal *in, tt_audio_signal *out);			// DSP LOOP: WITH EARLY REFLECTIONS **** LITE
		void dsp_vector_calc_no_reflections_lite(tt_audio_signal *in, tt_audio_signal *out);	// DSP LOOP: NO EARLY REFLECTIONS **** LITE

	public:
		// ADDITIONAL METHODS ************************************************************		
		void clear();
		void set_sr(int	value);		// set sample-rate (override the inherited method)
		void set_vectorsize(int value);		// set the vector size (override the inherited method)
		
	private:
		void config_dsp_pointers();
};

#endif	// TT_VERB_H
