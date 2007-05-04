#include "tt_overdrive.h"


// OBJECT LIFE					
tt_overdrive::tt_overdrive()								// Constructor		
{
	mode = 0;
	set_attr(k_drive, 3.0);	
	set_attr(k_defeat_dcblocker, 0.0);
	clear();
}

tt_overdrive::~tt_overdrive()								// Destructor
{
	;
}


// ATTRIBUTES
TT_INLINE 
tt_err tt_overdrive::set_attr(tt_selector sel, const tt_value &a)	// Set Attributes
{
	tt_float32 val = a;
	
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
			return TT_ERR_NONE;
		case k_mode:
			mode = a;
			break;
		case k_defeat_dcblocker:
			defeat_dcblocker = a;
			break;
		default:
			return TT_ERR_ATTR_INVALID;	// really should make this throw and exception (applies to all objects)!
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
	return TT_ERR_NONE;
}

TT_INLINE 
tt_err tt_overdrive::get_attr(tt_selector sel, tt_value &a)				// Get Attributes
{
	switch (sel){
		case k_drive:
			a = drive;
			break;
		default:
			return TT_ERR_ATTR_INVALID;	// really should make this throw and exception (applies to all objects)!
	}
	return TT_ERR_NONE;
}


// METHOD: clear
TT_INLINE 
void tt_overdrive::clear()
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
TT_INLINE void tt_overdrive::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	(*this.*dsp_executor_mono)(in, out);	// Run the function pointed to by our function pointer
}

// Publically exposed interface for STEREO dsp routine
TT_INLINE void tt_overdrive::dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2)
{
	(*this.*dsp_executor_stereo)(in1, in2, out1, out2);	// Run the function pointed to by our function pointer
}


// DSP LOOP: mono
void tt_overdrive::dsp_vector_calc_mono(tt_audio_signal *in, tt_audio_signal *out)
{
	tt_sample_value temp;
	temp_vs = in->vectorsize;
	
	while(temp_vs--){
		temp = *in->vector++;

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
void tt_overdrive::dsp_vector_calc_stereo(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2)
{
	tt_sample_value temp_left, temp_right;
	temp_vs = in1->vectorsize;
	float sign_left, sign_right;
	
	while(temp_vs--){
		temp_left = *in1->vector++;
		temp_right = *in2->vector++;
		
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
void tt_overdrive::dsp_vector_calc_mono_nodcblock(tt_audio_signal *in, tt_audio_signal *out)
{
	tt_sample_value temp;
	temp_vs = in->vectorsize;
	
	while(temp_vs--){
		temp = *in->vector++;

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
void tt_overdrive::dsp_vector_calc_stereo_nodcblock(tt_audio_signal *in1, tt_audio_signal *in2,	tt_audio_signal *out1, tt_audio_signal *out2)
{
	tt_sample_value temp_left, temp_right;
	temp_vs = in1->vectorsize;
	float sign_left, sign_right;
	
	while(temp_vs--){
		temp_left = *in1->vector++;
		temp_right = *in2->vector++;
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


void tt_overdrive::dsp_vector_calc_mono_sine_nodcblock(tt_audio_signal *in, tt_audio_signal *out)
{
	tt_sample_value temp;
	temp_vs = in->vectorsize;
	
	while(temp_vs--){
		temp = *in->vector++;
		
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


void tt_overdrive::dsp_vector_calc_stereo_sine_nodcblock(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2)
{
	tt_sample_value 	temp_left, temp_right;
	temp_vs = in1->vectorsize;
	
	while(temp_vs--){
		temp_left = *in1->vector++;
		temp_right = *in2->vector++;
		
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


void tt_overdrive::dsp_vector_calc_mono_sine(tt_audio_signal *in, tt_audio_signal *out)
{			
	tt_sample_value temp;
	temp_vs = in->vectorsize;
	
	while(temp_vs--){
		temp = *in->vector++;

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


void tt_overdrive::dsp_vector_calc_stereo_sine(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2)
{
	tt_sample_value 	temp_left, temp_right;
	temp_vs = in1->vectorsize;
	
	while(temp_vs--){
		temp_left = *in1->vector++;
		temp_right = *in2->vector++;

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
