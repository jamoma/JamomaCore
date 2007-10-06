//	TTAudioSignal
//	Wrapper for passing N-channels of audio vectors 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL
	
//	NOTE: This code is identical to that of the MaxAudioSignal that is a part of
//	the MaxObject project from Electrotap.  Please try to keep these classes in
//	sync for interoperability...

#import "TTAudioObject.h"


@interface TTAudioSignal : NSObject {
	// because this code is used in audio-contexts, with high-performance demands, all members
	// are made public for direct access in audio processing loops
	@public
	long	sr;					// every-channel must have the same sample-rate, vectorsize, etc.
	long	vs;
	short	maxnumchannels;
	short	numchannels;
	float	**vectors;			// an array of pointers to the first sample in a vector
}


- (id)			initWithMaxNumChannels:(long)howmany;
- (t_max_err)	setVectorSize:(long)numsamples;
- (t_max_err)	setSampleRate:(long)frequency;
- (t_max_err)	setSamplesForChannel:(long)channel withVector:(float *)vector;


@end
