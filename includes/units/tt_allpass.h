/*
 *******************************************************
 *		ALLPASS FILTER
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_ALLPASS_H
#define TT_ALLPASS_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_allpass:public tt_audio_base{

	private:
		tt_attribute_value 	delay_ms;					// ATTRIBUTE: Delay time in milliseconds
		tt_attribute_value	gain;						// ATTRIBUTE: Gain coefficient
		tt_sample_vector	ff_buffer, fb_buffer;		// buffers for the delays
		tt_sample_vector	ff_end_ptr, fb_end_ptr;		// pointers to the buffer ends
		tt_sample_vector	ff_in_ptr, fb_in_ptr;		// write pointers
		tt_sample_vector	ff_out_ptr, fb_out_ptr;		// read pointers
		long				delay_samples_max;			// size of the delay buffers
		float				delay_ms_max;				// ...
		long				delay_samples;				// Delay time in samples (internal)	
		
	
	public:
		enum selectors{									// Attribute Selectors				
			k_delay_ms,
			k_gain
		};
		

		// OBJECT LIFE
		tt_allpass(tt_attribute_value milliseconds);	// Constructor
		~tt_allpass();									// Destructor

		// ATTRIBUTES
		tt_err 		set_attr(tt_selector sel, const tt_atom &val);
		tt_err		get_attr(tt_selector sel, tt_atom &value);
				
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);		

		// INIT
		void init(tt_attribute_value milliseconds);

		// clear
		void clear();

		// set sample-rate (override the inherited method)
		void set_sr(int	value);
};


#endif	// tt_ALLPASS_H