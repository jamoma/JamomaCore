//	TTDegradeObject
//	sample-rate and bit-depth reduction 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL

#import "TTDegrade.h"

#define BIG_INT	0x00800000
#define ONE_OVER_BIG_INT 1.1920928955E-7

@implementation TTDegradeObject

- (id)init
{
	[super init];
	[self setLong:24 forKey:@"bitdepthAttribute"];
	[self setFloat:1.0 forKey:@"srRatioAttribute"];

	accumulator = 0.0;
	output = 0.0;
	return self;
}	


- (void) dealloc
{
	[super dealloc];
}


- (TTErr) setBitDepthAttribute:(long)newValue
{
	bitDepthAttribute = TTClip(newValue, 1, 24);
	bit_shift = 24 - bitDepthAttribute;
	return TT_ERR_NONE;
}


- (TTErr) processAudioWithInput:(TTAudioSignal *)audioIn andOutput:(TTAudioSignal *)audioOut
{
	long	l;
	short	vs = audioIn->vs;
	float	*in,
			*out;
	short	numchannels = [TTAudioSignal GetMinNumChannelsForASignal:audioIn andAnotherSignal:audioOut];
	short	channel;
	
	for(channel=0; channel<numchannels; channel++){
		in = audioIn->vectors[channel];
		out = audioOut->vectors[channel];
		
		while(vs--){
			// SR Reduction
			accumulator += srRatioAttribute;
			if (accumulator >= 1.0){
				output = *in++;
				accumulator -= 1.0;
			}
		
			// Bit Depth Reduction
			l = (long)(output * BIG_INT);				// change float to long int
			l >>= bit_shift;						// shift away the least-significant bits
			l <<= bit_shift;						// shift back to the correct registers
			*out++ = (float) l * ONE_OVER_BIG_INT;	// back to float
		}
	}
	return TT_ERR_NONE;
}


@end
