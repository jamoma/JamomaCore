/*
 *******************************************************
 *		PITCH SHIFTER
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2000-2004 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_SHIFT_H
#define TT_SHIFT_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"
#include "tt_delay.h"
#include "tt_phasor.h"
#include "tt_buffer.h"
#include "tt_buffer_window.h"
#include "tt_gain.h"
#include "tt_offset.h"
#include "tt_onewrap.h"
#include "tt_add.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_shift:public tt_audio_base{

	private:
		enum constants{
			k_num_temp_signals = 10,
		};
		tt_attribute_value		window_size;				// size of the delay window in ms
		tt_attribute_value		shift_ratio;				// amount of pitch shift
		
		tt_delay				*delay1, *delay2;			// member tap.tools objects
		tt_phasor				*phasor;
		tt_buffer				*window;
		tt_buffer_window		*wave1, *wave2;
		tt_gain					*scale;
		tt_offset				*offset;
		tt_onewrap				*modulo;	
		tt_add					*add;
	
		tt_audio_signal			*temp[k_num_temp_signals];	// Temp Signals
		float					buffersize_in_ms;
			
	public:
		enum selectors{			// Attribute Selectors
			k_ratio,
			k_windowsize,
		};
		
		// OBJECT LIFE ************************************************************
		tt_shift();													// Constructor		
		~tt_shift();												// Destructor

		// ATTRIBUTES ************************************************************
		tt_err 		set_attr(tt_selector sel, const tt_value &val);
		tt_err		get_attr(tt_selector sel, tt_value &value);
				
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		// Because this is a meta-object, it is the user of this object who is responsible for making sure that
		//	the vectorsize of the signals are the same as that of this object.

		// Publically exposed interface for this object's dsp routine
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);

		void clear();

		void set_sr(int	value);
		void set_vectorsize(int value);
};


#endif	// TT_SHIFT_H