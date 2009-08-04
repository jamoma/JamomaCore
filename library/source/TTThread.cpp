/* 
 * TTBlue Class for working with threads
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTThread.h"


/****************************************************************************************************/

// C-based callback for the thread to execute our method
static void* TTThreadCallback(void *ttTheadInstance)
{
	TTThread* thisThread = (TTThread*)ttTheadInstance;

	return thisThread->doCallbackMethod();
}


/****************************************************************************************************/

TTThread::TTThread(TTThreadCallbackType aCallback, void* anArgument)
{
#ifdef TT_PLATFORM_MAC
	int				err = 0;
	pthread_attr_t	attr;

	callback = aCallback;
	argument = anArgument;

	pthread_attr_init(&attr);
	pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);
	err = pthread_create(&thread, &attr, TTThreadCallback, this);
	pthread_attr_destroy(&attr);
#else
	// FIXME: Implement!	
#endif
}


TTThread::~TTThread()
{
#ifdef TT_PLATFORM_MAC
	pthread_cancel(thread);
#else
	// FIXME: Implement!	
#endif
}


void TTThread::sleep(TTUInt32 millisecondsToSleep)
{
#ifdef TT_PLATFORM_MAC
	usleep(millisecondsToSleep * 1000);
#else	
	SleepEx(millisecondsToSleep,TRUE);
#endif
}


void TTThread::wait()
{
#ifdef TT_PLATFORM_MAC
	pthread_join(thread, &status);
#else
	// FIXME: Implement!
#endif
}


void* TTThread::doCallbackMethod()
{
	if(callback)
		return callback(argument);
	else
		return (void*)-1;
}
