/* 
 * TTBlue Class that maintains a mutual exclusion lock
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_MUTEX_H__
#define __TT_MUTEX_H__

#include "TTElement.h"
#ifdef TT_PLATFORM_MAC
	#include <pthread.h>
#endif

/****************************************************************************************************/
// Class Specification

/**
	The TTMutex class maintains a mutual exclusion lock.
	See http://en.wikipedia.org/wiki/Mutex for more details.
*/
TTCLASS TTMutex : public TTElement {
private:
	#ifdef TT_PLATFORM_MAC
	pthread_mutex_t			pMutex;
	#else // TT_PLATFORM_WIN
	CRITICAL_SECTION		pMutex;
	#endif

public:
	TTMutex(bool isRecursive);
	virtual	~TTMutex();

	void lock();
	void unlock();
};


#endif // __TT_MUTEX_H__
