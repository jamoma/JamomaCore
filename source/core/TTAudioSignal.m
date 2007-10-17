//	TTAudioSignal
//	Wrapper for passing N-channels of audio vectors 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL
	
#import "TTAudioSignal.h"


// TODO: The old tt audio signal could point to external memory, or allocate its own for the vectors
// This enum was used to keep trac of which was the case:
// enum selectors{
//	k_mode_local = 1,
//	k_mode_external = 0,
//};


// TODO: implement clear() method -- ZERO OUT A VECTOR'S CONTENTS
		
// TODO: implement fill() method --- SET ALL VALUES IN THE SIGNAL TO A CONSTANT



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
		return signal2->numChannels;
	else
		return signal1->numChannels;
}


@end
