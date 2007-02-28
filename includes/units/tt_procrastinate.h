/*
 *******************************************************
 *		IDIOSYNCRATIC DELAY UNIT CASCADE
 *		Originally created for Jim Mobberley's
 *		"Voices: In Memoriam"
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2000-2004 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_PROCRASTINATE_H
#define TT_PROCRASTINATE_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_procrastinate:public tt_audio_base{

	private:
		enum constants{
			k_num_temp_signals = 19,
		};
		tt_attribute_value		window_size_value[4];				// size of the delay window
		float					delay_low[4];
		float					delay_high[4];
		tt_attribute_value		shift_ratio_value[4];				// amount of pitch shift
		float					shift_low[4];
		float					shift_high[4];
		tt_attribute_value		gain_value[4];
		float					gain_low[4];
		float					gain_high[4];
		tt_attribute_value		pan_value[4];
		float					pan_low[4];
		float					pan_high[4];
		
		tt_delay				*delay1[4], *delay2[4];
		tt_phasor				*phasor[4];
		tt_buffer_window		*wave1, *wave2;
		tt_gain					*scale[4];
		tt_offset				*offset;
		tt_onewrap				*modulo;	
		tt_mixer_mono			*mixer[4];
		tt_mixer_mono			*finalmix;
		tt_buffer				*window;
		
		tt_pan					*panner[4];
		tt_gain					*gain[4];
	
		tt_audio_signal			*temp[k_num_temp_signals];	// Temp Signals
		float					buffersize_in_ms;
			
	public:
		enum selectors{			// Attribute Selectors
			k_ratio,
			k_windowsize,
			
			k_gain_range,
			k_shift_range,
			k_pan_range,
			k_delay_range,
		};
		

		// OBJECT LIFE ************************************************************
		tt_procrastinate();											// Constructor		
		~tt_procrastinate();										// Destructor

		// ATTRIBUTES ************************************************************
		void set_attr(tt_selector sel, short index, tt_attribute_value val);	// Set Attributes
		void set_attr(tt_selector sel, short index, tt_attribute_value low, tt_attribute_value high);	// Set Attributes
		tt_attribute_value get_attr(tt_selector sel, short index);				// Get Attributes
		
		void randomize_parameters();
		
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		// Because this is a meta-object, it is the user of this object who is responsible for making sure that
		//	the vectorsize of the signals are the same as that of this object.

		// Publically exposed interface for this object's dsp routine
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out1, tt_audio_signal *out2);

		void clear();

		// set sample-rate (override the inherited method)
		void set_sr(int	value);
		// set the vector size (override the inherited method)
		void set_vectorsize(int value);
};

#endif	// TT_PROCRASTINATE_H
