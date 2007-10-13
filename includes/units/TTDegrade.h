//	TTDegradeObject
//	sample-rate and bit-depth reduction 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL


#import "TTAudioObject.h"

#define BIG_INT	0x00800000
#define ONE_OVER_BIG_INT 1.1920928955E-7


@interface TTDegradeObject : TTAudioObject 
	{
		@public
		long				bitdepthAttribute;		// Attributes
		float				srRatioAttribute;		//	...
		
		@private
		short				bit_shift;
		float				accumulator;
		TTSampleValue		output;
	}

	- (id)		init;								// Constructor
	- (void)	dealloc;							// Destructor
	- (TTErr)	setBitdepthAttribute:(long)value;
	- (TTErr)	processAudioWithInput:(TTAudioSignal *)signals_in andOutput:(TTAudioSignal *)signals_out;
@end
