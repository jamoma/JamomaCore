//	TTAudioObject
//	Base class for audio objects in TTBlue 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL
	
#import "TTAudioObject.h"

// Globals
long TTGlobalSampleRate = TT_DEFAULT_SAMPLERATE;



@implementation TTAudioObject


- (id) init
{
	[super init];

	sr = TTGlobalSampleRate;
	srr = 1.0 / TTGlobalSampleRate;
	srm = (double)sr * 0.001;

	return self;
}


- (void) setSr:(long)newValue
{
	if(newValue != sr){
		sr = newValue;
		srr = 1.0 / newValue;
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
