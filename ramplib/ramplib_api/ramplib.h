// Jamoma RampLib shared header file

#ifndef __RAMPLIB__H_
#define __RAMPLIB__H_

#include <math.h>		// Standard Math library
#include <stdlib.h>
#include "ext.h"		// Standard MaxMSP header (used for symbol definition, among others)

// error definitions
enum{
	RAMP_ERR_NONE = 0,
	RAMP_ERR_GENERIC,
	RAMP_ERR_ALLOCFAILED,
	RAMP_ERR_FREEFAILED,
	RAMP_ERR_ATTR_INVALID
};

// Type definitions
typedef short	ramp_err;

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

typedef void		(*rampunit_method_callback_type)	(void *, float);
typedef void*		(*rampunit_method_create_type)		(ramplib_method_callback, void *);
typedef void		(*rampunit_method_destroy_type)		(void *);
typedef ramp_err	(*rampunit_method_attrset_type)		(void *, t_symbol *, double);
typedef ramp_err	(*rampunit_method_attrget_type)		(void *, t_symbol *, double *);
typedef void		(*rampunit_method_go_type)			(void *, float, double);
typedef void		(*rampunit_method_set_type)			(void *, double);
typedef void		(*rampunit_method_stop_type)		(void *);
typedef void		(*rampunit_method_tick_type)		(void *);


// Selectors shared by many ramp units
enum _ramplib_common_selector{
	k_unknown = 0,
	k_granularity,
	k_value_current,
	k_ramptime,	
};




#endif // __RAMPLIB__H_
