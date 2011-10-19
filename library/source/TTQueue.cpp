/* 
 * TTBlue low-priority queue
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTQueue.h"



#if OLD

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
	if (queueThread)
		delete queueThread;
	delete queueEventObjects;
	delete queueEventMethods;
	delete queueEventValues;
}


// main loop for the queue
void* TTQueue::run()
{
/*
	TTListItem*	objectItem;
	TTObject*	object;
	TTListItem*	messageItem;
	TTSymbol*	message;
	TTListItem*	valueItem;
	TTValue		value;
	TTValue		tempValue;

	while (1) {
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
 */
	return NULL;
}


/** Add a call to the back of the queue.  Will trigger the queue to be serviced if it isn't
	already scheduled. */
void TTQueue::queueToBack(TTObject& anObject, TTSymbol* aMessage, TTValue& aValue)
{
	TTValue	tempValue;

	tempValue = anObject;
	queueEventObjects->append(tempValue);
	tempValue = aMessage;
	queueEventMethods->append(tempValue);
	queueEventValues->append(aValue);
}

#else

TTQueue::TTQueue() : 
	mUpdateCounter(0),
	mAcknowledgementCounter(0)
{
	resize(32);
}


TTQueue::~TTQueue()
{
	;
}


TTErr TTQueue::resize(TTUInt32 aNewSize)
{
	TTUInt32 size = aNewSize;

	if (size != mBuffer.size() && TTIsPowerOfTwo(size)) {
		mBuffer.resize(size);
		mSize = size;
		mTwiceSize = size * 2;
	}
	return kTTErrNone;
}


TTErr TTQueue::size(TTUInt32& returnedSize)
{
	returnedSize = mSize;
	return kTTErrNone;
}


// the counters are updated 2 times for successful inserts and reads
// when the update counter is odd, this indicates that we are in the middle of an insertion

TTQueue::InsertStatus TTQueue::insert(const TTValue& anItem)
{
	TTUInt32	lastUpdateCounter = mUpdateCounter;
	TTUInt32	lastAcknowledgementCounter = mAcknowledgementCounter;	// this read should be atomic
	TTUInt32	counterDifference = lastUpdateCounter - lastAcknowledgementCounter;
	TTUInt32	index;
	
	if (counterDifference == mTwiceSize)
		return kBufferFull;
	if (counterDifference == mTwiceSize-1)
		return kBufferFullButCurrentlyReading;
	
	TTAtomicIncrement(mUpdateCounter);						// now odd, indicating that we are in the middle of an insertion
	
	index = (lastUpdateCounter/2) & (mSize-1);				// fast modulo for power of 2
	mBuffer[index] = anItem;								// copy
	
	TTAtomicIncrement(mUpdateCounter);						// now even, indicating that the insertion has completed
	return kBufferInsertSuccessful;
}


TTQueue::ReadStatus TTQueue::read(TTValue& returnedItem)
{
	TTUInt32	lastUpdateCounter = mUpdateCounter;			// this read should be atomic
	TTUInt32	lastAcknowledgementCounter = mAcknowledgementCounter;
	TTUInt32	index;
	
	if (lastUpdateCounter == lastAcknowledgementCounter)
		return kBufferEmpty;
	if (lastUpdateCounter - lastAcknowledgementCounter == 1)
		return kBufferEmptyButCurrentlyWriting;
	
	TTAtomicIncrement(mAcknowledgementCounter);				// now odd, indicating that we are in the middle of an insertion
	
	index = (lastAcknowledgementCounter/2) & (mSize-1);		// fast modulo for power of 2
	returnedItem = mBuffer[index];							// copy
	
	TTAtomicIncrement(mAcknowledgementCounter);				// now even, indicating that the read has completed
	
	return kBufferReadSuccessful;
}


#endif

