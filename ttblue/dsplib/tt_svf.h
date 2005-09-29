/*
 *******************************************************
 *		SVF Filter
 *		
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_SVF_H
#define TT_SVF_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_svf:public tt_audio_base{

	private:
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_svf::*FuncPtr)(tt_audio_signal *, tt_audio_signal *);
		FuncPtr dsp_executor;

		// Attributes Values & Variables
		tt_attribute_value 			resonance;
		tt_attribute_value			frequency;
		tt_attribute_value_discrete	mode;
		double						freq, res, damp;
		double						lowpass_output;
		double 						highpass_output;
		double						bandpass_output;
		double 						notch_output;
		double						peak_output;
	
	
	public:
		enum selectors{								
			num_poles = 2,
			
			k_mode,							// Attribute Selectors
			k_mode_lowpass,
			k_mode_highpass,
			k_mode_bandpass,
			k_mode_notch,
			k_mode_peak,
			k_frequency,
			k_resonance
		};
		

		// OBJECT LIFE					
		tt_svf()								// Constructor		
		{
			set_attr(k_frequency, 1000.0);	
			set_attr(k_resonance, 1.0);
			set_attr(k_mode, k_mode_lowpass);	
			clear();
		}

		~tt_svf()								// Destructor
		{
			;
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			double temp1, temp2;
			
			switch (sel){
				case k_frequency:
					frequency = clip(val, float(20.0), float(sr * 0.5));
					freq = 2.0 * sin(pi * val / double(sr * 2)); 
					if (freq > 0.25)
						freq = 0.25;
					break;
				case k_resonance:
					resonance = val;
					res = val * 0.1;
					break;
				case k_mode:
					mode = val;
					if(mode == k_mode_lowpass)
						dsp_executor = &tt_svf::dsp_vector_calc_lowpass;
					else if(mode == k_mode_highpass)
						dsp_executor = &tt_svf::dsp_vector_calc_highpass;
					else if(mode == k_mode_bandpass)
						dsp_executor = &tt_svf::dsp_vector_calc_bandpass;
					else if(mode == k_mode_notch)
						dsp_executor = &tt_svf::dsp_vector_calc_notch;
					else if(mode == k_mode_peak)
						dsp_executor = &tt_svf::dsp_vector_calc_peak;
					break;
			}
			temp1 = limit_max(2.0 / freq - freq * 0.5, 2.0);
			//if(2.0 < temp1) 
			//	temp1 = 2.0;

			temp2 = 2.0 * (1.0 - pow(res, 0.25));

			if(temp1 < temp2)
				damp = temp1;
			else
				damp = temp2;
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch (sel){
				case k_frequency:
					return frequency;
				case k_resonance:
					return resonance;
				case k_mode:
					return mode;
				default:
					return 0.0;
			}
		}
		

		// clear
		void clear()
		{
			lowpass_output = 0;
			highpass_output = 0;
			bandpass_output = 0;
			notch_output = 0;
			peak_output = 0;
		}
		
		
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		
		// Publically exposed interface for this object's dsp routine
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
		{
			(*this.*dsp_executor)(in, out);	// Run the function pointed to by our function pointer
		}
	
	private:
		// DSP LOOP: LOWPASS
		void dsp_vector_calc_lowpass(tt_audio_signal *in, tt_audio_signal *out)
		{
			temp_vs = in->vectorsize;
			while(temp_vs--){
				filter_tick(*in->vector++);
				*out->vector++ = 0.5 * lowpass_output;
			}
			in->reset(); out->reset();
		}

		// DSP LOOP: HIGHPASS
		void dsp_vector_calc_highpass(tt_audio_signal *in, tt_audio_signal *out)
		{
			temp_vs = in->vectorsize;
			while(temp_vs--){
				filter_tick(*in->vector++);
				*out->vector++ = 0.5 * highpass_output;
			}
			in->reset(); out->reset();
		}

		// DSP LOOP: BANDPASS
		void dsp_vector_calc_bandpass(tt_audio_signal *in, tt_audio_signal *out)
		{
			temp_vs = in->vectorsize;
			while(temp_vs--){
				filter_tick(*in->vector++);
				*out->vector++ = 0.5 * bandpass_output;
			}
			in->reset(); out->reset();
		}

		// DSP LOOP: NOTCH
		void dsp_vector_calc_notch(tt_audio_signal *in, tt_audio_signal *out)
		{
			temp_vs = in->vectorsize;
			while(temp_vs--){
				filter_tick(*in->vector++);
				*out->vector++ = 0.5 * notch_output;
			}
			in->reset(); out->reset();
		}

		// DSP LOOP: PEAK
		void dsp_vector_calc_peak(tt_audio_signal *in, tt_audio_signal *out)
		{
			temp_vs = in->vectorsize;
			while(temp_vs--){
				filter_tick(*in->vector++);
				*out->vector++ = 0.5 * (lowpass_output - highpass_output);
			}
			in->reset(); out->reset();
		}
		
		
		// THE GUTS OF THE SVF FILTER
		void filter_tick(tt_sample_value value)
		{
//			short i;
			
/*			for(i=0; i < 2; i++){	// 2X Oversampling
				notch_output = value - damp * bandpass_output;
				lowpass_output += freq * bandpass_output;
				highpass_output = notch_output - lowpass_output;
				bandpass_output = freq * highpass_output + bandpass_output;
			}			
*/
			// UNROLLED FOR LOOP FOR SPEED
			notch_output = anti_denormal(value - damp * bandpass_output);
			lowpass_output += anti_denormal(freq * bandpass_output);
			highpass_output = anti_denormal(notch_output - lowpass_output);
			bandpass_output = anti_denormal(freq * highpass_output + bandpass_output);
		
			notch_output = anti_denormal(value - damp * bandpass_output);
			lowpass_output += anti_denormal(freq * bandpass_output);
			highpass_output = anti_denormal(notch_output - lowpass_output);
			bandpass_output = anti_denormal(freq * highpass_output + bandpass_output);
		}	
		
/*		void dsp_vector_calc(sample_vector in, short vector_size, sample_vector out)
		{
			sample_value value, temp;
			short i;
			
			while(vector_size--){
				value = *in++;
				for(i=0; i < 2; i++){	// 2X Oversampling
					notch_output = value - damp * bandpass_output;
					lowpass_output += freq * bandpass_output;
					highpass_output = notch_output - lowpass_output;
					bandpass_output = freq * highpass_output + bandpass_output;
					switch (mode) {
						case k_mode_lowpass:
							temp = 0.5 * lowpass_output;
							break;		
						case k_mode_highpass:
							temp = 0.5 * highpass_output;
							break;		
						case k_mode_bandpass:	
							temp = 0.5 * bandpass_output;
							break;		
						case k_mode_notch:			
							temp = 0.5 * notch_output;
							break;		
						case k_mode_peak:			
							temp = 0.5 * (lowpass_output - highpass_output);
							break;		
					}
				}
				*out++ = temp;
			}
		}
*/

};


#endif	// TT_SVF_H