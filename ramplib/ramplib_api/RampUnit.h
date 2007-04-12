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

#import  <Foundation/NSObject.h>
#import  "ramplib.h"				// Common definitions used by the RampLib
#include "ext.h"					// This unit requires Max headers because we use its scheduler


@interface RampUnit : NSObject {
	ramplib_method_callback		callback;
	void						*x;				// pointer to the Max external's instance
}


// instance methods -- the proper rampunit will override all of these
- initWithCallback:(ramplib_method_callback)in_callback baton:(void *)in_baton;
- (void)	release;
- (void)	attrset:(int)selector:(double)value;
- (double)	attrget:(int)selector;
- (void)	go:(float)value:(double)time;
- (void)	set:(double)value;
- (void)	stop;
- (void)	tick;

@end
