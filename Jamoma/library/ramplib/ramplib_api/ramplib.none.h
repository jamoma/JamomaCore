/* 
 * Jamoma RampLib Unit 
 * Just pass the data through with no ramping.
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __RAMPLIB_NONE_H_
#define __RAMPLIB_NONE_H_

#ifdef __cplusplus
	extern "C" {
#endif // __cplusplus


#include "ramplib.h"	// Shared definitions for all RampLib units


#pragma mark RampLib Data Structure and Selectors

// Data Structure for this RampLib Unit
typedef struct _ramplib_none{
	ramplib_method_callback	callback;
	void					*x;				// pointer to some data we send our callback routine
	float					value_target;
	float					value_current;
} t_ramplib_none;


#pragma mark RampLib Interface

// Unit life-cycle
void *ramplib_none_create(ramplib_method_callback callback, void *x);	// pass Max extern's object instance as arg
void 	ramplib_none_free(void *ramp);

// Attributes
void 	ramplib_none_attrset(void *ramp, int selector, double value);
double 	ramplib_none_attrget(void *ramp, int selector);

// Standard Methods
void ramplib_none_go(void *ramp, float value, double time);			// start ramping from current value
void ramplib_none_set(void *ramp, double value);						// stop the ramp, set the current value to input
void ramplib_none_stop(void *ramp);									// stop the ramp
void ramplib_none_tick(void *ramp);									// execute one step of the ramp


#ifdef __cplusplus
	}
#endif // __cplusplus


#endif // __RAMPLIB_NONE_H_
