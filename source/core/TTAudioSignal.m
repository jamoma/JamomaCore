//	TTAudioSignal
//	Wrapper for passing N-channels of audio vectors 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL
	
#import "TTAudioSignal.h"


@implementation TTAudioSignal


- (id) initWithMaxNumChannels:(long)howMany
{
	[super init];
	self->maxNumChannels = howMany;
	vectors = (float **)malloc(sizeof(float *) * howMany);
	//TODO: should I need to zero the vectors here?  probably...
	return self;
}


- (void) dealloc
{
	free(vectors);
	[super dealloc];
}


- (TTErr) setSamplesForChannel:(long)channel withVector:(float *)vector
{
	// could check against maxnumchannels here
	vectors[channel] = vector;
	return TT_ERR_NONE;
}


+ (short) GetMinNumChannelsForASignal:(TTAudioSignal*)signal1 andAnotherSignal:(TTAudioSignal*)signal2
{
	if(audioIn->numChannels > audioOut->numChannels)
		return audioOut->numChannels;
	else
		return audioIn->numChannels;
}


@end
