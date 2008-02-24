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


/****************************************************************************************************/
// Class Specification

/**
	The TTQueue class implements a cross-platform thread manager.
	It is not yet full featured, as features are being added on an as-needed basis.
*/
class TTQueue : public TTElement {
private:
	TTThread	*queueThread;

public:
	TTQueue();
	virtual	~TTQueue();

	/** This is them main loop that runs the queue */
	void* TTQueue::run();

};


#endif // __TT_QUEUE_H__
