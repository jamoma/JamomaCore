//	TTDelayObject
//	Delay unit 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL

#import "TTAudioObject.h"


@interface TTDelayObject : TTAudioObject 
{
	@public
		long				delayMaxSamplesAttribute;	// Attributes
		float				delayMaxMSAttribute;		//	...
		long				delaySamplesAttribute;
		float				delayMSAttribute;
		long				interpolationAttribute;

	@private
		TTSampleValue		*buffer;
		TTSampleValue		*in_ptr;					// "write" pointer for buffer
		TTSampleValue		*out_ptr;					// "read" pointer
		TTSampleValue		*end_ptr;					// points to last sample in buffer (for speed)

		TTSampleValue		output[4];

		double				fractional_delay;			// used in interpolated dsp loops
		double 				fdelay_samples;

		// TODO: use this...
		char				delaySpecifiedInMS;			// defaults to false, but if true we can have the numsamples slip if the sr changes
}

- (id)		init;										// Constructors
- (id)		initWithSizeInSamples:(long)maxSamples;
- (id)		initWithSizeInMS:(float)maxMS;

- (TTErr)	clear;
- (TTErr)	setSr:(long)newValue;							// Override the in inherited method...

// Important note:  this object currently only works in mono!
// TODO: make it multichannel friendly...
- (TTErr)	processAudioWithInput:(TTAudioSignal *)audioIn andOutput:(TTAudioSignal *)audioOut;
@end
