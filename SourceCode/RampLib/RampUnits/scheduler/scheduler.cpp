/* 
 * Jamoma RampUnit: scheduler
 * Ramping function using the Max scheduler
 *
 * By Tim Place, Copyright � 2006, 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"
#include "scheduler.h"

static t_symbol *ps_granularity;
static t_symbol *ps_clock;


t_scheduler*	create(rampunit_method_callback_type in_callback, void *in_baton)
{
	t_scheduler *rampunit = (t_scheduler *)malloc(sizeof(t_scheduler));
	if(rampunit){
		ps_granularity = gensym("granularity");							// cache attr names for speed
		ps_clock = gensym("clock");

		rampunit->callback = in_callback;
		rampunit->baton = in_baton;
		rampunit->max_clock = clock_new(rampunit, (method)&tick);		// install the max timer
		rampunit->numvalues = 0;
		rampunit->value_current = NULL;
		rampunit->value_target = NULL;
		rampunit->stepsize = NULL;
		rampunit->function = NULL;
		rampunit->functionName = NULL;
		setnumvalues(rampunit, 1);
		rampunit->value_current[0] = 0;
		
		attrset(rampunit, ps_granularity, 20.0);
		setFunction(rampunit, gensym("linear"));
	}
	return rampunit;
}


void destroy(t_scheduler *rampunit)
{
	clock_unset(rampunit->max_clock);
	freeobject((t_object *)rampunit->max_clock);
	free(rampunit->value_current);
	free(rampunit->value_target);
	free(rampunit->value_start);
	if(rampunit->function)
		delete rampunit->function;
	free(rampunit);
}


JamomaError setFunction(t_scheduler *rampunit, t_symbol *functionName)
{
	JamomaError	err = JAMOMA_ERR_NONE;
	if(functionName != rampunit->functionName){
		err = jamoma_getFunction(functionName, &rampunit->function);
		if(!err){
			rampunit->functionName = functionName;
		}
	}
	return err;
}


JamomaError getFunction(t_scheduler *rampunit, t_symbol **functionName)
{
	*functionName = rampunit->functionName;
	return JAMOMA_ERR_NONE;
}


JamomaError setFunctionParameter(t_scheduler *rampunit, t_symbol *parameterName, long argc, t_atom *argv)
{
	return rampunit->function->setParameter(parameterName, argc, argv);
}


JamomaError getFunctionParameter(t_scheduler *rampunit, t_symbol *parameterName, long *argc, t_atom **argv)
{
	return rampunit->function->getParameter(parameterName, argc, argv);
}


ramp_err attrset(t_scheduler *rampunit, t_symbol *attrname, double value)
{
	/*
	void *old = x->m_setclock->s_thing; 
	void *c = 0;
	*/

	if(attrname == ps_granularity)
		rampunit->granularity = value;
	else if (attrname == ps_clock) {
		// The below copied from the SDK
		/* the line below can be restated as: 
		if s is the empty symbol 
		or s->s_thing is zero 
		or s->s_thing is non-zero and a setclock object 
		*/ 
		/*
		if ((s == gensym("")) || ((c = s->s_thing) && zgetfn(c,&s_unset))) 
		{ 
			if (old) 
				setclock_unset(old,x->m_clock); 
			x->m_setclock = s; 						// s is a t_symbol *
			if (x->m_running) 
				setclock_delay(c,x->m_clock,0L); 
		}
		*/
		post("Tutten betutten");
	}
		
	else
		return RAMP_ERR_ATTR_INVALID;

	return RAMP_ERR_NONE;
}


ramp_err attrget(t_scheduler *rampunit, t_symbol *attrname, double *value)
{
	if(attrname = ps_granularity)
		*value = rampunit->granularity;
	else
		return RAMP_ERR_ATTR_INVALID;

	return RAMP_ERR_NONE;
}


//void go(t_scheduler *rampunit, float value, double time)
void go(t_scheduler *rampunit, short numvalues, double *values, double time)
{
	short	i;

	rampunit->ramptime = time;
	rampunit->numgrains = rampunit->ramptime / rampunit->granularity;
	rampunit->stepsize = 1.0 / rampunit->numgrains;

	setnumvalues(rampunit, numvalues);
	for(i=0; i<numvalues; i++){
		rampunit->value_target[i] = values[i];
		rampunit->value_start[i] = rampunit->value_current[i];
	}
	rampunit->value = 0.0;							// set the ramp to the beginning
	setclock_fdelay(NULL, rampunit->max_clock, 0);	// start now
}


//void set(t_scheduler *rampunit, double value)
void set(t_scheduler *rampunit, short numvalues, double *values)
{
	short i;

	clock_unset(rampunit->max_clock);
	setnumvalues(rampunit, numvalues);
	for(i=0; i<numvalues; i++)
		rampunit->value_current[i] = values[i];
}


void stop(t_scheduler *rampunit)
{
	clock_unset(rampunit->max_clock);
}


void tick(t_scheduler *rampunit)
{
	short	i;
	double	mapped;
	double	*current = rampunit->value_current;
	double	*target = rampunit->value_target;
	double	*start = rampunit->value_start;

	// 1. go to the the next step in our ramp
	rampunit->numgrains--;
	if(rampunit->numgrains == 0){
		for(i=0; i < rampunit->numvalues; i++)
			rampunit->value_current[i] = rampunit->value_target[i];
	}
	else{
		rampunit->value += rampunit->stepsize;
		mapped = rampunit->function->mapValue(rampunit->value);
		for(i=0; i < rampunit->numvalues; i++)
			current[i] = start[i] + ((target[i] - start[i]) * mapped);
	}
	
	// 2. send the value to the host
	(rampunit->callback)(rampunit->baton, rampunit->numvalues, rampunit->value_current);

	// 3. set the clock to fire again
	if(rampunit->numgrains)
		setclock_fdelay(NULL, rampunit->max_clock, rampunit->granularity);
}


// PRIVATE METHOD: memory allocation
void setnumvalues(t_scheduler *rampunit, short numvalues)
{
	if(numvalues != rampunit->numvalues){
		if(rampunit->numvalues == 0){
			rampunit->value_start = (double *)malloc(numvalues * sizeof(double));
			rampunit->value_current = (double *)malloc(numvalues * sizeof(double));
			rampunit->value_target = (double *)malloc(numvalues * sizeof(double));
		}
		else{
			rampunit->value_start = (double *)realloc(rampunit->value_start, numvalues * sizeof(double));
			rampunit->value_current = (double *)realloc(rampunit->value_current, numvalues * sizeof(double));
			rampunit->value_target = (double *)realloc(rampunit->value_target, numvalues * sizeof(double));
		}
		rampunit->numvalues = numvalues;
	}	
}

