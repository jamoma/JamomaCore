/*
 *******************************************************
 *		PLAY BACK SAMPLES FROM A BUFFER
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_BUFFER_PLAY_H
#define TT_BUFFER_PLAY_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_buffer.h"
//#include <functional>

/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_buffer_play:public tt_audio_base{

	private:
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_buffer_play::*FuncPtr)(tt_audio_signal *, tt_audio_signal *);
		FuncPtr dsp_executor;
		
		// Attribute Values
		tt_attribute_value_discrete 	mode;
		tt_attribute_value				gain;
		tt_buffer						*wavetable;		// Reference to an external buffer
	
	public:
		enum selectors{										// Attribute Selectors
			k_mode,
				k_mode_samples,
				k_mode_ms,
				k_mode_normalized,
				k_mode_normalized_fast,
			k_gain,
		};
		

		// OBJECT LIFE					
		tt_buffer_play()									// Constructor		
		{
			wavetable = 0;
			// set defaults
			set_attr(k_mode, k_mode_normalized);
			set_attr(k_gain, 0.0);
			wavetable = 0;
		}

		tt_buffer_play(tt_buffer *mybuffer)				// Constructor - BUFFER ARG
		{
			wavetable = 0;
			// set defaults
			set_attr(k_mode, k_mode_normalized);
			set_attr(k_gain, 0.0);
			wavetable = 0;
			set_buffer(mybuffer);
		}

		~tt_buffer_play()									// Destructor
		{
			;
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){
				case k_mode:	// mode sets a function pointer to the correct dsp loop
					mode = val;
					if(mode == k_mode_samples)
						dsp_executor = &tt_buffer_play::dsp_vector_calc_samples;
					else if(mode == k_mode_ms)
						dsp_executor = &tt_buffer_play::dsp_vector_calc_ms;
					else if(mode == k_mode_normalized)
						dsp_executor = &tt_buffer_play::dsp_vector_calc_normalized;
					else if(mode == k_mode_normalized_fast)
						dsp_executor = &tt_buffer_play::dsp_vector_calc_normalized_fast;
					break;
				case k_gain:
					gain = decibels_to_amplitude(val);
					break;
			}
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch (sel){
				case k_mode:
					return mode;
				case k_gain:
					return amplitude_to_decibels(gain);
				default:
					return 0.0;
			}
		}


		// METHODS
		void set_buffer(tt_buffer *mybuffer)	// Set Buffer
		{
			wavetable = mybuffer;	
		}

		tt_buffer *get_buffer()				// Get Buffer
		{
			return wavetable;
		}
		

		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		
		// Publically exposed interface for this object's dsp routine
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
		{
			(*this.*dsp_executor)(in, out);
		}

	private:
		// DSP LOOP: input is the location in samples
		void dsp_vector_calc_samples(tt_audio_signal *in, tt_audio_signal *out)
		{
			unsigned long p1, p2;	
			float diff;
			double index;
			float wavetable_length = float(wavetable->length_samples);
			temp_vs = in->vectorsize;
									
		    while(temp_vs--){
				// locate the play head, range check
				index = clip( *in->vector++, float(0), wavetable_length);
								
				// table lookup (linear interpolation)	
				p1 = (unsigned long)index;
				p2 = p1 + 1;
				diff = index - p1;	
				p2 &= ((wavetable->length_samples) - 1);	// fast modulo
										
		    	*out->vector++ = ((wavetable->contents[p2] * diff) + (wavetable->contents[p1] * (1.0 - diff))) * gain;
		    }
		    in->reset(); out->reset();
		}
		
		// DSP LOOP: input is the location in ms
		void dsp_vector_calc_ms(tt_audio_signal *in, tt_audio_signal *out)
		{
			int p1, p2;
			float diff;
			double index;
			temp_vs = in->vectorsize;	
									
		    while(temp_vs--){
				// locate the play head, range check
				index = clip((*in->vector++ /** 1000.0) * sr*/ * m_sr), 0.0f, float(wavetable->length_samples));
								
				// table lookup (linear interpolation)	
				p1 = index;
				p2 = p1 + 1;
				diff = index - p1;	
				p2 &= ((wavetable->length_samples) - 1);	// fast modulo
										
		    	*out->vector++ = ((wavetable->contents[p2] * diff) + (wavetable->contents[p1] * (1.0 - diff))) * gain;
		    }
		    in->reset(); out->reset();
		}
		
		// DSP LOOP: input is the location from 0 to 1
		void dsp_vector_calc_normalized(tt_audio_signal *in, tt_audio_signal *out)
		{
			unsigned long p1, p2;
			float diff, wavetable_length = (float)wavetable->length_samples;
			double index;
			temp_vs = in->vectorsize;
									
		    while(temp_vs--){
				// locate the play head, range check
				index = clip(*in->vector++ * wavetable_length, 0.0f, wavetable_length);
								
				// table lookup (linear interpolation)	
				p1 = (unsigned long)index;
				p2 = p1 + 1;
				diff = index - p1;	
				p2 &= ((wavetable->length_samples) - 1);	// fast modulo
										
		    	*out->vector++ = ((wavetable->contents[p2] * diff) + (wavetable->contents[p1] * (1.0 - diff))) * gain;
		    }
		}
		
		// DSP LOOP: input is the location from 0 to 1, NO INTERPOLATION, NO RANGE CHECK
		void dsp_vector_calc_normalized_fast(tt_audio_signal *in, tt_audio_signal *out)
		{
			long index;
			temp_vs = in->vectorsize;				
		    while(temp_vs--){
				// locate the play head, range check
				index = *in->vector++ * wavetable->length_samples;
								
		    	*out->vector++ = wavetable->contents[index];
		    }
		}
};

#endif	// tt_BUFFER_PLAY_H