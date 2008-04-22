/* 
 * TTBlue Class for working with threads
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_THREAD_H__
#define __TT_THREAD_H__

#include "TTElement.h"


/****************************************************************************************************/
// Class Specification
// Note, a good resource is here: https://computing.llnl.gov/tutorials/pthreads/#CreatingThreads

typedef void*(*TTThreadCallbackType)(void* arg);

/**
	The TTThread class implements a cross-platform thread manager.
	It is not yet full featured, as features are being added on an as-needed basis.
*/
TTCLASS TTThread : public TTElement {
private:
#ifdef TT_PLATFORM_MAC
	pthread_t				thread;
#else
	// FIXME: We need to implement this!  The following is a place holder
	void*					thread;
#endif
	TTThreadCallbackType	callback;	///< method called in the new thread when it starts
	void*					argument;	///< argument passed to the callback
	void*					status;
	
public:
	TTThread(TTThreadCallbackType aCallback, void* anArgument);
	virtual	~TTThread();

	/** Tells the calling thread to go dormant for an amount of time specified in milliseconds. */
	static void sleep(TTUInt32 millisecondsToSleep);
	
	/** Tells the calling thread to wait for this thread to terminate before moving on.*/
	void wait();
	
	/** This method is called in the new thread when the thread is created. */
	void* doCallbackMethod();
	
	// make sure this is a friend so that it can access the private members of the other atom
	friend bool operator == (const TTThread& thread1, const TTThread& thread2)
	{
#ifdef TT_PLATFORM_MAC
		return pthread_equal(thread1.thread, thread2.thread);
#else
		// FIXME: We need to implement this!  The following is a place holder
		return false;
#endif
	}
};


#endif // __TT_THREAD_H__
