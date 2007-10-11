//	TTDownsample
//	Reduce a vector's size 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL

#import "TTDownsample.h"


@implementation TTDownsample

- (id)init
{
	[super init];
	[self setLong:1 forKey:@"factorAttribute"];
	return self;
}


- (void) dealloc
{
	[super dealloc];
}


- (TTErr) processAudioWithInput:(TTAudioSignal *)signals_in andOutput:(TTAudioSignal *)signals_out
{
	short			vs = signals_in->vs;
	float			*in,
					*out;
	short			numchannels = [TTAudioSignal GetMinNumChannelsForASignal:signals_in andAnotherSignal:signals_out];
	short			channel;
	TTSampleValue	temp;
	short			downSize;
	
	for(channel=0; channel<numchannels; channel++){
		in = signals_in->vectors[channel];
		out = signals_out->vectors[channel];
		
		while(vs){
			down_size = factor;
			while(down_size--)				// simple SAH technique -- TODO: Add interpolation options
				temp = *in++;
			*out++ = temp;
			vs -= factor;
		}
	}
}


@end
