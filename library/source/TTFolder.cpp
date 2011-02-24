/*
 * Jamoma support for interacting with folders (directories) in the file system
 * Copyright © 2011, Timothy Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTFolder.h"
#include "boost/filesystem.hpp"


/****************************************************************************************************/

TTFolder::TTFolder()
{
    ;
}

TTFolder::~TTFolder()
{
    ;
}

/*
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
*/
