//	TTAudioObject
//	Base class for audio objects in TTBlue 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL
	
#import "TTObject.h"


@interface TTAudioObject : TTObject {
	// because this code is used in audio-contexts, with high-performance demands, all members
	// are made public for direct access in audio processing loops
	@public
}


@end
