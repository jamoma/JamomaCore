/* 
 * TTBlue Class that maintains a mutual exclusion lock
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_MUTEX_H__
#define __TT_MUTEX_H__

#include "TTBase.h"
#ifdef TT_PLATFORM_MAC
	#include <pthread.h>
#endif
#ifdef TT_PLATFORM_WIN
#include <mutex>
#endif
/****************************************************************************************************/
// Class Specification

#ifndef TT_PLATFORM_WIN
/**
	The TTMutex class maintains a mutual exclusion lock.
	See http://en.wikipedia.org/wiki/Mutex for more details.
*/
class TTFOUNDATION_EXPORT TTMutex {
private:
	#ifdef TT_PLATFORM_WIN
	CRITICAL_SECTION		pMutex;
	#else // TT_PLATFORM_MAC or TTPLATFORM_LINUX
	pthread_mutex_t			pMutex;
	#endif

public:
	TTMutex(bool isRecursive);
	virtual	~TTMutex();

	void lock();
	void unlock();
};




/**	TTLock provides an exception-safe, scoped, mutex locking that cannot be left accidentally locked.
	It uses the #TTMutex class internally.
	
	The idea for this comes from Effective STL #12, and uses the 'Resource Allocation is Initialization'
	pattern popularized by Stroustrup.  http://en.wikipedia.org/wiki/Resource_Acquisition_Is_Initialization
*/
class TTFOUNDATION_EXPORT TTLock {
private:
	TTMutexPtr		mMutex;
	
public:
	TTLock(bool isRecursive)
	{
		mMutex = new TTMutex(isRecursive);
		mMutex->lock();
	}
	
	TTLock(TTMutexRef aMutex)
	{
		mMutex = &aMutex;
		// TODO: can we increment a reference count or something on the mutex?
		mMutex->lock();
	}
	
	virtual ~TTLock()
	{
		mMutex->unlock();
		delete mMutex;
	}
};
#else // Windows, using the standard C++11 Mutex

class TTMutex{
// Ugly hack, one should do a make_mutex template that generates the correct type but this 
// involves changing every mutex creation in Jamoma
	std::mutex mutex;
	std::recursive_mutex rmutex;
	const bool recursive;
	
	public:
	TTMutex(bool isRecursive):
		recursive(isRecursive)
		{
		}
		
		void lock()
		{
			recursive ? rmutex.lock() : mutex.lock();
		}
		
		void unlock()
		{
			recursive ? rmutex.unlock() : mutex.unlock();
		}

};

#endif

typedef TTMutex* TTMutexPtr;
typedef TTMutex& TTMutexRef;

#endif // __TT_MUTEX_H__
