/* 
 * Jamoma RampUnit: LinearSched (linear.sched) 
 * Linear ramping function using the Max scheduler
 *
 * By Tim Place, Copyright © 2006, 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "none.h"


t_none*	create(rampunit_method_callback_type in_callback, void *in_baton)
{
	t_none *rampunit = (t_none *)malloc(sizeof(t_none));
	if(rampunit){
		rampunit->callback = in_callback;
		rampunit->baton = in_baton;
		rampunit->value_current = 0;
	}
	return rampunit;
}


void destroy(t_none *rampunit)
{
	free(rampunit);
}


ramp_err attrset(t_none *rampunit, int selector, double value)
{
	return RAMP_ERR_ATTR_INVALID;
}


ramp_err attrget(t_none *rampunit, int selector, double *value)
{
	return RAMP_ERR_ATTR_INVALID;
}


void go(t_none *rampunit, float value, double time)
{
	rampunit->value_target = value;
	tick(rampunit);						// no ramping, just call tick() directly
}


void set(t_none *rampunit, double value)
{
	rampunit->value_current = value;
}


void stop(t_none *rampunit)
{
	;	// no ramping, nothing to do
}


void tick(t_none *rampunit)
{
	rampunit->value_current = rampunit->value_target;					// set the current value
	(rampunit->callback)(rampunit->baton, rampunit->value_current);		// send the value to the host
}

