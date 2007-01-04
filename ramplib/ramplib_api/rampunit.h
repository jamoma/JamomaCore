// Jamoma RampUnit header file
// Required for people loading the dynamic libraries for use in projects
// On MacOS X these libraries are bundles, on Windows they are DLLs.

#ifndef __RAMPUNIT__H_
#define __RAMPUNIT__H_


#include "ramplib.h"

// A table with the pointers to our functions
// These can't be globals because, for example, in Max then 
// you would only be able to use one ramp unit type per entire class...
typedef struct _rampunit_functions{
	ramplib_method_new		create;
	ramplib_method_free		destroy;
	ramplib_method_attrset	attrset;
	ramplib_method_attrget	attrget;   
	ramplib_method_go		go;   
	ramplib_method_set		set;        
	ramplib_method_stop		stop;       
	ramplib_method_tick		tick;
} t_rampunit_functions;


// Prototypes
short 	ramplib_glue		(t_rampunit_functions *rampunit, char *fullpath);
void 	ramplib_unglue		(t_rampunit_functions *rampunit);

void 	*rampunit_new		(ramplib_method_callback callback, void *x);
void  	rampunit_free		(void *ramp);
void 	rampunit_attrset	(void *ramp, int selector, double value);
double 	rampunit_attrget	(void *ramp, int selector);
void 	rampunit_go		(void *ramp, float value, double time);
void 	rampunit_set		(void *ramp, double value);
void 	rampunit_stop		(void *ramp);
void 	rampunit_tick		(void *ramp);

#endif // __RAMPUNIT__H_
					              