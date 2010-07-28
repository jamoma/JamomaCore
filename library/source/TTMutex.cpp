/* 
 * TTBlue Class that maintains a mutual exclusion lock
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMutex.h"


/****************************************************************************************************/

TTMutex::TTMutex(bool recursive)
{	
	#ifdef TT_PLATFORM_WIN
		InitializeCriticalSection(&pMutex);
	#else // TT_PLATFORM_MAC or TT_PLATFORM_LINUX
		pthread_mutexattr_t		pAttr;
		
		pthread_mutexattr_init(&pAttr);
		if (recursive)
			pthread_mutexattr_settype(&pAttr, PTHREAD_MUTEX_RECURSIVE);
		pthread_mutex_init(&pMutex, &pAttr);
	#endif
}

TTMutex::~TTMutex()
{
	#ifdef TT_PLATFORM_WIN
		DeleteCriticalSection(&pMutex);
	#else // TT_PLATFORM_MAC or TT_PLATFORM_LINUX
		pthread_mutex_destroy(&pMutex);
	#endif
}


void TTMutex::lock()
{
	#ifdef TT_PLATFORM_WIN
		EnterCriticalSection(&pMutex);
	#else // TT_PLATFORM_MAC or TT_PLATFORM_LINUX
		pthread_mutex_lock(&pMutex);
	#endif
}


void TTMutex::unlock()
{
	#ifdef TT_PLATFORM_WIN
		LeaveCriticalSection(&pMutex);
	#else // TT_PLATFORM_MAC or TT_PLATFORM_LINUX
		pthread_mutex_unlock(&pMutex);
	#endif
}

