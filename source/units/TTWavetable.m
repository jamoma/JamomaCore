//	TTDCBlockObject
//	dc offset filter / blocker 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL

#import "TTWavetable.h"


@implementation TTWavetableObject

- (id)init
{
	[super init];

	// create a buffer
	wavetable = [[TTAudioBuffer alloc] initWithNumSamples:512];

	// set defaults
	[self setFloat:1.0 forKey:@"gainValue"];
	[self setFloat:1.0 forKey:@"frequencyAttribute"];
	
	set_attr(k_mode, k_mode_sine);

	return self;
}	


- (void) dealloc
{
	[wavetable release];
	[super dealloc];
}


- (void) setWavetableBuffer(TTAudioBuffer*)newBuffer
{
	[wavetable setBuffer:newBuffer];
}


- (void) setFrequencyAttribute:(TTFloat32)newFrequency
{
	long size = [wavetable getLongforKey:@"lengthSamples"];
	
	frequencyAttribute = TTFloatClip(newFrequency, 0.0, sr/2.0);
	index_delta = frequencyAttribute * size / sr;
}


- (void) setGainValue:(TTFloat32)newGain
{
	gain = newGain;
	gainInDB = TTAmplitudeToDecibels(newGain);	
}
			

- (void) setGainAttribute:(TTFloat32)newGain
{
	gainInDB = newGain;
	gain = TTDecibelsToAmplitude(newGain);
}


- (void) setWaveformAttribute:(NSString*)newWaveformName
{
	waveformAttribute = newWaveformName;
	[wavetable fill:waveformAttribute];
}

@end


// ATTRIBUTES
TT_INLINE 
tt_err tt_wavetable::set_attr(tt_selector sel, const tt_value &a)	// Set Attributes
{
	tt_float32	val = a;
	tt_value		temp;
	
	switch (sel){
		case k_frequency:
			break;
			
	}
	return TT_ERR_NONE;
}


// DSP LOOP - WITHOUT MODULATION
TT_INLINE 
void tt_wavetable::dsp_vector_calc(tt_audio_signal *out)
{
	unsigned long p1, p2;
	float diff;
	double wavetable_length = double(wavetable->length_samples); //512.0
	temp_vs = out->vectorsize;
							
    while(temp_vs--){

		// Move the play head
		index += index_delta;
		
		// Wrap the play head
		if(index >= wavetable_length)	    		
			index -= wavetable_length;
		else if(index < 0)	    		
			index += wavetable_length;
		
		// table lookup (linear interpolation)	
		p1 = (unsigned long)index;
		p2 = p1 + 1;
		diff = index - p1;	
		p2 &= ((wavetable->length_samples) - 1);	// fast modulo
								
    	*out->vector++ = ((wavetable->contents[p2] * diff) + (wavetable->contents[p1] * (1.0 - diff))) * gain;
    }
    out->reset();
}


// DSP LOOP - WITH MODULATION INPUT
TT_INLINE void tt_wavetable::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	unsigned long p1, p2;
	float diff, wavetable_length = float(wavetable->length_samples);
	temp_vs = in->vectorsize;
										
    while(temp_vs--){

		// Move the play head
		index += index_delta;
		
		// Apply modulation to the play head **
		index += *in->vector++ * wavetable_length / sr;
		
		// Wrap the play head
		if(index >= wavetable_length)	    		
			index -= wavetable_length;
		else if(index < 0)	    		
			index += wavetable_length;
		
		// table lookup (linear interpolation)	
		p1 = (unsigned long)index;
		p2 = p1 + 1;
		diff = index - p1;	
		p2 &= ((wavetable->length_samples) - 1);	// fast modulo
								
    	*out->vector++ = ((wavetable->contents[p2] * diff) + (wavetable->contents[p1] * (1.0 - diff))) * gain;
    }
    in->reset(); out->reset();
}
