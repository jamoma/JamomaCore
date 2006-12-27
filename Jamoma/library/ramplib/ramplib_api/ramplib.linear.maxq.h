/* 
 * Jamoma RampLib Unit 
 * Perform a linear ramp in Max's low-priority queue
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __RAMPLIB_LINEAR_MAXQ_H_
#define __RAMPLIB_LINEAR_MAXQ_H_

#ifdef __cplusplus
	extern "C" {
#endif // __cplusplus


#include "ext.h"		// This unit requires Max headers because we use its scheduler
#include "ramplib.h"	// Shared definitions for all RampLib units

#pragma mark RampLib Data Structure and Selectors

// Data Structure for this RampLib Unit
typedef struct _ramplib_linear_maxq{
	ramplib_method_callback	callback;
	void					*x;				// pointer to the Max external's instance
	void 					*max_qelem;		// pointer to a Max queue element instance
	bool					active;			// is the ramp running?
	float					ramptime;		// in ms
	float					value_start;
	float					value_target;
	float					value_current;
	unsigned long			time_start;
	unsigned long 			time_target;
} t_ramplib_linear_maxq;


#pragma mark RampLib Interface

// Unit life-cycle
void *ramplib_linear_maxq_create(ramplib_method_callback callback, void *x);	// pass Max extern's object instance as arg
void 	ramplib_linear_maxq_free(void *ramp);

// Attributes
void 	ramplib_linear_maxq_attrset(void *ramp, int selector, double value);
double 	ramplib_linear_maxq_attrget(void *ramp, int selector);

// Standard Methods
void ramplib_linear_maxq_go(void *ramp, float value, double time);			// start ramping from current value
void ramplib_linear_maxq_set(void *ramp, double value);						// stop the ramp, set the current value to input
void ramplib_linear_maxq_stop(void *ramp);									// stop the ramp
void ramplib_linear_maxq_tick(void *ramp);									// execute one step of the ramp


#ifdef __cplusplus
	}
#endif // __cplusplus


#endif // __RAMPLIB_LINEAR_MAXQ_H_
