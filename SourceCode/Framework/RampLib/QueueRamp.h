/* 
 * Jamoma RampUnit: queue
 * Ramping using the Max queue
 *
 * By Tim Place, Copyright © 2006, 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __QUEUE_H__
#define __QUEUE_H__

#include "RampLib.h"		// Common definitions used by the RampLib


class QueueRamp : public RampUnit{
private:
	char				active;			///< is the ramp running?
	float				ramptime;		///< in ms
	unsigned long		startTime;
	unsigned long		targetTime;
	void				*qelem;			///< pointer to a Max queue element instance
	
public:
	QueueRamp(RampUnitCallback aCallbackMethod, void *aBaton);
	~QueueRamp();
	
	void go(TTUInt32 numValues, TTFloat64 *inValues, TTFloat64 time);
	void stop();
	void tick();
};


#endif // __QUEUE_H__
