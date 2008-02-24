/* 
 * TTBlue low-priority queue
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTQueue.h"



void* TTQueueMaster(void* anArgument)
{
	TTQueue *queue = (TTQueue*)anArgument;
	
	return queue->run();
}


/****************************************************************************************************/

TTQueue::TTQueue()
{
	queueThread = new TTThread(TTQueueMaster, this);
}


TTQueue::~TTQueue()
{
	delete queueThread;
}


// main loop for the queue
void* TTQueue::run()
{
	while(1){
		;
		TTThread::sleep(24);
	}
	return NULL;
}


