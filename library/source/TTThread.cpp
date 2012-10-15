/* 
 * TTBlue Class for working with threads
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
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
#ifdef TT_PLATFORM_WIN
	// FIXME: Implement!
#else
	int				err = 0;
	pthread_attr_t	attr;

	callback = aCallback;
	argument = anArgument;

	pthread_attr_init(&attr);
	pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);
	err = pthread_create(&thread, &attr, TTThreadCallback, this);
	err = err; // silence 'unused' warning
	pthread_attr_destroy(&attr);
#endif
}


TTThread::~TTThread()
{
#ifdef TT_PLATFORM_WIN
	// FIXME: Implement!
#else
	pthread_cancel(thread);
#endif
}


void TTThread::sleep(TTUInt32 millisecondsToSleep)
{
#ifdef TT_PLATFORM_WIN
	SleepEx(millisecondsToSleep,TRUE);
#else
	usleep(millisecondsToSleep * 1000);
#endif
}


void TTThread::wait()
{
#ifdef TT_PLATFORM_WIN
	// FIXME: Implement!
#else
	pthread_join(thread, &status);
#endif
}


void* TTThread::doCallbackMethod()
{
	if (callback)
		return callback(argument);
	else
		return (void*)-1;
}
