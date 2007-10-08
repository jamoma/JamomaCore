//	TTDCBlockObject
//	dc offset filter / blocker 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL

#import "TTAudioObject.h"


@interface TTDCBlockObject : TTAudioObject 
	{
		@private
		double	 	last_input[TT_MAX_NUM_CHANNELS];
		double		last_output[TT_MAX_NUM_CHANNELS];
	}

	- (id)		init;								// Constructor
	- (void)	dealloc;							// Destructor
	- (TTErr)	clear;
	- (TTErr)	processAudioWithInput:(TTAudioSignal *)signals_in andOutput:(TTAudioSignal *)signals_out;
@end
