//	TTCopyObject
//	Copy signals -- TODO: Perhaps this should just be built into the TTAudioSignal class?
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL

#import "TTAudioObject.h"


@interface TTCopyObject : TTAudioObject 
	{
	}

	- (id)		init;								// Constructor
	- (void)	dealloc;							// Destructor
	- (TTErr)	processAudioWithInput:(TTAudioSignal *)signals_in andOutput:(TTAudioSignal *)signals_out;
@end
