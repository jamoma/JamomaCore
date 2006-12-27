// Jamoma RampLib shared header file

#ifndef __RAMPLIB__H_
#define __RAMPLIB__H_

#include <math.h>		// Standard Math library
#include <stdlib.h>


// Type definitions
//typedef void	(*ramplib_callback_func)	(void *, float);
typedef void  	(*ramplib_method_callback)	(void *, float);
typedef void* 	(*ramplib_method_new)		(ramplib_method_callback, void *);
typedef void	(*ramplib_method_free)		(void *);
typedef void	(*ramplib_method_attrset)	(void *, int, double);
typedef double	(*ramplib_method_attrget)	(void *, int);
typedef void	(*ramplib_method_go)		(void *, float, double);
typedef void	(*ramplib_method_set)		(void *, double);
typedef void	(*ramplib_method_stop)		(void *);
typedef void	(*ramplib_method_tick)		(void *);


// Selectors shared by many ramp units
enum _ramplib_common_selector{
	k_unknown = 0,
	k_granularity,
	k_value_current,
	k_ramptime,	
};




#endif // __RAMPLIB__H_
