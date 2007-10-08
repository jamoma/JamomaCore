//	TTClipObject
//	Signal clipping / hard limiting
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL

#import "TTAudioObject.h"


@interface TTClipObject : TTAudioObject 
	{
		@public
			TTSampleValue	highLimitAttribute;
			TTSampleValue	lowLimitAttribute;
	}

	- (id)		init;								// Constructor
	- (void)	dealloc;							// Destructor
	- (TTErr)	processAudioWithInput:(TTAudioSignal *)signals_in andOutput:(TTAudioSignal *)signals_out;
@end
