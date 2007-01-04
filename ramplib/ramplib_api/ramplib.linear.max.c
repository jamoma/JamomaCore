/* 
 * Jamoma RampLib Unit 
 * Linear function using the max scheduler.
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ramplib.linear.max.h"


#pragma mark -
#pragma mark Unit life-cycle
void *ramplib_linear_max_create(ramplib_method_callback callback, void *x)
{
	t_ramplib_linear_max *ramp = NULL;

	// Because this unit only works with Max, we'll use Max's API for memory allocation:
	ramp = (t_ramplib_linear_max *)sysmem_newptrclear(sizeof(t_ramplib_linear_max));
	if(ramp){
		ramp->callback = callback;
		ramp->x = x;
		ramp->max_clock = clock_new(ramp, (method)ramplib_linear_max_tick);		// install the max timer
		ramplib_linear_max_attrset(ramp, k_granularity, 20.0);					// default to 20 ms		
	
		return ramp;		
	}
	return NULL;
}


void ramplib_linear_max_free(void *ramp)
{
	t_ramplib_linear_max *thisramp = (t_ramplib_linear_max *)ramp;
	
	clock_unset(thisramp->max_clock);
	freeobject((t_object *)thisramp->max_clock);
	sysmem_freeptr(thisramp);
}


#pragma mark -
#pragma mark Attributes
void ramplib_linear_max_attrset(void *ramp, int selector, double value)
{
	t_ramplib_linear_max *thisramp = (t_ramplib_linear_max *)ramp;
	
	switch (selector){			
		case k_granularity:
			thisramp->granularity = value;	
			break;
		//case k_datatype:
		//	ramp->datatype = value;
		//	break;
	}
}


double ramplib_linear_max_attrget(void *ramp, int selector)
{
	t_ramplib_linear_max *thisramp = (t_ramplib_linear_max *)ramp;
	
	switch (selector){
		case k_granularity:
			return thisramp->granularity;
		//case k_datatype:
		//	return ramp->datatype;
		default:
			return 0;
	}
}


#pragma mark -
#pragma mark Standard Methods
void ramplib_linear_max_go(void *ramp, float value, double time)
{
	t_ramplib_linear_max *thisramp = (t_ramplib_linear_max *)ramp;
	
	double traversal = 0;
	
	thisramp->numgrains = 0;
	thisramp->value_target = value;
	thisramp->ramptime = time;
	
	traversal = thisramp->value_target - thisramp->value_current;	// distance to go
	thisramp->numgrains = thisramp->ramptime / thisramp->granularity;
	thisramp->stepsize = traversal / thisramp->numgrains;
	
	setclock_fdelay(NULL, thisramp->max_clock, 0); // start now
}


void ramplib_linear_max_set(void *ramp, double value)
{
	t_ramplib_linear_max *thisramp = (t_ramplib_linear_max *)ramp;
	
	clock_unset(thisramp->max_clock);
	thisramp->value_current = value;
}


void ramplib_linear_max_stop(void *ramp)
{
	t_ramplib_linear_max *thisramp = (t_ramplib_linear_max *)ramp;
	
	clock_unset(thisramp->max_clock);
}


void ramplib_linear_max_tick(void *ramp)
{
	t_ramplib_linear_max *thisramp = (t_ramplib_linear_max *)ramp;
	
	// 1. go to the the next step in our ramp
	thisramp->value_current += thisramp->stepsize;
	thisramp->numgrains--;
	
	if(thisramp->numgrains == 0)
		thisramp->value_current = thisramp->value_target;
	
	// 2. send the value to the host
	(thisramp->callback)(thisramp->x, thisramp->value_current);

	// 3. set the clock to fire again
	if(thisramp->numgrains)
		setclock_fdelay(NULL, thisramp->max_clock, thisramp->granularity);
}



