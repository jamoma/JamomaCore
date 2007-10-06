/*
 *		TTDegradeObject
 *		sample-rate and bit-depth reduction 
 *		Copyright © 2007 by Timothy A. Place
 *		License: GNU LGPL
 */

#import "TTDegrade.h"

@implementation TTDegradeObject


- (id)init
{
	self = [super init];
	if(self){
		bitdepthAttribute = 24;
		srRatioAttribute = 1.0;
		accumulator = 0.0;
		output = 0.0;
	}
	return self;
}	


- (void) dealloc
{
	[super dealloc];
}


// we want to clip the bitdepth, so we define a custom accessor for it
// TODO: research more here: http://developer.apple.com/Documentation/Cocoa/Conceptual/KeyValueCoding/Concepts/basicprinciples.html
//	how much support for key-value coding is in the GNUstep environment on Windows?
// ALTERNATIVELY, the TTBase class can know to look for the custom accessor...
- (TTErr) bitdepthAttributeSetLongValue:(long)value
{
	bitdepthAttribute = clip(int(value), 1, 24);
	return TT_ERR_NONE;
}


- (TTErr) processAudioWithInput:(TTAudioSignal *)signals_in andOutput:(TTAudioSignal *)signals_out
{
	long	l;
	short	vs = signals_in->vs;
	float	*in,
			*out;
	short	numchannels = [TTAudioSignal GetMinNumChannelsForASignal:signals_in andAnotherSignal:signals_out];
	short	channel;
	
	for(channel=0; channel<numchannels; channel++){
		in = signals_in->vectors[channel];
		out = signals_out->vectors[channel];
		
		while(vs--){
			// SR Reduction
			accumulator += sr_ratio;
			if (accumulator >= 1.0){
				output = *in++;
				accumulator -= 1.0;
			}
		
			// Bit Depth Reduction
			l = long(output * BIG_INT);				// change float to long int
			l >>= bit_shift;						// shift away the least-significant bits
			l <<= bit_shift;						// shift back to the correct registers
			*out++ = (float) l * ONE_OVER_BIG_INT;	// back to float
		}
	}
}


@end
