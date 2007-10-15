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


- (long) setSamplesForChannel:(long)channel withVector:(float *)newVector
{
	// could check against maxnumchannels here
	vectors[channel] = newVector;
	return 0;
}


+ (short) GetMinNumChannelsForASignal:(TTAudioSignal*)signal1 andAnotherSignal:(TTAudioSignal*)signal2
{
	if(signal1->numChannels > signal2->numChannels)
		return signal1->numChannels;
	else
		return signal2->numChannels;
}


@end
