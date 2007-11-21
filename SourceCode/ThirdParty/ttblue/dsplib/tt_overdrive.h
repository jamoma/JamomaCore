/*
 *******************************************************
 *		OVERDRIVE / SOFT SATURATION
 *		waveshaping object which uses the equation 
 *		y = 1 - (1 - x)^n (positive quadrant only) 
 *		to shape the input signal.
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_OVERDRIVE_H
#define TT_OVERDRIVE_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_overdrive:public tt_audio_base{

	private:
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_overdrive::*function_ptr_1in_1out)(tt_audio_signal *, tt_audio_signal *);
		typedef void (tt_overdrive::*function_ptr_2in_2out)(tt_audio_signal *, tt_audio_signal *, tt_audio_signal *, tt_audio_signal *);
		function_ptr_1in_1out dsp_executor_mono;
		function_ptr_2in_2out dsp_executor_stereo;

		// Attributes Values & Variables 
		tt_attribute_value_discrete		mode;
		tt_attribute_value 				drive;
		tt_attribute_value_bool			defeat_dcblocker;
		double	 						last_input1;
		double							last_output1;
		double	 						last_input2;
		double							last_output2;
		float							s, b, nb, z, scale;
		float							preamp_db;
		float							preamp_linear;
	
	public:
		enum selectors{								
			k_drive,								// Attribute Selectors
			k_defeat_dcblocker,
			k_mode,
			k_preamp
		};
		

		// OBJECT LIFE					
		tt_overdrive()								// Constructor		
		{
			mode = 0;
			preamp_db = 0;
			preamp_linear = 1.;
			set_attr(k_drive, 3.0);	
			set_attr(k_defeat_dcblocker, 0.0);
			clear();
		}

		~tt_overdrive()								// Destructor
		{
			;
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){			
				case k_drive:
					drive = clip(val, float(1.0), float(10.0));
					// the following only apply to mode 1...
					{
						float 	f = (drive - 0.999) * 0.111;	// range is roughly [0.001 to 0.999]
						int		i;
						z = pi * f;
						s = 1.0 / sin(z);
						b = 1.0 / f;
						b = clip(b, 0.0f, 1.0f);
						nb = b * -1;
						i = int(f);
						if(f-i > 0.5) 
							scale = sin(f * pi);
						else 
							scale = 1.;
					}
					return;
				case k_mode:
					mode = (tt_attribute_value_discrete)val;
					break;
				case k_defeat_dcblocker:
					defeat_dcblocker = val;
					break;
				case k_preamp:
					preamp_db = val;
					preamp_linear = decibels_to_amplitude(preamp_db);
					break;
			}
			
			if(defeat_dcblocker && (mode == 0)){	// MODE 0 - no blocker
				dsp_executor_mono = &tt_overdrive::dsp_vector_calc_mono_nodcblock;
				dsp_executor_stereo = &tt_overdrive::dsp_vector_calc_stereo_nodcblock;
			}
			else if(mode == 0){						// MODE 0 - with blocker
				dsp_executor_mono = &tt_overdrive::dsp_vector_calc_mono;
				dsp_executor_stereo = &tt_overdrive::dsp_vector_calc_stereo;
			}
			else if(defeat_dcblocker){				// MODE 1 - no blocker
				dsp_executor_mono =  &tt_overdrive::dsp_vector_calc_mono_sine_nodcblock;
				dsp_executor_stereo = &tt_overdrive::dsp_vector_calc_stereo_sine_nodcblock;
			}
			else{									// MODE 1 - with blocker
				dsp_executor_mono =  &tt_overdrive::dsp_vector_calc_mono_sine;
				dsp_executor_stereo = &tt_overdrive::dsp_vector_calc_stereo_sine;
			}
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch (sel){
				case k_drive:
					return drive;
				default:
					return 0.0;
			}
		}
		
		
		// METHOD: clear
		void clear()
		{
			last_input1 = 0.0;
			last_output1 = 0.0;	
			last_input2 = 0.0;
			last_output2 = 0.0;	
		}

		
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		
		// Publically exposed interface for MONO dsp routine
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
		{
			(*this.*dsp_executor_mono)(in, out);	// Run the function pointed to by our function pointer
		}
	
		// Publically exposed interface for STEREO dsp routine
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2)
		{
			(*this.*dsp_executor_stereo)(in1, in2, out1, out2);	// Run the function pointed to by our function pointer
		}
	
	
	private:
		// DSP LOOP: mono
		void dsp_vector_calc_mono(tt_audio_signal *in, tt_audio_signal *out)
		{
			tt_sample_value temp;
			temp_vs = in->vectorsize;
			
			while(temp_vs--){
				temp = *in->vector++ * preamp_linear;

				// Integrated DC Blocker:
				last_output1 = temp - last_input1 + (last_output1 * 0.9997);
				last_input1 = temp;
				temp = last_output1;

				// Here starts the Overdrive:
				float sign = 1.0;
				
				// the equation only works in the positive quadrant...
				// so we strip off the sign, apply the equation, and reapply the sign
				if (temp < 0.0) {
					temp = -temp;
					sign = -1.0;
				}
				
				if (temp > 1.0){		// clip signal if it's out of range
					*out->vector++ = clip(temp * sign, float(-1.0), float(1.0));
				}
				else{
					*out->vector++ = sign * (1.0 - exp(drive * log(1.0 - temp)));
				}
			}
			in->reset(); out->reset();
		}


		// DSP LOOP: stereo
		void dsp_vector_calc_stereo(tt_audio_signal *in1, tt_audio_signal *in2, 
			tt_audio_signal *out1, tt_audio_signal *out2)
		{
			tt_sample_value temp_left, temp_right;
			temp_vs = in1->vectorsize;
			float sign_left, sign_right;
			
			while(temp_vs--){
				temp_left = *in1->vector++ * preamp_linear;
				temp_right = *in2->vector++ * preamp_linear;
				
				// Integrated DC Blocker:
				last_output1 = temp_left - last_input1 + (last_output1 * 0.9997);
				last_input1 = temp_left;
				last_output2 = temp_right - last_input2 + (last_output2 * 0.9997);
				last_input2 = temp_right;
				temp_left = last_output1;
				temp_right = last_output2;

				// Here starts the Overdrive:
				sign_left = 1.0;
				sign_right = 1.0;
				
				// the equation only works in the positive quadrant...
				// so we strip off the sign, apply the equation, and reapply the sign
				if(temp_left < 0.0){
					temp_left = -temp_left;
					sign_left = -1.0;
				}
				if(temp_right < 0.0){
					temp_right = -temp_right;
					sign_right = -1.0;
				}
				
				// LEFT CHANNEL
				if(temp_left > 1.0)		// clip signal if it's out of range
					*out1->vector++ = clip(temp_left * sign_left, float(-1.0), float(1.0));
				else
					*out1->vector++ = sign_left * (1.0 - exp(drive * log(1.0 - temp_left)));

				// RIGHT CHANNEL
				if(temp_right > 1.0)		// clip signal if it's out of range
					*out2->vector++ = clip(temp_right * sign_right, float(-1.0), float(1.0));
				else
					*out2->vector++ = sign_right * (1.0 - exp(drive * log(1.0 - temp_right)));
				
			}
			in1->reset(); in2->reset(); out1->reset(); out2->reset();
		}
		
		
		// DSP LOOP: mono - no dc blocking
		void dsp_vector_calc_mono_nodcblock(tt_audio_signal *in, tt_audio_signal *out)
		{
			tt_sample_value temp;
			temp_vs = in->vectorsize;
			
			while(temp_vs--){
				temp = *in->vector++ * preamp_linear;

				float sign = 1.0;
				
				// the equation only works in the positive quadrant...
				// so we strip off the sign, apply the equation, and reapply the sign
				if (temp < 0.0) {
					temp = -temp;
					sign = -1.0;
				}
				
				if (temp > 1.0){		// clip signal if it's out of range
					*out->vector++ = clip(temp * sign, float(-1.0), float(1.0));
				}
				else{
					*out->vector++ = sign * (1.0 - exp(drive * log(1.0 - temp)));
				}
			}
			in->reset(); out->reset();
		}


		// DSP LOOP: stereo - no dc blocking
		void dsp_vector_calc_stereo_nodcblock(tt_audio_signal *in1, tt_audio_signal *in2, 
			tt_audio_signal *out1, tt_audio_signal *out2)
		{
			tt_sample_value temp_left, temp_right;
			temp_vs = in1->vectorsize;
			float sign_left, sign_right;
			
			while(temp_vs--){
				temp_left = *in1->vector++ * preamp_linear;
				temp_right = *in2->vector++ * preamp_linear;
				sign_left = 1.0;
				sign_right = 1.0;
				
				// the equation only works in the positive quadrant...
				// so we strip off the sign, apply the equation, and reapply the sign
				if(temp_left < 0.0){
					temp_left = -temp_left;
					sign_left = -1.0;
				}
				if(temp_right < 0.0){
					temp_right = -temp_right;
					sign_right = -1.0;
				}
				
				// LEFT CHANNEL
				if(temp_left > 1.0)		// clip signal if it's out of range
					*out1->vector++ = clip(temp_left * sign_left, float(-1.0), float(1.0));
				else
					*out1->vector++ = sign_left * (1.0 - exp(drive * log(1.0 - temp_left)));

				// RIGHT CHANNEL
				if(temp_right > 1.0)		// clip signal if it's out of range
					*out2->vector++ = clip(temp_right * sign_right, float(-1.0), float(1.0));
				else
					*out2->vector++ = sign_right * (1.0 - exp(drive * log(1.0 - temp_right)));
				
			}
			in1->reset(); in2->reset(); out1->reset(); out2->reset();
		}


		void dsp_vector_calc_mono_sine_nodcblock(tt_audio_signal *in, tt_audio_signal *out)
		{
			tt_sample_value temp;
			temp_vs = in->vectorsize;
			
			while(temp_vs--){
				temp = *in->vector++ * preamp_linear;
				
				if(temp > b) 
					temp = 1.;
				else if(temp < nb) 
					temp = -1.;
				else 
					temp = sin(z * temp) * s;
				*out->vector++ = temp * scale;
			}
			in->reset(); out->reset();
		}
		
		
		void dsp_vector_calc_stereo_sine_nodcblock(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2)
		{
			tt_sample_value 	temp_left, temp_right;
			temp_vs = in1->vectorsize;
			
			while(temp_vs--){
				temp_left = *in1->vector++ * preamp_linear;
				temp_right = *in2->vector++ * preamp_linear;
				
				if(temp_left > b) 
					temp_left = 1.;
				else if(temp_left < nb) 
					temp_left = -1.;
				else 
					temp_left = sin(z * temp_left) * s;
				
				if(temp_right > b) 
					temp_right = 1.;
				else if(temp_right < nb) 
					temp_right = -1.;
				else 
					temp_right = sin(z * temp_right) * s;
				
				*out1->vector++ = temp_left * scale;
				*out2->vector++ = temp_right * scale;
			}
			in1->reset(); in2->reset(); out1->reset(); out2->reset();
		}
		
		
		void dsp_vector_calc_mono_sine(tt_audio_signal *in, tt_audio_signal *out)
		{			
			tt_sample_value temp;
			temp_vs = in->vectorsize;
			
			while(temp_vs--){
				temp = *in->vector++ * preamp_linear;

				// Integrated DC Blocker:
				last_output1 = temp - last_input1 + (last_output1 * 0.9997);
				last_input1 = temp;
				temp = last_output1;

				// Here starts the Overdrive:				
				if(temp > b) 
					temp = 1.;
				else if(temp < nb) 
					temp = -1.;
				else 
					temp = sin(z * temp) * s;
				*out->vector++ = temp * scale;
			}
			in->reset(); out->reset();
		}
		

		void dsp_vector_calc_stereo_sine(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2)
		{
			tt_sample_value 	temp_left, temp_right;
			temp_vs = in1->vectorsize;
			
			while(temp_vs--){
				temp_left = *in1->vector++ * preamp_linear;
				temp_right = *in2->vector++ * preamp_linear;

				// Integrated DC Blocker:
				last_output1 = temp_left - last_input1 + (last_output1 * 0.9997);
				last_input1 = temp_left;
				last_output2 = temp_right - last_input2 + (last_output2 * 0.9997);
				last_input2 = temp_right;
				temp_left = last_output1;
				temp_right = last_output2;

				// Here starts the Overdrive:				
				if(temp_left > b) 
					temp_left = 1.;
				else if(temp_left < nb) 
					temp_left = -1.;
				else 
					temp_left = sin(z * temp_left) * s;
				
				if(temp_right > b) 
					temp_right = 1.;
				else if(temp_right < nb) 
					temp_right = -1.;
				else 
					temp_right = sin(z * temp_right) * s;
				
				*out1->vector++ = temp_left * scale;
				*out2->vector++ = temp_right * scale;
			}
			in1->reset(); in2->reset(); out1->reset(); out2->reset();
		}
		
};


#endif	// TT_OVERDRIVE_H

