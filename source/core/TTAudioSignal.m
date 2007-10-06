//	TTAudioSignal
//	Wrapper for passing N-channels of audio vectors 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL
	
//	NOTE: This code is identical to that of the MaxAudioSignal that is a part of
//	the MaxObject project from Electrotap.  Please try to keep these classes in
//	sync for interoperability...

#import "TTAudioSignal.h"


@implementation TTAudioSignal


- (id) initWithMaxNumChannels:(long)howmany
{
	self = [super init];
	if(self != nil){
		self->maxnumchannels = howmany;
		vectors = (float **)malloc(sizeof(float *) * howmany);
		//TODO: should I need to zero the vectors here?  probably...
	}
	return self;
}


- (void) dealloc
{
	free(vectors);
	[super dealloc];
}


- (t_max_err) setVectorSize:(long)numsamples
{
	vs = numsamples;
	return MAX_ERR_NONE;
}


- (t_max_err) setSampleRate:(long)frequency
{
	sr = frequency;
	return MAX_ERR_NONE;
}


- (t_max_err) setSamplesForChannel:(long)channel withVector:(float *)vector
{
	// could check against maxnumchannels here
	vectors[channel] = vector;
	return MAX_ERR_NONE;
}


@end
