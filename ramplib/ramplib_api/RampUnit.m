/* 
 * Jamoma RampUnit Base Class
 * All ramp units should subclass this object.
 * This object performs the equivalent of no ramping.
 *
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#import "RampUnit.h"


@implementation RampUnit


- initWithCallback:(ramplib_method_callback)in_callback baton:(void *)in_baton;
{
    self = [super init];
    return self;
}


- (void) release;
{
	[super release];
}


- (void) attrset:(int)selector:(double)value;
{
}


- (double) attrget:(int)selector;
{
	return 0;
}


- (void) go:(float)value:(double)time;
{
}


- (void) set:(double)value;
{
}


- (void) stop;
{
}


- (void) tick;
{
}

@end

