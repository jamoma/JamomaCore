//	TTDCBlockObject
//	dc offset filter / blocker 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL

#import "TTDCBlock.h"


@implementation TTDCBlockObject

- (id)init
{
	self = [super init];
	if(self){
		[self clear];
	}
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
		last_input[i] = 0;
		last_output[i] = 0;
	}
	return TT_ERR_NONE;
}


// DSP LOOP
// Note: an algorithm that is frequently used in Max:
//		"biquad~ 1.0 -1.0 -0.9997 0.0"
- (TTErr) processAudioWithInput:(TTAudioSignal *)signals_in andOutput:(TTAudioSignal *)signals_out
{
	short			vs = signals_in->vs;
	float			*in,
					*out;
	short			numchannels = [TTAudioSignal GetMinNumChannelsForASignal:signals_in andAnotherSignal:signals_out];
	short			channel;
	TTSampleValue	temp;
	
	for(channel=0; channel<numchannels; channel++){
		in = signals_in->vectors[channel];
		out = signals_out->vectors[channel];
		
		while(vs--){
			temp = *in++;
			*out++ = last_output[channel] = ttantidenormal(temp - last_input[channel] + (last_output[channel] * 0.9997));
			last_input[channel] = temp;
		}
	}
}


@end
