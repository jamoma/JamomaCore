/* 
 * Jamoma RampUnit: LinearSched (linear.sched) 
 * Linear ramping function using the Max scheduler
 *
 * By Tim Place, Copyright © 2006, 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "linear.sched.h"

static t_symbol *ps_granularity;


t_linear_sched*	create(rampunit_method_callback_type in_callback, void *in_baton)
{
	t_linear_sched *rampunit = (t_linear_sched *)malloc(sizeof(t_linear_sched));
	if(rampunit){
		ps_granularity = gensym("granularity");							// cache attr names for speed

		rampunit->callback = in_callback;
		rampunit->baton = in_baton;
		rampunit->max_clock = clock_new(rampunit, (method)&tick);		// install the max timer
		rampunit->numvalues = 0;
		rampunit->value_current = NULL;
		rampunit->value_target = NULL;
		rampunit->stepsize = NULL;
		setnumvalues(rampunit, 1);
		rampunit->value_current[0] = 0;
		attrset(rampunit, ps_granularity, 20.0);
	}
	return rampunit;
}


void destroy(t_linear_sched *rampunit)
{
	clock_unset(rampunit->max_clock);
	freeobject((t_object *)rampunit->max_clock);
	free(rampunit->value_current);
	free(rampunit->value_target);
	free(rampunit->stepsize);
	free(rampunit);
}


ramp_err attrset(t_linear_sched *rampunit, t_symbol *attrname, double value)
{
	if(attrname = ps_granularity)
		rampunit->granularity = value;	
	else
		return RAMP_ERR_ATTR_INVALID;

	return RAMP_ERR_NONE;
}


ramp_err attrget(t_linear_sched *rampunit, t_symbol *attrname, double *value)
{
	if(attrname = ps_granularity)
		*value = rampunit->granularity;
	else
		return RAMP_ERR_ATTR_INVALID;

	return RAMP_ERR_NONE;
}


//void go(t_linear_sched *rampunit, float value, double time)
void go(t_linear_sched *rampunit, short numvalues, double *values, double time)
{
	double	traversal = 0;
	short	i;

	rampunit->ramptime = time;
	rampunit->numgrains = rampunit->ramptime / rampunit->granularity;

	setnumvalues(rampunit, numvalues);

	for(i=0; i<numvalues; i++){
		rampunit->value_target[i] = values[i];
		traversal = rampunit->value_target[i] - rampunit->value_current[i];	// distance to go
		rampunit->stepsize[i] = traversal / rampunit->numgrains;
	}

	setclock_fdelay(NULL, rampunit->max_clock, 0); // start now
}


//void set(t_linear_sched *rampunit, double value)
void set(t_linear_sched *rampunit, short numvalues, double *values)
{
	short i;

	clock_unset(rampunit->max_clock);
	setnumvalues(rampunit, numvalues);
	for(i=0; i<numvalues; i++)
		rampunit->value_current[i] = values[i];
}


void stop(t_linear_sched *rampunit)
{
	clock_unset(rampunit->max_clock);
}


void tick(t_linear_sched *rampunit)
{
	short i;

	// 1. go to the the next step in our ramp
	rampunit->numgrains--;
	if(rampunit->numgrains == 0){
		for(i=0; i < rampunit->numvalues; i++)
			rampunit->value_current[i] = rampunit->value_target[i];
	}
	else{
		//rampunit->value_current += rampunit->stepsize;
		for(i=0; i < rampunit->numvalues; i++)
			rampunit->value_current[i] += rampunit->stepsize[i];
	}
	
	// 2. send the value to the host
	(rampunit->callback)(rampunit->baton, rampunit->numvalues, rampunit->value_current);

	// 3. set the clock to fire again
	if(rampunit->numgrains)
		setclock_fdelay(NULL, rampunit->max_clock, rampunit->granularity);
}


// PRIVATE METHOD: memory allocation
void setnumvalues(t_linear_sched *rampunit, short numvalues)
{
	if(numvalues != rampunit->numvalues){
		if(rampunit->numvalues == 0){
			rampunit->value_current = (double *)malloc(numvalues * sizeof(double));
			rampunit->value_target = (double *)malloc(numvalues * sizeof(double));
			rampunit->stepsize = (double *)malloc(numvalues * sizeof(double));
		}
		else{
			rampunit->value_current = (double *)realloc(rampunit->value_current, numvalues * sizeof(double));
			rampunit->value_target = (double *)realloc(rampunit->value_target, numvalues * sizeof(double));
			rampunit->stepsize = (double *)realloc(rampunit->stepsize, numvalues * sizeof(double));
		}
		rampunit->numvalues = numvalues;
	}	
}

