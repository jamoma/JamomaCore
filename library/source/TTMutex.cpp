/* 
 * TTBlue Class that maintains a mutual exclusion lock
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTMutex.h"


/****************************************************************************************************/

TTMutex::TTMutex(bool recursive)
{	
	#ifdef TT_PLATFORM_MAC
		pthread_mutexattr_t		pAttr;
		
		pthread_mutexattr_init(&pAttr);
		if(recursive)
			pthread_mutexattr_settype(&pAttr, PTHREAD_MUTEX_RECURSIVE);
		pthread_mutex_init(&pMutex, &pAttr);
	#else
		InitializeCriticalSection(&pMutex);

	#endif
}

TTMutex::~TTMutex()
{
	#ifdef TT_PLATFORM_MAC
	pthread_mutex_destroy(&pMutex);
	#else	
	DeleteCriticalSection(&pMutex);
	#endif
}


void TTMutex::lock()
{
	#ifdef TT_PLATFORM_MAC
	pthread_mutex_lock(&pMutex);
	#else
	EnterCriticalSection(&pMutex);
	#endif
}


void TTMutex::unlock()
{
	#ifdef TT_PLATFORM_MAC
	pthread_mutex_unlock(&pMutex);
	#else
	LeaveCriticalSection(&pMutex);
	#endif
}
