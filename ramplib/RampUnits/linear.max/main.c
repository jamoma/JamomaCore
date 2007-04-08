/* This is the default source file for new bundles. */

/* You can either fill in code here or remove this and create or add new files. */

#include "ramplib.h"
#include "ramplib.linear.max.h"

//typedef void* 	(*ramplib_method_new)		(ramplib_method_callback, void *);
//typedef void	(*ramplib_method_free)		(void *);
// Unit life-cycle
//void *ramplib_linear_max_create(ramplib_method_callback callback, void *x);	// pass Max extern's object instance as arg
//void 	ramplib_linear_max_free(void *ramp);
ramplib_method_new		create = &ramplib_linear_max_create;
ramplib_method_free		destroy = &ramplib_linear_max_free;

//typedef void	(*ramplib_method_attrset)	(void *, int, double);
//typedef double	(*ramplib_method_attrget)	(void *, int);
// Attributes
//void 	ramplib_linear_max_attrset(void *ramp, int selector, double value);
//double 	ramplib_linear_max_attrget(void *ramp, int selector);
ramplib_method_attrset	attrset = &ramplib_linear_max_attrset;
ramplib_method_attrget	attrget = &ramplib_linear_max_attrget;


//typedef void  	(*ramplib_method_callback)	(void *, float);
//typedef void	(*ramplib_method_go)		(void *, float, double);
//typedef void	(*ramplib_method_set)		(void *, double);
//typedef void	(*ramplib_method_stop)		(void *);
//typedef void	(*ramplib_method_tick)		(void *);
// Standard Methods
//void ramplib_linear_max_go(void *ramp, float value, double time);			// start ramping from current value
//void ramplib_linear_max_set(void *ramp, double value);						// stop the ramp, set the current value to input
//void ramplib_linear_max_stop(void *ramp);									// stop the ramp
//void ramplib_linear_max_tick(void *ramp);									// execute one step of the ramp

ramplib_method_go	go = &ramplib_linear_max_go;
ramplib_method_set	set = &ramplib_linear_max_set;
ramplib_method_stop	stop = &ramplib_linear_max_stop;
ramplib_method_tick tick = &ramplib_linear_max_tick;

