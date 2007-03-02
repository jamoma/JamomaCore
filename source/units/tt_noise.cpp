#include "tt_noise.h"


// OBJECT LIFE					
TT_INLINE 
tt_noise::tt_noise()										// Constructor		
{
	// set defaults
	set_attr(k_mode, k_mode_white);
	b0 = b1 = b2 = b3 = b4 = b5 = b6 = noise_accum = 0;
}

TT_INLINE 
tt_noise::~tt_noise()									// Destructor
{
	;
}


// ATTRIBUTES
TT_INLINE 
tt_err tt_noise::set_attr(tt_selector sel, const tt_atom &a)	// Set Attributes
{
	switch(sel){
		case k_mode:
			mode = a;
			if(mode == k_mode_white)
				dsp_executor = &tt_noise::dsp_vector_calc_white;
			else if(mode == k_mode_pink)
				dsp_executor = &tt_noise::dsp_vector_calc_pink;
			else if(mode == k_mode_brown)
				dsp_executor = &tt_noise::dsp_vector_calc_brown;
			else if(mode == k_mode_blue)
				dsp_executor = &tt_noise::dsp_vector_calc_blue;
			break;
		default:
			return TT_ERR_ATTR_INVALID;	// really should make this throw and exception (applies to all objects)!
	}
	return TT_ERR_NONE;
}

TT_INLINE 
tt_err tt_noise::get_attr(tt_selector sel, tt_atom &a)				// Get Attributes
{
	switch (sel){
		case k_mode:
			a = mode;
			break;
		default:
			return TT_ERR_ATTR_INVALID;	// really should make this throw and exception (applies to all objects)!
	}
	return TT_ERR_NONE;
}


/*****************************************************
 * DSP LOOPS
 *****************************************************/

// Publically exposed interface for this object's dsp routine
TT_INLINE 
void tt_noise::dsp_vector_calc(tt_audio_signal *out)
{
	(*this.*dsp_executor)(out);	// Run the function pointed to by our function pointer
}


// DSP LOOP: WHITE
void tt_noise::dsp_vector_calc_white(tt_audio_signal *out)
{
	temp_vs = out->vectorsize;
    while (temp_vs--){
		// Generate white noise
		noise_accum = (noise_accum * 3877 + 29573) % 139968;	// Random number generator
		*out->vector++ = 1.0 - (2.0 * float(noise_accum) / 139968);		// Scale to audio range
    }
	out->reset();
}		

// DSP LOOP: PINK
void tt_noise::dsp_vector_calc_pink(tt_audio_signal *out)
{
	tt_sample_value temp;
	temp_vs = out->vectorsize;
	
    while (temp_vs--){
		// Generate white noise
		noise_accum = (noise_accum * 3877 + 29573) % 139968;	// Random number generator
		temp = 1.0 - (2.0 * float(noise_accum) / 139968);		// Scale to audio range

		// Pinking Filter
		b0 = 0.99886 * b0 + temp * 0.0555179;
		b1 = 0.99332 * b1 + temp * 0.0750759; 
		b2 = 0.96900 * b2 + temp * 0.1538520; 
		b3 = 0.86650 * b3 + temp * 0.3104856; 
		b4 = 0.55000 * b4 + temp * 0.5329522; 
		b5 = -0.7616 * b5 - temp * 0.0168980; 
		b6 = temp * 0.115926;
		temp = b0 + b1 + b2 + b3 + b4 + b5 + b6 + temp * 0.5362; 

		*out->vector++ = temp * 0.1;
    }
	out->reset();
}		

// DSP LOOP: BROWN
void tt_noise::dsp_vector_calc_brown(tt_audio_signal *out)
{
	tt_sample_value temp;
	temp_vs = out->vectorsize;
	
    while(temp_vs--){
		// Generate white noise
		noise_accum = (noise_accum * 3877 + 29573) % 139968;	// Random number generator
		temp = 1.0 - (2.0 * float(noise_accum) / 139968);		// Scale to audio range

		// "Browning" Filter
		temp = temp * 0.1;									// scale the white noise			
		temp = clip(b1 + temp, float(-1.0), float(1.0));	// 6dB per octave lowpass
		b1 = temp;											// store Feedback Sample
		*out->vector++ = temp * 0.25;						// output	
    }
	out->reset();
}		

// DSP LOOP: BLUE
void tt_noise::dsp_vector_calc_blue(tt_audio_signal *out)
{
	tt_sample_value temp;
	temp_vs = out->vectorsize;
	
    while (temp_vs--){
		// Generate white noise
		noise_accum = (noise_accum * 3877 + 29573) % 139968;	// Random number generator
		temp = 1.0 - (2.0 * float(noise_accum) / 139968);		// Scale to audio range

		// "Blue-ing" Filter
		temp = temp - b1;									// 6dB per octave highpass (real blue noise = 3dB/oct)
		temp = clip(temp, float(-1.0), float(1.0));			// clip 
		*out->vector++ = temp;								// output
		b1 = temp;											// store feedback sample
    }
	out->reset();
}		
