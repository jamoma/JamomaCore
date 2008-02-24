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
	int				err = 0;
	pthread_attr_t	attr;

	callback = aCallback;
	argument = anArgument;

	pthread_attr_init(&attr);
	pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);
	err = pthread_create(&thread, &attr, TTThreadCallback, this);
	pthread_attr_destroy(&attr);
}


TTThread::~TTThread()
{
	pthread_cancel(thread);
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
	pthread_join(thread, &status);
}


void* TTThread::doCallbackMethod()
{
	if(callback)
		return callback(argument);
	else
		return (void*)-1;
}
