//	TTAudioObject
//	Base class for audio objects in TTBlue 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL
	
#import "TTAudioObject.h"


@implementation TTAudioObject


- (void) setSr:(long)value
{
	if(value != sr){
		sr = value;
		srr = 1.0 / value;
		srm = (double)sr * 0.001;
	}
}


- (TTErr)	processAudioWithInput:(TTAudioSignal *)audioIn andOutput:(TTAudioSignal *)audioOut;
{
	short			vs = audioIn->vs;
	float			*in,
					*out;
	short			numchannels = [TTAudioSignal GetMinNumChannelsForASignal:audioIn andAnotherSignal:audioOut];
	short			channel;

	for(channel=0; channel<numchannels; channel++){
		in = audioIn->vectors[channel];
		out = audioOut->vectors[channel];

		while(vs--)
			*out++ = *in++;
	}
	return TT_ERR_NONE;
}

@end
