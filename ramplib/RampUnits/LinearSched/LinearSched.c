/* 
 * Jamoma RampUnit: LinearSched (linear.sched) 
 * Linear ramping function using the Max scheduler
 *
 * By Tim Place, Copyright © 2006, 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "LinearSched.h"


t_linear_sched*	create(ramplib_method_callback in_callback, void *in_baton)
{
	t_linear_sched *rampunit = (t_linear_sched *)malloc(sizeof(t_linear_sched));
	if(rampunit){
		rampunit->callback = in_callback;
		rampunit->baton = in_baton;
		rampunit->max_clock = clock_new(rampunit, (method)&tick);		// install the max timer
		rampunit->value_current = 0;
		attrset(rampunit, k_granularity, 20.0);
	}
	return rampunit;
}


void destroy(t_linear_sched *rampunit)
{
	clock_unset(rampunit->max_clock);
	freeobject((t_object *)rampunit->max_clock);
	free(rampunit);
}


void attrset(t_linear_sched *rampunit, int selector, double value)
{
	switch(selector){			
		case k_granularity:
			rampunit->granularity = value;	
			break;
	}
}


double attrget(t_linear_sched *rampunit, int selector)
{
	switch(selector){
		case k_granularity:
			return rampunit->granularity;
		//case k_datatype:
		//	return ramp->datatype;
		default:
			return 0;
	}
}


void go(t_linear_sched *rampunit, float value, double time)
{
	double traversal = 0;
	
	rampunit->numgrains = 0;
	rampunit->value_target = value;
	rampunit->ramptime = time;
	
	traversal = rampunit->value_target - rampunit->value_current;	// distance to go
	rampunit->numgrains = rampunit->ramptime / rampunit->granularity;
	rampunit->stepsize = traversal / rampunit->numgrains;
	
	setclock_fdelay(NULL, rampunit->max_clock, 0); // start now
}


void set(t_linear_sched *rampunit, double value)
{
	clock_unset(rampunit->max_clock);
	rampunit->value_current = value;
}


void stop(t_linear_sched *rampunit)
{
	clock_unset(rampunit->max_clock);
}


void tick(t_linear_sched *rampunit)
{
	// 1. go to the the next step in our ramp
	rampunit->value_current += rampunit->stepsize;
	rampunit->numgrains--;
	
	if(rampunit->numgrains == 0)
		rampunit->value_current = rampunit->value_target;
	
	// 2. send the value to the host
	(rampunit->callback)(rampunit->baton, rampunit->value_current);

	// 3. set the clock to fire again
	if(rampunit->numgrains)
		setclock_fdelay(NULL, rampunit->max_clock, rampunit->granularity);
}

