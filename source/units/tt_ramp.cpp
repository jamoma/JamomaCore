#include "tt_ramp.h"


// OBJECT LIFE					
tt_ramp::tt_ramp()									// Constructor		
{
	current = 0;
	destination = 0;
	step = 0;
	set_attr(k_mode, k_mode_vector_accurate);
	direction = 0;
}

tt_ramp::~tt_ramp()									// Destructor
{
	;
}


// ATTRIBUTES
TT_INLINE 
tt_err tt_ramp::set_attr(tt_selector sel, const tt_value &a)	// Set Attributes
{
	tt_float32	val;
	
	switch (sel){
		case k_mode:
			mode = a;
			init();
			break;
		case k_current_value:
			current = a;
			break;
		case k_destination_value:
			destination = a;
			break;
		case k_ramp_ms:
			val = a;
			if((val <= 0 + anti_denormal_value) && (val >= 0 - anti_denormal_value)){
				step = 0;
				current = destination;
				direction = 0;
				init();
				return TT_ERR_NONE;
			}
			ramp_ms = val;
			ramp_samps = long((ramp_ms * 0.001) * sr);
			set_step();
			
			init();
			break;
		case k_ramp_samps:
			val = a;
			if(val == 0){
				step = 0;
				current = destination;
				direction = 0;
				init();
				return TT_ERR_NONE;
			}				
			ramp_samps = long(val);
			ramp_ms = 1000.0 * (ramp_samps / float(sr));
			set_step();
			init();
			break;
		default:
			return TT_ERR_ATTR_INVALID;
	}
	return TT_ERR_NONE;
}


TT_INLINE 
tt_err tt_ramp::get_attr(tt_selector sel, tt_value &a)				// Get Attributes
{
	switch (sel){
		case k_current_value:
			a = current;
			break;
		case k_destination_value:
			a = destination;
			break;
		case k_ramp_ms:
			a = ramp_ms;
			break;
		case k_ramp_samps:
			a = tt_attribute_value(ramp_samps);
			break;
		default:
			return TT_ERR_ATTR_INVALID;
	}
	return TT_ERR_NONE;
}



// halt the ramp
TT_INLINE void tt_ramp::stop()
{
	step = 0;	
}


// DSP LOOP
// Publically exposed interface for the dsp routine
TT_INLINE void tt_ramp::dsp_vector_calc(tt_audio_signal *out)
{
	(*this.*dsp_executor)(out);	// Run the function pointed to by our function pointer
}
	
// DSP LOOP - SAMPLE ACCURATE - UP
void tt_ramp::dsp_vector_calc_sa_up(tt_audio_signal *out)
{
	temp_vs = out->vectorsize;
	while(temp_vs--){
		if(step){
			current += step;
			if(current >= destination){
				step = 0;
				current = destination; // clamp
			}
		}
		*out->vector++ = current;	
	}
	out->reset();
}

// DSP LOOP - SAMPLE ACCURATE - DOWN
void tt_ramp::dsp_vector_calc_sa_down(tt_audio_signal *out)
{
	temp_vs = out->vectorsize;
	while(temp_vs--){
		if(step){
			current += step;
			if(current <= destination){
				step = 0;
				current = destination; // clamp
			}
		}
		*out->vector++ = current;	
	}
	out->reset();
}

// DSP LOOP - VECTOR ACCURATE - UP
void tt_ramp::dsp_vector_calc_va_up(tt_audio_signal *out)
{
	if(step){
		current += (step * out->vectorsize);
		if(current >= destination){
			step = 0;
			current = destination;	// clamp
		}
	}
	*out->vector++ = current;	
	out->reset();
}

// DSP LOOP - VECTOR ACCURATE - DOWN
void tt_ramp::dsp_vector_calc_va_down(tt_audio_signal *out)
{
	if(step){
		current += (step * out->vectorsize);
		if(current <= destination){
			step = 0;
			current = destination;	// clamp
		}
	}
	*out->vector++ = current;	
	out->reset();
}


// INIT
TT_INLINE void tt_ramp::init()
{
	// Set the function pointers based on the attributes above
	if((mode == k_mode_sample_accurate) && (direction == 0))
		dsp_executor = &tt_ramp::dsp_vector_calc_sa_up;					
	else if((mode == k_mode_sample_accurate) && (direction == 1))
		dsp_executor = &tt_ramp::dsp_vector_calc_sa_down;					
	else if((mode == k_mode_vector_accurate) && (direction == 0))
		dsp_executor = &tt_ramp::dsp_vector_calc_va_up;					
	else
		dsp_executor = &tt_ramp::dsp_vector_calc_va_down;
}

// private function needed for setting attr
TT_INLINE void tt_ramp::set_step()					
{
	step = (destination - current) / double(ramp_samps);
	direction = (step < 0);
}
