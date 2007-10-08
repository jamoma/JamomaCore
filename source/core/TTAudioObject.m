//	TTAudioObject
//	Base class for audio objects in TTBlue 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL
	
#import "TTAudioObject.h"


@implementation TTAudioObject


- (TTErr) srAttributeSetLongValue:(long)value
{
	if(value != sr){
		srAttribute = value;
		srr = 1.0 / value;
		srm = (double)sr * 0.001;
	}
	return TT_ERR_NONE;
}



@end
