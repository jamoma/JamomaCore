//	TTCopyObject
//	Copy signals -- TODO: Perhaps this should just be built into the TTAudioSignal class?
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL

#import "TTCopy.h"


@implementation TTCopyObject

- (id)init
{
	[super init];
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
	
	for(channel=0; channel<numchannels; channel++){
		in = signals_in->vectors[channel];
		out = signals_out->vectors[channel];
		
		while(vs--)
			*out++ = *in++;
	}
}


@end
