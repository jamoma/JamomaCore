/* 
 * Jamoma RampUnit: LinearSched (linear.sched) 
 * Linear ramping function using the Max scheduler
 *
 * By Tim Place, Copyright © 2006, 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#import "RampUnit.h"


@interface LinearSched : RampUnit {
	void						*max_clock;		// pointer to a Max clock instance
	float						ramptime;		// in ms
	double						value_target;
	double						value_current;
	float						granularity;	// in ms
	double						stepsize;		// size of the steps we need to take
	long						numgrains;		// number of steps left to take in this ramp
}


// instance methods
- initWithCallback:(ramplib_method_callback)in_callback baton:(void *)in_baton;
- (void)	release;
- (void)	attrset:(int)selector:(double)value;
- (double)	attrget:(int)selector;
- (void)	go:(float)value:(double)time;
- (void)	set:(double)value;
- (void)	stop;
- (void)	tick;

@end


// C interface for the tick method -- used for callbacks from the Max scheduler
void ctick(LinearSched *obj);
