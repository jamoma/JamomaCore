/*
 *******************************************************
 *		IIR COMB FILTER
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_COMB_H
#define TT_COMB_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_comb:public tt_audio_base{

	private:
		tt_sample_vector	memory, memwriteptr, alloc;		// Internal Stuff for the comb filter
		//float 			delaysize;
		long 				delay;
		float 				msdelay;
		float 				comb_fb_coef;
	
		tt_attribute_value 		lowpass_feedback;			// lowpass filter parameters
		tt_attribute_value 		lowpass_coef;
		tt_attribute_value		lowpass_frequency;
		tt_attribute_value 		decay;						// comb filter parameters
		tt_attribute_value		clipping;
		tt_attribute_value		buffersize;
		long 					buffersize_in_samples;
	
	public:
		enum selectors{									// Attribute Selectors
			k_feedback,
			k_clip,
			k_delay,
			k_delay_static,
			k_decay,
			k_cutoff_frequency,
			k_buffersize,
		};
		
		// OBJECT LIFE					
		tt_comb(tt_attribute_value arg);			// Constructor		
		~tt_comb(void);							// Destructor

		// ATTRIBUTES
		tt_err 		set_attr(tt_selector sel, const tt_value &val);
		tt_err		get_attr(tt_selector sel, tt_value &value);
				
		// DSP LOOP
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);

		// ADDITIONAL METHODS ****************************************************

		// clear
		void clear();
		
		// set sample-rate (override the inherited method)
		void set_sr(int	value);
};

#endif		// TT_COMB_H
