/*
 *******************************************************
 *		PULSE-BASED ENVELOPE SUBSTITUTION
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2000-2004 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_PULSESUB_H
#define TT_PULSESUB_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_offset.h"
#include "tt_phasor.h"
#include "tt_adsr.h"
#include "tt_multiply.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_pulsesub:public tt_audio_base{

	private:
		enum constants{
			k_num_temp_signals = 2,
		};

		tt_offset				*offset;					// member tap.tools objects
		tt_phasor				*phasor;
		tt_adsr					*env_gen;
		tt_multiply				*scaler;	
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
		tt_pulsesub();										// Constructor		
		~tt_pulsesub();									// Destructor

		// ATTRIBUTES ************************************************************
		void set_attr(tt_selector sel, tt_attribute_value val);	// Set Attributes
		tt_attribute_value get_attr(tt_selector sel);				// Get Attributes

		void set_trigger(bool value);
		
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		// Because this is a meta-object, it is the user of this object who is responsible for making sure that
		//	the vectorsize of the signals are the same as that of this object.

		// Publically exposed interface for this object's dsp routine
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);
				
		// set sample-rate (override the inherited method)
		void set_sr(int	value);
		// set the vector size (override the inherited method)
		void set_vectorsize(int value);
};

#endif	// TT_PULSESUB_H
