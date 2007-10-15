//	TTButterLPObject
//	2nd order IIR Butterworth low pass filter
//	Copyright © 2007 by Trond Lossius & Timothy A. Place
//	License: GNU LGPL

#import "TTButterLP.h"


@implementation TTButterLPObject

- (id)init
{
	[super init];
	[self clear];
	return self;
}	


- (void) dealloc
{
	[super dealloc];
}


- (TTErr) clear
{
	short i;

	for(i=0; i<TT_MAX_NUM_CHANNELS; i++){
		x1[i] = x2[i] = y1[i] = y2[i] = 0;
	}
	return TT_ERR_NONE;
}


// DSP LOOP - currently assumes static (control rate) cutoff frequency

- (TTErr) processAudioWithInput:(TTAudioSignal *)audioIn andOutput:(TTAudioSignal *)audioOut
{
	short			vs = audioIn->vs;
	float			*in,
					*out;
	float			a0, a1, a2, b1, b2, c;
	short			numchannels = [TTAudioSignal GetMinNumChannelsForASignal:audioIn andAnotherSignal:audioOut];
	short			channel;
	TTSampleValue	x0, y0;

	if(bypassAttribute)
		return [super processAudioWithInput:audioIn andOutput:audioOut];

	c = 1 / ( tan( PI*(cutoff*srr ) ) );		// srr is the reciprocal of the sample-rate (1/sr)
	a0 = 1 / (1 + sqrt2*c + c*c);
	a1 = 2*a0;
	a2 = a0;
	b1 = 2*a0*( 1 - c*c );
	b2 = a0 * (1 - sqrt2*c + c*c);	
	
	for(channel=0; channel<numchannels; channel++){
		in = audioIn->vectors[channel];
		out = audioOut->vectors[channel];
		
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
