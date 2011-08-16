/*
 * Jamoma Foundation
 * Copyright © 2011, Timothy Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_QUEUE_H__
#define __TT_QUEUE_H__

#include "TTBase.h"
#include "TTThread.h"
#include "TTList.h"
#include "TTObject.h"


#if OLD

/*
	The old TTQueue class (circa 2008) was unused, and was designed specificaly to be used only for getting things
	from an other thread onto the main thread.
 
	The new TTQueue class is more general, and is designed as a non-blocking circular buffer for getting
	events from thread A to thread B where the neither of the threads are required to be the main thread.
 
	A specific use of this queue to get things to the main thread can be created and would then use this
	newer version of the class.
*/



/****************************************************************************************************/
// Class Specification

/**
	The TTQueue class implements a message queue for TTBlue objects.
	
	Instead of sending a message directly to an object, it can be sent to the queue.  The queue
	will then send the message to the object from the queue's thread when the queue is serviced.
	
	The implementation uses a set of related lists; one for the object, one for the message, and
	one for the value argument to the message. 
*/
class TTFOUNDATION_EXPORT TTQueue : public TTBase {
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
	void* run();

	/** Add a call to the back of the queue.  Will trigger the queue to be serviced if it isn't
		already scheduled. */
	void queueToBack(TTObject& anObject, TTSymbol* aMessage, TTValue& aValue);
	//void queueToFront(TTMethod method, TTValue& value);
};

#else 


/****************************************************************************************************/
// Class Specification


// The problem with this is that it won't be fast enough for audio because everything has to go 
// through the message passing interface.
// 
// But...
//
// The reader doesn't have to actually do that.
// It can just pull the value and then decide what to do with it.
// So maybe this is entirely overkill for the TTQueue, and is actually better off in the TTMainQueue
// implementation...
//
//class TTFOUNDATION_EXPORT TTQueueItem : public TTBase {
//	TTObjectPtr	mObject;	// the object to which to send the message
//	TTSymbolPtr	mKind;		// 'attribute' or 'message'
//	TTSymbolPtr mName;		// the name of the attribute or message
//	TTValue		mValue;		// the arguments to send to the attribute or message
//};


/**
	The TTQueue class implements a non-blocking circular queue for passing events across threads.
	The items in the queue are TTValues.
	What is contained in the TTValue will be specific to whatever is using the queue.
 
	This is based on "Efficient Adaptations of Non-Blocking Buffer for Event Message Communication
	between Real-Time Threads" by Kim, Colmenares, and Rim from the proceedings of the 10th IEEE
	International Symposium on Object and Component-Oriented Real-Time Distributed Computing.
 
	One important difference is that we copy data at both the insert() and the read(), rather than 
	referencing a pointer at insert() and copying only at read().
	The reason for this is that we could easily put something on the queue (i.e. a reference to an object)
	that is temporary (alloc'd on the stack, for example) and then disappears prior to being serviced.
 */
class TTFOUNDATION_EXPORT TTQueue : public TTBase {
private:
	// Counters used to ensure that the producer (calling insert()) and the consumer (calling read())
	// are always accessing different slots in the circular buffer

	// counters must be *aligned* single-word integers
	
	TTAtomicInt		mUpdateCounter;				// UC -- only modified by the producer
	TTAtomicInt		mAcknowledgementCounter;	// AC -- only modified by the consumer
	TTVector		mBuffer;					// Using a std::vector of TTValues right now -- not sure this is best choice?
	TTUInt32		mSize;						// count of slots in mBuffer -- should be power of 2, will use as a bitmask
	TTUInt32		mTwiceSize;					// 2 * mBufferSize, cached for performance
	
	enum InsertStatus {
		kBufferInsertSuccessful = 0,
		kBufferFull,
		kBufferFullButCurrentlyReading
	};
	
	enum ReadStatus {
		kBufferReadSuccessful = 0,
		kBufferEmpty,
		kBufferEmptyButCurrentlyWriting
	};
	
	
public:
	TTQueue();
	virtual	~TTQueue();

	/** attribute accessor */
	TTErr resize(TTUInt32 aNewSize);
	TTErr size(TTUInt32& returnedSize);
	
	/**	add an item to the queue.	*/
	InsertStatus insert(const TTValue& anItem);
	
	/**	get the next event and pop it from the queue.	*/
	ReadStatus read(TTValue& returnedItem);
	

};



#endif


#endif // __TT_QUEUE_H__
