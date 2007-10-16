//	TTCombObject
//	IIR Comb Filter
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL

#import "TTAudioObject.h"

/*
enum selectors{									// Attribute Selectors
	k_feedback,
	k_clip,
	k_delay,
	k_delay_static,
	k_decay,
	k_cutoff_frequency,
	k_buffersize,
};
*/

@interface TTCombObject : TTAudioObject 
	{
		@public
		tt_attribute_value 		lowpass_feedback;			// lowpass filter parameters
		tt_attribute_value 		lowpass_coef;
		tt_attribute_value		lowpass_frequency;
		tt_attribute_value 		decay;						// comb filter parameters
		tt_attribute_value		clipping;
		tt_attribute_value		buffersize;
		long 					buffersize_in_samples;
		
		@private
		TTSampleVector		memory,							// Internal Stuff for the comb filter
							memwriteptr,					//	...
							alloc;							//	...
		long 				delay;
		float 				msdelay;
		float 				comb_fb_coef;
	}

	- (id)		init;										// Constructor
	- (id)		initWithSizeInMS:(float)max_ms;
	- (void)	dealloc;									// Destructor
	- (TTErr)	clearMessage;
	- (TTErr)	srAttributeSetLongValue:(long)value;		// Override the in inherited method...
	- (TTErr)	processAudioWithInput:(TTAudioSignal *)signals_in andOutput:(TTAudioSignal *)signals_out;
@end

