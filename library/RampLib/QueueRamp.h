/* 
 * Jamoma RampUnit: queue
 * Ramping using the Max queue
 *
 * By Tim Place, Copyright © 2006, 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __QUEUE_H__
#define __QUEUE_H__

#include "RampLib.h"		// Common definitions used by the RampLib


class QueueRamp : public RampUnit{
	TTCLASS_SETUP(QueueRamp)

private:
	float				ramptime;		///< in ms
	unsigned long		startTime;
	unsigned long		targetTime;
	void				*qelem;			///< pointer to a Max queue element instance
	
public:
	void go(TTUInt32 numValues, TTFloat64 *inValues, TTFloat64 time);
	void stop();
	void tick();
};


#endif // __QUEUE_H__
