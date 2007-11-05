//	TTButterBRObject
//	2nd order IIR Butterworth band reject filter
//	Copyright © 2007 by Trond Lossius & Timothy Place
//	License: GNU LGPL

#import "TTButterBR.h"


@implementation TTButterBRObject

- (id)init
{
	[super init];
	[self clearMessage];
	[self setFloat:441.0 forKey:@"frequencyAttribute"];
	[self setFloat:100.0 forKey:@"qAttribute"];
	return self;
}	


- (void) dealloc
{
	[super dealloc];
}


- (TTErr) clearMessage
{
	short i;

	for(i=0; i<TT_MAX_NUM_CHANNELS; i++){
		x1[i] = x2[i] = y1[i] = y2[i] = 0;
	}
}


// accessor for frequencyAttribute
- (void) setFrequencyAttribute:(float)newValue
{
	frequencyAttribute = newValue;
	[self calculateCoefficients];
}

// accessor for qAttribute
- (void) setQAttribute:(float)newValue
{
	qAttribute = newValue;
	[self calculateCoefficients];
}



// Calculate new coefficients:
- (void) calculateCoefficients
{
	double bw, c, d;
	
	bw = frequencyAttribute/qAttribute;
	c = tan( TTPi*bw*srr );		// srr is the reciprocal of the sample-rate (1/sr)
	d = 2. * cos( 2*TTPi*(frequencyAttribute*srr) );
	a0 = 1. / (1. + c);
	a1 = -1.0 * a0 * d;
	a2 = a0;
	b1 = a1;
	b2 = a0 * (1.-c);
}

// override the inherited sample-rate setter so we can update the cutoff frequency if needed
- (void) setSr:(long)newValue
{
	if(newValue != sr){
		[super setLong:newValue forKey:@"sr"];				// manually call the inherited accessor, since we still want it
		[self calculateCoefficients];						// recalculate
	}
}


// DSP LOOP
- (TTErr) processAudioWithInput:(TTAudioSignal *)audioIn andOutput:(TTAudioSignal *)audioOut
{
	short			vs;
	float			*in,
					*out;
	short			numChannels = [TTAudioSignal GetMinNumChannelsForASignal:audioIn andAnotherSignal:audioOut];
	short			channel;
	TTSampleValue	x0, y0;

	if(bypassAttribute)
		return [super processAudioWithInput:audioIn andOutput:audioOut];

	// If there are more inputs than outputs, use the last input to set the frequency
	if(audioIn->numChannels > numChannels)
		[self setFrequencyAttribute:(*audioIn->vectors[audioIn->numChannels - 1]) ];

	for(channel=0; channel<numChannels; channel++){
		in = audioIn->vectors[channel];
		out = audioOut->vectors[channel];
		vs = audioIn->vs;
		
		while(vs--){
			x0 = *in++;
			y0 = TTAntiDenormal(a0*x0 + a2*x2[channel] - b1*y1[channel] - b2*y2[channel]);
			x2[channel] = x1[channel];
			x1[channel] = x0;
			y2[channel] = y1[channel];
			*out++ = y1[channel] = y0;
		}
	}
	return TT_ERR_NONE;
}


@end
