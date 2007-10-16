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


- (TTErr) processAudioWithInput:(TTAudioSignal *)audioIn andOutput:(TTAudioSignal *)audioOut
{
	short			vs;
	float			*in,
					*out;
	short			numchannels = [TTAudioSignal GetMinNumChannelsForASignal:audioIn andAnotherSignal:audioOut];
	short			channel;
	TTSampleValue	temp;
	short			downSize;
	
	for(channel=0; channel<numchannels; channel++){
		in = audioIn->vectors[channel];
		out = audioOut->vectors[channel];
		vs = audioIn->vs;
		
		while(vs){
			down_size = factorAttribute;
			while(down_size--)				// simple SAH technique -- TODO: Add interpolation options
				temp = *in++;
			*out++ = temp;
			vs -= factorAttribute;
		}
	}
}


@end
