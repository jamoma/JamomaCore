//	TTDownsample
//	Reduce a vector's size 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL

#import "TTAudioObject.h"


@interface TTDownsample : TTAudioObject
{
	@public		
	long		factorAttribute;
}

- (id)		init;								// Constructor
- (void)	dealloc;							// Destructor
- (TTErr)	processAudioWithInput:(TTAudioSignal *)signals_in andOutput:(TTAudioSignal *)signals_out;

@end
