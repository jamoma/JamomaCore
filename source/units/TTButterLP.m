//	TTButterLPObject
//	2nd order IIR Butterworth low pass filter
//	Copyright © 2007 by Trond Lossius & Timothy A. Place
//	License: GNU LGPL

#import "TTButterLP.h"


@implementation TTButterLPObject

- (id)init
{
	[super init];
	[self clearMessage];
	[self setFloat:1000.0 forKey:@"frequencyAttribute"];
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
	return TT_ERR_NONE;
}


// accessor for frequencyAttribute
- (void) setFrequencyAttribute:(float)newValue
{
	double c;
	
	frequencyAttribute = newValue;
	c = 1 / ( tan( TTPi*(frequencyAttribute*srr ) ) );		// srr is the reciprocal of the sample-rate (1/sr)
	a0 = 1 / (1 + TTSqrt2*c + c*c);
	a1 = 2*a0;
	a2 = a0;
	b1 = 2*a0*( 1 - c*c );
	b2 = a0 * (1 - TTSqrt2*c + c*c);		
}


// override the inherited sample-rate setter so we can update the cutoff frequency if needed
- (void) setSr:(long)newValue
{
	if(newValue != sr){
		[super setLong:newValue forKey:@"sr"];				// manually call the inherited accessor, since we still want it
		[self setFrequencyAttribute:frequencyAttribute];	// send the same frequency to ourself, but with a new SR it will update the coefficients
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
			y0 = TTAntiDenormal(a0*x0 - a1*x1[channel] + a2*x2[channel] - b1*y1[channel] - b2*y2[channel]);
			x2[channel] = x1[channel];
			x1[channel] = x0;
			y2[channel] = y1[channel];
			*out++ = y1[channel] = y0;
		}
	}
	return TT_ERR_NONE;
}


@end
