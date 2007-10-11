//	TTAudioObject
//	Base class for audio objects in TTBlue 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL
	
#import "TTAudioObject.h"


@implementation TTAudioObject


- (void) setSr:(long)value
{
	if(value != sr){
		sr = value;
		srr = 1.0 / value;
		srm = (double)sr * 0.001;
	}
}



@end
