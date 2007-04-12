/* 
 * Jamoma RampUnit: LinearSched (linear.sched) 
 * Linear ramping function using the Max scheduler
 *
 * By Tim Place, Copyright © 2006, 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#import "LinearSched.h"


@implementation LinearSched

- initWithCallback:(ramplib_method_callback)in_callback baton:(void *)in_baton;
{
    self = [super init];

    if(self){
		callback = in_callback;
		x = in_baton;
		max_clock = clock_new(self, (method)&ctick);					// install the max timer
		[self attrset :k_granularity :20.0];
    }
    return self;
}


- (void) release;
{
	clock_unset(max_clock);
	freeobject((t_object *)max_clock);
	[super release];
}


- (void) attrset:(int)selector:(double)value;
{
	switch(selector){			
		case k_granularity:
			granularity = value;	
			break;
	}
}


- (double) attrget:(int)selector;
{
	switch(selector){
		case k_granularity:
			return granularity;
		//case k_datatype:
		//	return ramp->datatype;
		default:
			return 0;
	}
}


- (void) go:(float)value:(double)time;
{
	double traversal = 0;
	
	numgrains = 0;
	value_target = value;
	ramptime = time;
	
	traversal = value_target - value_current;	// distance to go
	numgrains = ramptime / granularity;
	stepsize = traversal / numgrains;
	
	setclock_fdelay(NULL, max_clock, 0); // start now
}


- (void) set:(double)value;
{
	clock_unset(max_clock);
	value_current = value;
}


- (void) stop;
{
	clock_unset(max_clock);
}


- (void) tick;
{
	// 1. go to the the next step in our ramp
	value_current += stepsize;
	numgrains--;
	
	if(numgrains == 0)
		value_current = value_target;
	
	// 2. send the value to the host
	(callback)(x, value_current);

	// 3. set the clock to fire again
	if(numgrains)
		setclock_fdelay(NULL, max_clock, granularity);
}

@end


// The tick method is in plain C so that it can be used as a callback from plain C
//	(i.e. from Max)
void ctick(LinearSched *obj)
{
	[obj tick];
}

