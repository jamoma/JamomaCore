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
	: queueThread(NULL)
{
	queueThread = new TTThread(TTQueueMaster, this);
	queueEventObjects = new TTList;
	queueEventMethods = new TTList;
	queueEventValues = new TTList;
}


TTQueue::~TTQueue()
{
	if(queueThread)
		delete queueThread;
	delete queueEventObjects;
	delete queueEventMethods;
	delete queueEventValues;
}


// main loop for the queue
void* TTQueue::run()
{
	TTListItem*	objectItem;
	TTObject*	object;
	TTListItem*	messageItem;
	TTSymbol	message;
	TTListItem*	valueItem;
	TTValue		value;
	TTValue		tempValue;

	while(1){
		objectItem = queueEventObjects->getHead(tempValue);
		object = tempValue;
		messageItem = queueEventObjects->getHead(tempValue);
		message = tempValue;
		valueItem = queueEventObjects->getHead(tempValue);
		value = tempValue;
		
		object->sendMessage(message, value);

		TTThread::sleep(40);	// 24 fps
		// do we want to check every 40 ms?  Or do we want to kill the thread and re-create it only when it is needed?
	}
	return NULL;
}


/** Add a call to the back of the queue.  Will trigger the queue to be serviced if it isn't
	already scheduled. */
void TTQueue::queueToBack(TTObject& anObject, TTSymbol& aMessage, TTValue& aValue)
{
	TTValue	tempValue;

	tempValue = anObject;
	queueEventObjects->append(tempValue);
	tempValue = aMessage;
	queueEventMethods->append(tempValue);
	queueEventValues->append(aValue);
}

