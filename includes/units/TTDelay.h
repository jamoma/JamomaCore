//	TTDelayObject
//	Delay unit 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL

#import "TTAudioObject.h"


@interface TTDelayObject : TTAudioObject 
	{
		@public
		long				delayMaxSamplesAttribute;		// Attributes
		float				delayMaxMSAttribute;			//	...
		long				delaySamplesAttribute;
		float				delayMSAttribute;
		long				interpolationAttribute;

		@private
		// Function pointers for the DSP Loops (use this instead of branching for speed)
		typedef void (tt_delay::*function_ptr_1in_1out)(tt_audio_signal *, tt_audio_signal *);
		typedef void (tt_delay::*function_ptr_2in_1out)(tt_audio_signal *, tt_audio_signal *, tt_audio_signal *);
		function_ptr_1in_1out		dsp_executor;
		function_ptr_2in_1out		dsp_executor2;

		tt_sample_vector				buffer;
		tt_sample_vector				in_ptr;				// "write" pointer for buffer
		tt_sample_vector				out_ptr;			// "read" pointer
		tt_sample_vector				end_ptr;			// points to last sample in buffer (for speed)

		tt_sample_value					output[4];

		double							fractional_delay;	// used in interpolated dsp loops
		double 							fdelay_samples;
		
		// TODO: use this...
		char				delaySpecifiedInMS;				// defaults to false, but if true we can have the numsamples slip if the sr changes
	}

	- (id)		init;										// Constructors
	- (id)		initWithSizeInSamples:(long)max_samples;
	- (id)		initWithSizeInMS:(float)max_ms;
	- (void)	dealloc;									// Destructor
	- (TTErr)	clear;
	- (TTErr)	srAttributeSetValue:(long)value;			// Override the in inherited method...
	- (TTErr)	processAudioWithInput:(TTAudioSignal *)signals_in andOutput:(TTAudioSignal *)signals_out;
@end				
