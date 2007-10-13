//	TTAudioSignal
//	Wrapper for passing N-channels of audio vectors 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL

#define __TT_AUDIO_SIGNAL__

#import "TTObject.h"

@interface TTAudioSignal : NSObject {
	// because this code is used in audio-contexts, with high-performance demands, all members
	// are made public for direct access in audio processing loops
	@public
		long	sr;					// every-channel must have the same sample-rate, vectorsize, etc.
		long	vs;
		short	maxNumChannels;
		short	numChannels;
		float	**vectors;			// an array of pointers to the first sample in a vector
}

- (id)			initWithMaxNumChannels:(long)howmany;
- (TTErr)		setVectorSize:(long)numsamples;
- (TTErr)		setSampleRate:(long)frequency;
- (TTErr)		setSamplesForChannel:(long)channel withVector:(float *)vector;

+ (short)		GetMinNumChannelsForASignal:(TTAudioSignal*)audioIn andAnotherSignal:(TTAudioSignal*)audioOut;

@end
