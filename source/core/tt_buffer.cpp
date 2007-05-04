#include "tt_buffer.h"


// OBJECT LIFE					
TT_INLINE tt_buffer::tt_buffer(long val)								// Constructor
{
	init();
	set_attr(k_length_samples, val);
}

/*BECAUSE THE ABOVE HAS A DEFAULT VALUE, THAT DEFAULT VALUE WILL BE USED IF NOTHING IS SUPPLIED
tt_buffer()										// Constructor
{
	init();
}
*/
TT_INLINE 
tt_buffer::~tt_buffer()										// Destructor
{
	buffer_free();
}


// ATTRIBUTES
TT_INLINE 
tt_err tt_buffer::set_attr(tt_selector sel, const tt_value &a)	// Set Attributes
{
	tt_float32 val = a;
	
	switch (sel){
		case k_length_ms:
			length_ms = val;
			length_samples = long(length_ms * (sr / 1000.0));
			break;	
		case k_length_samples:
			length_samples = (unsigned long)(val + 0.49);	// round
			length_ms = length_samples * (1000.0 / sr);
			break;
		default:
			return TT_ERR_ATTR_INVALID;
	}
	buffer_free();
	contents = (tt_sample_value *)mem_alloc(length_samples * sizeof(tt_sample_value));
	return TT_ERR_NONE;
}

TT_INLINE
tt_err tt_buffer::get_attr(tt_selector sel, tt_value &a)				// Get Attributes
{
	switch (sel){
		case k_length_ms:
			a = length_ms;
			break;
		case k_length_samples:
			a = length_samples;
			break;
		default:
			return TT_ERR_ATTR_INVALID;
	}
	return TT_ERR_NONE;
}


// METHOD: SET_BUFFER
TT_INLINE 
void tt_buffer::set_buffer(tt_buffer *newbuffer)
{
	buffer_free();								// release the internal buffer if appropriate
	contents = newbuffer->contents;		// point our contents-pointer to the external one
	length_samples = newbuffer->length_samples;
	length_ms = newbuffer->length_ms;

	local_contents = false;
}


// METHOD: PEEK
TT_INLINE tt_sample_value tt_buffer::peek(unsigned long index)
{
	return contents[clip(index, 0UL, length_samples - 1)];
}
		
// METHOD: POKE
TT_INLINE void tt_buffer::poke(unsigned long index, tt_sample_value val)
{
	contents[clip(index, 0UL, length_samples - 1)] = val;
}


// METHOD: FILL
TT_INLINE void tt_buffer::fill(tt_selector sel)
{
	unsigned long i, j;

	switch(sel){
		case k_sine:							// SINE WAVE
			for(i=0; i < length_samples; i++){
				contents[i] = sin(twopi * (double(i) / (double(length_samples) - 1.0)));
				// log_post("FILL: %f", contents[i]);		
			}			
			break;				
		case k_sine_mod:							// (modulator version: ranges from 0 to 1)
			for(i=0; i < length_samples; i++){
				contents[i] = 0.5 + (0.5 * sin(twopi * (double(i) / (double(length_samples) - 1.0))));
			}
			break;
			
		case k_cos:								// COSINE WAVE
			for(i=0; i < length_samples; i++)
				contents[i] = cos(twopi * (double(i) / (double(length_samples) - 1.0)));
			break;					
		case k_cos_mod:								// (modulator version)
			for(i=0; i < length_samples; i++)
				contents[i] = 0.5 + (0.5 * cos(twopi * (double(i) / (double(length_samples) - 1.0))));
			break;
			
		case k_square:							// SQUARE WAVE (not band-limited)
			for(i=0; i < (length_samples / 2); i++)
				contents[i] = 1.0;				
			for(i=i; i < length_samples; i++)
				contents[i] = -1.0;	
			break;					
		case k_square_mod:							// (modulator version)
			for(i=0; i < (length_samples / 2); i++)
				contents[i] = 1.0;				
			for(i=i; i < length_samples; i++)
				contents[i] = 0.0;	
			break;
			
		case k_triangle:						// TRIANGLE WAVE (not band-limited)
			for (i=0; i < (length_samples / 4); i++) 
				contents[i] = float(i) / (length_samples / 4);
			for (j=i-1; i < (length_samples / 2); i++, j--) 
				contents[i] = contents[j];
			for (j=0; i < length_samples; i++, j++)	
				contents[i] = 0.0 - contents[j];
			break;				
		case k_triangle_mod:						// (modulator version)
			for (i=0; i < (length_samples / 4); i++) 
				contents[i] = 0.5 + float(i) / (length_samples / 2);
			for (j=i-1; i < (length_samples / 2); i++, j--) 
				contents[i] = contents[j];
			for (j=0; i < length_samples; i++, j++)	
				contents[i] = 1.0 - contents[j];
			break;				
			
		case k_ramp:							// RAMP WAVE
			for (i=0; i < length_samples; i++) 
				contents[i] = -1.0 + (2.0 * (float(i) / length_samples));
			break;
		case k_ramp_mod:							// (modulator version)
			for (i=0; i < length_samples; i++) 
				contents[i] = float(i) / length_samples;
			break;

		case k_sawtooth:							// SAWTOOTH WAVE
			for(i=0, j=length_samples-1; i < length_samples; i++)
				contents[j--] = -1.0 + (2.0 * (float(i) / length_samples));
			break;
		case k_sawtooth_mod:							// (modulator version)
			for(i=0, j=length_samples-1; i < length_samples; i++)
				contents[j--] = float(i) / length_samples;
			break;

		case k_padded_welch_512:				// FIXED 512 POINT WINDOW OF THE PADDED WELCH TYPE
			for(i=0; i < 256; i++)
				contents[i] = tt_audio_base::lookup_half_paddedwelch[i];
			for(j=i-1; i < 512;i++, j--){
				contents[i] = tt_audio_base::lookup_half_paddedwelch[j];
			}	
			break;
	}
}

// METHOD: FILL
TT_INLINE void tt_buffer::fill(tt_selector sel, tt_attribute_value param1, tt_attribute_value param2)
{
	unsigned long	i;
	double	temp;
	
	switch(sel){
		case k_gauss:							// GAUSSIAN
			for(i=0; i < length_samples; i++){
				temp = double(i) / (double(length_samples) - 1);
				contents[i] = ((-1.0 * (temp - param2) * (temp - param2)) / (2 * param1 * param1)) / (param1 * sqrt(twopi));
				contents[i] = contents[i] * 0.3133;	// scale it
				//log_post("FILL: %f", contents[i]);
			}
			break;

	}
}

// METHOD: INIT
TT_INLINE void tt_buffer::init()
{
	local_contents = true;
	contents = 0;
	length_ms = 0;
	length_samples = 0;		
}


// METHOD: BUFFER_FREE
TT_INLINE void tt_buffer::buffer_free()
{
	if(local_contents){
		mem_free(contents);
		contents = 0;
	}	
}


// METHOD: CLEAR
TT_INLINE void tt_buffer::clear()
{
	unsigned long i;
	if(contents){
		for(i=0; i < length_samples; i++)
			contents[i] = 0.0;
	}
}
