/* 
 * Jamoma RampUnit: async
 * Asyncronuous ramping driven by bangs passed to module (hub) 
 * or Max messages passed to leftmost signal inlet.
 *
 * By Trond Lossius, (c) 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"
#include "async.h"


t_async*	create(rampunit_method_callback_type in_callback, void *in_baton)
{
	t_async *rampunit = (t_async *)malloc(sizeof(t_async));
	if(rampunit){
		rampunit->callback = in_callback;
		rampunit->baton = in_baton;
		rampunit->value_current = NULL;
		rampunit->value_target = NULL;
		rampunit->value_start = NULL;
		rampunit->numvalues = 0;
		rampunit->function = NULL;
		rampunit->functionName = NULL;
		setnumvalues(rampunit, 1);
		rampunit->value_current[0] = 0;
		rampunit->active = 0;		
		setFunction(rampunit, gensym("linear"));
	}
	return rampunit;
}


void destroy(t_async *rampunit)
{
	free(rampunit->value_current);
	free(rampunit->value_target);
	free(rampunit->value_start);
	if(rampunit->function)
		delete rampunit->function;
	free(rampunit);
}


JamomaError setFunction(t_async *rampunit, t_symbol *functionName)
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


JamomaError getFunction(t_async *rampunit, t_symbol **functionName)
{
	*functionName = rampunit->functionName;
	return JAMOMA_ERR_NONE;
}


JamomaError setFunctionParameter(t_async *rampunit, t_symbol *parameterName, long argc, t_atom *argv)
{
	return rampunit->function->setParameter(parameterName, argc, argv);
}


JamomaError getFunctionParameter(t_async *rampunit, t_symbol *parameterName, long *argc, t_atom **argv)
{
	return rampunit->function->getParameter(parameterName, argc, argv);
}


ramp_err attrset(t_async *rampunit, t_symbol *attrname, long argc, t_atom *argv)
{
	return RAMP_ERR_ATTR_INVALID;
}


ramp_err attrget(t_async *rampunit, t_symbol *attrname, long argc, t_atom *argv)
{
	return RAMP_ERR_ATTR_INVALID;
}


void go(t_async *rampunit, short numvalues, double *values, double time)
{
	short i;
	
	rampunit->ramptime 		= time;
	rampunit->time_start	= systime_ms();
	rampunit->time_target	= rampunit->time_start + time;

	setnumvalues(rampunit, numvalues);
	for(i=0; i<numvalues; i++){
		rampunit->value_target[i] = values[i];
		rampunit->value_start[i] = rampunit->value_current[i];
	}
	rampunit->value = 0.0;							// set the ramp to the beginning
	rampunit->active = 1;		
}


void set(t_async *rampunit, short numvalues, double *values)
{
	short i;
	
	setnumvalues(rampunit, numvalues);
	for(i=0; i<numvalues; i++)
		rampunit->value_current[i] = values[i];
}


void stop(t_async *rampunit)
{
	// Nada.	
	rampunit->active=0;
}


void tick(t_async *rampunit)
{
	unsigned long 	current_time = systime_ms();
	short			i;
	double			mapped;
	double			*current = rampunit->value_current;
	double			*target = rampunit->value_target;
	double			*start = rampunit->value_start;
	float			ratio;
	
	if (rampunit->active)
	{
		if(current_time > rampunit->time_target){
			rampunit->active = 0;
			for(i=0; i < rampunit->numvalues; i++)
				rampunit->value_current[i] = rampunit->value_target[i];
		}
		else{
			ratio = (current_time - rampunit->time_start) / (float)rampunit->ramptime;
			mapped = rampunit->function->mapValue(ratio);
			for(i=0; i < rampunit->numvalues; i++)
				current[i] = (target[i] * mapped) + (start[i] * (1 - mapped));
		}
		(rampunit->callback)(rampunit->baton, rampunit->numvalues, rampunit->value_current);		// send the value to the host
	}
}


// PRIVATE METHOD: memory allocation
void setnumvalues(t_async *rampunit, short numvalues)
{
	if(numvalues != rampunit->numvalues){
		if(rampunit->numvalues == 0){
			rampunit->value_current = (double *)malloc(numvalues * sizeof(double));
			rampunit->value_target = (double *)malloc(numvalues * sizeof(double));
			rampunit->value_start = (double *)malloc(numvalues * sizeof(double));
		}
		else{
			rampunit->value_current = (double *)realloc(rampunit->value_current, numvalues * sizeof(double));
			rampunit->value_target = (double *)realloc(rampunit->value_target, numvalues * sizeof(double));
			rampunit->value_start = (double *)realloc(rampunit->value_start, numvalues * sizeof(double));
		}
		rampunit->numvalues = numvalues;
	}	
}


