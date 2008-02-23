/* 
 * TTBlue Class for working with threads
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTThread.h"


/****************************************************************************************************/

TTThread::TTThread()
{
	;
}


TTThread::~TTThread()
{
	;
}


/** Tells the thread to go dormant for an amount of time specified in milliseconds */
void TTThread::sleep(TTUInt32 millisecondsToSleep)
{
	#ifdef TT_PLATFORM_MAC
	usleep(millisecondsToSleep * 1000);
	#else	
	SleepEx(millisecondsToSleep,TRUE);
	#endif
}

