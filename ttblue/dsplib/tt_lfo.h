/*
 *******************************************************
 *		WAVETABLE LOW-FREQUENCY OSCILLATOR
 *		intended only to be used at the vector-rate
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_LFO_H
#define TT_LFO_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_buffer.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_lfo:public tt_audio_base{

	private:
		tt_attribute_value_discrete 	mode;
		tt_attribute_value				frequency;
		tt_attribute_value				gain;
		tt_attribute_value				phase;				// phase offset on a range from 0 to 1
		short							phase_in_samples;	// phase offset in samples
		tt_buffer						*wavetable;
		double							index_delta;
		double							index;	
	
	
	public:
		enum selectors{									// Attribute Selectors
			k_frequency,
			k_gain,
			k_depth,
			k_phase,
			k_mode,
			k_mode_sine,
			k_mode_sine_mod,
			k_mode_cos,
			k_mode_cos_mod,
			k_mode_square,
			k_mode_square_mod,
			k_mode_triangle,
			k_mode_triangle_mod,
			k_mode_ramp,
			k_mode_ramp_mod,
			k_mode_sawtooth,
			k_mode_sawtooth_mod,
		};
		

		// OBJECT LIFE					
		tt_lfo()											// Constructor		
		{
			index = index_delta = 0;
			wavetable = new tt_buffer(512);

			// set defaults
			set_attr(k_mode, k_mode_sine_mod);
			set_attr(k_gain, 0.0);
			set_attr(k_frequency, 1.0);
			set_attr(k_phase, 0.0);
		}

		~tt_lfo()											// Destructor
		{
			delete wavetable;
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){

				case k_frequency:
					frequency = clip(val, 0.f, sr/2.f);
					index_delta = frequency * wavetable->get_attr(tt_buffer::k_length_samples) / sr;
					break;
					
				case k_mode:
					mode = val;

					if(val == k_mode_sine)
						wavetable->fill(tt_buffer::k_sine);
					if(val == k_mode_sine_mod)
						wavetable->fill(tt_buffer::k_sine_mod);

					if(val == k_mode_cos)
						wavetable->fill(tt_buffer::k_cos);
					if(val == k_mode_cos_mod)
						wavetable->fill(tt_buffer::k_cos_mod);

					if(val == k_mode_square)
						wavetable->fill(tt_buffer::k_square);
					if(val == k_mode_square_mod)
						wavetable->fill(tt_buffer::k_square_mod);

					if(val == k_mode_triangle)
						wavetable->fill(tt_buffer::k_triangle);
					if(val == k_mode_triangle_mod)
						wavetable->fill(tt_buffer::k_triangle_mod);

					if(val == k_mode_ramp)
						wavetable->fill(tt_buffer::k_ramp);
					if(val == k_mode_ramp_mod)
						wavetable->fill(tt_buffer::k_ramp_mod);
					break;
					
					if(val == k_mode_sawtooth)
						wavetable->fill(tt_buffer::k_sawtooth);
					if(val == k_mode_sawtooth_mod)
						wavetable->fill(tt_buffer::k_sawtooth_mod);
					break;
					
				case k_gain:
					gain = decibels_to_amplitude(val);
					break;
					
				case k_depth:
					gain = val;
					break;
					
				case k_phase:
					{	
						short old_phase_in_samples = phase_in_samples;					
						phase = val;
						phase_in_samples = short(phase * 512.0);

						index += (phase_in_samples - old_phase_in_samples);		// offset the play head
						if(index >= (wavetable->length_samples))	    		// Wrap the play head...
							index -= wavetable->length_samples;
						else if(index < 0)	    		
							index += wavetable->length_samples;
					}	
					break;
			}
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch (sel){
				case k_frequency:
					return frequency;
				case k_mode:
					return mode;
				case k_gain:
					return amplitude_to_decibels(gain);
				case k_depth:
					return gain;
				case k_phase:
					return phase;
				default:
					return 0.0;
			}
		}
		
		
		// METHOD: SET_WAVETABLE
		void set_wavetable(tt_buffer *newbuffer)
		{
			wavetable->set_buffer(newbuffer);
		}
		
		
		// METHOD: RESET PHASE
		void phase_reset()
		{
			index = phase_in_samples;		
		}
		
		
		// DSP LOOP
		//	only processes the first sample of the vector
		//	intended only for driving parameters of other objects
		//	not for use as audio
		void dsp_vector_calc(tt_audio_signal *out)
		{
			int p1, p2;
			float diff;
			double wavetable_length = (double)(wavetable->length_samples); // 512.0
							
			// Move the play head
			index += (index_delta * vectorsize);	// THIS OBJECT DOES NOT LOOK AT THE VECTORSIZE OF THE OUT SIGNAL
	
			// Wrap the play head
			if(index >= wavetable_length)	// ADDING EXPLICIT CAST TO DOUBLE FOR DUMB WINDOWS    		
				index -= wavetable_length;
			else if(index < 0.0)	    		
				index += wavetable_length;
				
	
			/***************************************** PROBLEM !!!!!
			**************** THE ABOVE WRAPPING WILL CRASH IF THE FREQUENCY GOES HIGHER THAN THE KRATE (SR/VECTOR_SIZE)
			****************	THE RANGE NEEDS TO BE LIMITED - MEANING ALSO THAT THE OBJECT MUST KNOW IT'S VECTOR SIZE!!!!!!
			****************/	
		
			// table lookup (linear interpolation)	
			p1 = index;
			p2 = p1 + 1;
			diff = index - p1;	
			p2 &= ((wavetable->length_samples) - 1);	// fast modulo:  NOTE - ONLY WORKS ON POWERS OF 2 !!!!   MAKE A SEPARATE DSP LOOP FOR THIS!!!!


		    *out->vector = ((wavetable->contents[p2] * diff) + (wavetable->contents[p1] * (1.0 - diff))) * gain;
			out->reset();		
		}
		
		// ADDITIONAL METHODS ************************************************
		
		// set sample-rate (override the inherited method)
		void set_sr(int	value)
		{
			sr = value;
			r_sr = 1.0 / value;
			m_sr = sr * 0.001;
			
			set_attr(k_frequency, frequency);
		}		

};


#endif		// TT_LFO_H