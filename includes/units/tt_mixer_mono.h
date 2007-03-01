/*
 *******************************************************
 *		MIXER (N INPUTS / 1 OUTPUT)
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_MIXER_MONO_H
#define TT_MIXER_MONO_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_mixer_mono:public tt_audio_base{

	private:
		enum constants{
			MAX_NUM_CHANNELS = 16,
		};
		tt_attribute_value		channel_gain[MAX_NUM_CHANNELS];
		tt_attribute_value		master_gain;
			
		
	public:
		enum selectors{										// Attribute Selectors
			k_channel_gain,
			k_master_gain
		};
		
		// OBJECT LIFE					
		tt_mixer_mono(void);								// Constructor		
		~tt_mixer_mono(void);								// Destructor

		// ATTRIBUTES
		tt_err 		set_attr(tt_selector sel, const tt_atom &val);
		tt_err		get_attr(tt_selector sel, tt_atom &value);
				
		// DSP LOOP - 2 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out);
		// DSP LOOP - 3 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *out);
		// DSP LOOP - 4 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *out);
		// DSP LOOP - 5 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *out);
		// DSP LOOP - 6 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *in6, tt_audio_signal *out);
		// DSP LOOP - 7 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *in6, tt_audio_signal *in7, tt_audio_signal *out);
		// DSP LOOP - 8 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *in6, tt_audio_signal *in7, tt_audio_signal *in8, 
			tt_audio_signal *out);
		// DSP LOOP - 9 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *in6, tt_audio_signal *in7, tt_audio_signal *in8, tt_audio_signal *in9, 
			tt_audio_signal *out);
		// DSP LOOP - 10 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *in6, tt_audio_signal *in7, tt_audio_signal *in8, tt_audio_signal *in9, 
			tt_audio_signal *in10, tt_audio_signal *out);
		// DSP LOOP - 11 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *in6, tt_audio_signal *in7, tt_audio_signal *in8, tt_audio_signal *in9, 
			tt_audio_signal *in10, tt_audio_signal *in11, tt_audio_signal *out);
		// DSP LOOP - 12 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *in6, tt_audio_signal *in7, tt_audio_signal *in8, tt_audio_signal *in9, 
			tt_audio_signal *in10, tt_audio_signal *in11, tt_audio_signal *in12, tt_audio_signal *out);
		// DSP LOOP - 13 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *in6, tt_audio_signal *in7, tt_audio_signal *in8, tt_audio_signal *in9, 
			tt_audio_signal *in10, tt_audio_signal *in11, tt_audio_signal *in12, tt_audio_signal *in13, 
			tt_audio_signal *out);
		// DSP LOOP - 14 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *in6, tt_audio_signal *in7, tt_audio_signal *in8, tt_audio_signal *in9, 
			tt_audio_signal *in10, tt_audio_signal *in11, tt_audio_signal *in12, tt_audio_signal *in13, tt_audio_signal *in14, 
			tt_audio_signal *out);
		// DSP LOOP - 15 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *in6, tt_audio_signal *in7, tt_audio_signal *in8, tt_audio_signal *in9, 
			tt_audio_signal *in10, tt_audio_signal *in11, tt_audio_signal *in12, tt_audio_signal *in13, tt_audio_signal *in14, 
			tt_audio_signal *in15, tt_audio_signal *out);
		// DSP LOOP - 16 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *in6, tt_audio_signal *in7, tt_audio_signal *in8, tt_audio_signal *in9, 
			tt_audio_signal *in10, tt_audio_signal *in11, tt_audio_signal *in12, tt_audio_signal *in13, tt_audio_signal *in14, 
			tt_audio_signal *in15, tt_audio_signal *in16, tt_audio_signal *out);
};

#endif // TT_MIXER_MONO_H


