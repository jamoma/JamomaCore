//	TTDCBlockObject
//	dc offset filter / blocker 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL

#import "TTWavetable.h"


@implementation TTWavetable

- (id)init
{
	[super init];

	// create a buffer
	wavetable = [[TTAudioBuffer alloc] initWithNumSamples:512];

	// set defaults
	[self setFloat:1.0 forKey:@"gainValue"];
	[self setFloat:1.0 forKey:@"frequencyAttribute"];
	[self setValue:@"Sine" forKey:@"waveformAttribute"];

	return self;
}	


- (void) dealloc
{
	[wavetable release];
	[super dealloc];
}


- (void) setWavetableBuffer:(TTAudioBuffer*)newBuffer
{
	[wavetable setBuffer:newBuffer];
}


- (void) setFrequencyAttribute:(TTFloat32)newFrequency
{
	long size = [wavetable longForKey:@"lengthSamples"];
	
	frequencyAttribute = TTFloat32Clip(newFrequency, 0.0, sr/2.0);
	index_delta = frequencyAttribute * size / sr;
}


- (void) setGainValue:(TTFloat32)newGain
{
	gainValue = newGain;
	gainAttribute = TTAmplitudeToDecibels(newGain);	
}
			

- (void) setGainAttribute:(TTFloat32)newGain
{
	gainAttribute = newGain;
	gainValue = TTDecibelsToAmplitude(newGain);
}


- (void) setWaveformAttribute:(NSString*)newWaveformName
{
	waveformAttribute = newWaveformName;
	[wavetable fillWithFunction:waveformAttribute];
}


// override the inherited sample-rate setter so we can update the cutoff frequency if needed
- (void) setSr:(long)newValue
{
	if(newValue != sr){
		[super setLong:newValue forKey:@"sr"];				// manually call the inherited accessor, since we still want it
		[self setFrequencyAttribute:frequencyAttribute];	// send the same frequency to ourself, but we have a new SR...
	}
}


// If there is an input, then it is a frequency modulation signal
// All outputs are the oscillator output
- (TTErr) processAudioWithInput:(TTAudioSignal *)audioIn andOutput:(TTAudioSignal *)audioOut
{
	short			vs;
	short			channel;
	TTSampleVector	in,
					out;
	TTUInt32		p1, 
					p2;
	float 			diff;
	double 			wavetableLength = (double)(wavetable->lengthSamples); 	//512.0

	if(audioIn->numChannels)
		in = audioIn->vectors[0];
	else
		in = NULL;

	for(channel=0; channel < audioOut->numChannels; channel++){
		out = audioOut->vectors[channel];
		vs = audioIn->vs;
		
		if(in){			// modulated
		    while(vs--){
				// Move the play head
				index += index_delta;

				// Apply modulation to the play head **
				index += *in++ * wavetableLength / sr;

				// Wrap the play head
				if(index >= wavetableLength)	    		
					index -= wavetableLength;
				else if(index < 0)	    		
					index += wavetableLength;

				// table lookup (linear interpolation)	
				p1 = (TTUInt32)index;
				p2 = p1 + 1;
				diff = index - p1;	
				p2 &= ((wavetable->lengthSamples) - 1);	// fast modulo

		    	*out++ = ((wavetable->contents[p2] * diff) + (wavetable->contents[p1] * (1.0 - diff))) * gainValue;
		    }
			in = audioIn->vectors[0];	// reset for next iteration
		}
		else{			// non-modulated
			while(vs--){
				// Move the play head
				index += index_delta;
		
				// Wrap the play head
				if(index >= wavetableLength)	    		
					index -= wavetableLength;
				else if(index < 0)	    		
					index += wavetableLength;

				// table lookup (linear interpolation)	
				p1 = (TTUInt32)index;
				p2 = p1 + 1;
				diff = index - p1;	
				p2 &= ((wavetable->lengthSamples) - 1);	// fast modulo
								
		    	*out++ = ((wavetable->contents[p2] * diff) + (wavetable->contents[p1] * (1.0 - diff))) * gainValue;
			}
		}
	}
	return TT_ERR_NONE;
}


@end
