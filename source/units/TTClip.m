//	TTClipObject
//	Signal clipping / hard limiting
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL

#import "TTClip.h"


@implementation TTClipObject

- (id)init
{
	self = [super init];
	if(self){
		lowLimitAttribute = -1.0;
		highLimitAttribute = 1.0;
	}
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
	
	for(channel=0; channel<numchannels; channel++){
		in = signals_in->vectors[channel];
		out = signals_out->vectors[channel];
		
		while(vs--)
			*out++ = ttclip(*in++, lowLimitAttribute, highLimitAttribute);
	}
}


@end

#include "tt_clip.h"
