/* 
 * Jamoma RampUnit: LinearSched (linear.sched) 
 * Linear ramping function using the Max scheduler
 *
 * By Tim Place, Copyright © 2006, 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "linear.queue.h"


t_linear_queue*	create(ramplib_method_callback in_callback, void *in_baton)
{
	t_linear_queue *rampunit = (t_linear_queue *)malloc(sizeof(t_linear_queue));
	if(rampunit){
		rampunit->callback = in_callback;
		rampunit->baton = in_baton;
		rampunit->max_qelem = qelem_new(rampunit, (method)tick);	// install the queue element
		rampunit->value_current = 0;
	}
	return rampunit;
}


void destroy(t_linear_queue *rampunit)
{
	qelem_unset(rampunit->max_qelem);
	qelem_free(rampunit->max_qelem);
	free(rampunit);
}


ramp_err attrset(t_linear_queue *rampunit, int selector, double value)
{
	return RAMP_ERR_ATTR_INVALID;
}


ramp_err attrget(t_linear_queue *rampunit, int selector, double *value)
{
	return RAMP_ERR_ATTR_INVALID;
}


void go(t_linear_queue *rampunit, float value, double time)
{
	rampunit->value_start 	= rampunit->value_current;
	rampunit->value_target	= value;
	rampunit->ramptime 		= time;

	rampunit->time_start = systime_ms();
	rampunit->time_target = rampunit->time_start + time;

	rampunit->active = 1;	
	qelem_set(rampunit->max_qelem);					// Start the ramp!	
}


void set(t_linear_queue *rampunit, double value)
{
	qelem_unset(rampunit->max_qelem);
	rampunit->value_current = value;
}


void stop(t_linear_queue *rampunit)
{
	qelem_unset(rampunit->max_qelem);
}


void tick(t_linear_queue *rampunit)
{
	unsigned long 	current_time = systime_ms();
	
	if(current_time > rampunit->time_target){
		rampunit->active = 0;
		rampunit->value_current = rampunit->value_target;
	}
	else{
		float ratio = (current_time - rampunit->time_start) / (float)rampunit->ramptime;
		rampunit->value_current = (rampunit->value_target * ratio) + (rampunit->value_start * (1 - ratio));
		qelem_set(rampunit->max_qelem);							// set the qelem element to run again
	}
	(rampunit->callback)(rampunit->baton, rampunit->value_current);		// send the value to the host
}

