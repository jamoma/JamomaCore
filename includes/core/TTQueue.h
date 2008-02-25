/* 
 * TTBlue low-priority queue
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_QUEUE_H__
#define __TT_QUEUE_H__

#include "TTElement.h"
#include "TTThread.h"
#include "TTList.h"
#include "TTObject.h"


/****************************************************************************************************/
// Class Specification

/**
	The TTQueue class implements a message queue for TTBlue objects.
	
	Instead of sending a message directly to an object, it can be sent to the queue.  The queue
	will then send the message to the object from the queue's thread when the queue is serviced.
	
	The implementation uses a set of related lists; one for the object, one for the message, and
	one for the value argument to the message. 
*/
class TTQueue : public TTElement {
private:
	TTThread*	queueThread;
	TTList*		queueEventObjects;
	TTList*		queueEventMethods;
	TTList*		queueEventValues;
	TTUInt16	throttle;			///< Maximum number of events to process in one shot

public:
	TTQueue();
	virtual	~TTQueue();

	/** This is them main loop that runs the queue */
	void* TTQueue::run();

	/** Add a call to the back of the queue.  Will trigger the queue to be serviced if it isn't
		already scheduled. */
	void queueToBack(TTObject& anObject, TTSymbol& aMessage, TTValue& aValue);
	//void queueToFront(TTMethod method, TTValue& value);
};


#endif // __TT_QUEUE_H__
