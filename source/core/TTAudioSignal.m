//	TTAudioSignal
//	Wrapper for passing N-channels of audio vectors 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL
	
//	NOTE: This code is identical to that of the MaxAudioSignal that is a part of
//	the MaxObject project from Electrotap.  Please try to keep these classes in
//	sync for interoperability...

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


- (TTErr) setVectorSize:(long)numsamples
{
	vs = numsamples;
	return TT_ERR_NONE;
}


- (TTErr) setSampleRate:(long)frequency
{
	sr = frequency;
	return TT_ERR_NONE;
}


- (TTErr) setSamplesForChannel:(long)channel withVector:(float *)vector
{
	// could check against maxnumchannels here
	vectors[channel] = vector;
	return TT_ERR_NONE;
}


+ (short) GetMinNumChannelsForASignal:(TTAudioSignal*)audioIn andAnotherSignal:(TTAudioSignal*)audioOut
{
	if(audioIn->numChannels > audioOut->numChannels)
		return audioOut->numChannels;
	else
		return audioIn->numChannels;
}


@end
