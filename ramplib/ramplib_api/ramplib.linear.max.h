/* 
 * Jamoma RampLib Unit 
 * Linear function using the max scheduler.
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __RAMPLIB_LINEAR_MAX_H_
#define __RAMPLIB_LINEAR_MAX_H_

#ifdef __cplusplus
	extern "C" {
#endif // __cplusplus


#include "ext.h"		// This unit requires Max headers because we use its scheduler
#include "ramplib.h"	// Shared definitions for all RampLib units

#pragma mark RampLib Data Structure and Selectors

// Data Structure for this RampLib Unit
typedef struct _ramplib_linear_max{
	ramplib_method_callback	callback;
	void					*x;				// pointer to the Max external's instance
	void 					*max_clock;		// pointer to a Max clock instance
	float					ramptime;		// in ms
	double					value_target;
	double					value_current;
	float					granularity;	// in ms
	double 					stepsize;		// size of the steps we need to take
	long					numgrains;		// number of steps left to take in this ramp
} t_ramplib_linear_max;



#pragma mark RampLib Interface

// Unit life-cycle
void *ramplib_linear_max_create(ramplib_method_callback callback, void *x);	// pass Max extern's object instance as arg
void 	ramplib_linear_max_free(void *ramp);

// Attributes
void 	ramplib_linear_max_attrset(void *ramp, int selector, double value);
double 	ramplib_linear_max_attrget(void *ramp, int selector);


// Standard Methods
void ramplib_linear_max_go(void *ramp, float value, double time);			// start ramping from current value
void ramplib_linear_max_set(void *ramp, double value);						// stop the ramp, set the current value to input
void ramplib_linear_max_stop(void *ramp);									// stop the ramp
void ramplib_linear_max_tick(void *ramp);									// execute one step of the ramp


#ifdef __cplusplus
	}
#endif // __cplusplus


#endif // __RAMPLIB_LINEAR_MAX_H_
