/* 
 * TTBlue Class that maintains a mutual exclusion lock
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */
#include <TTMutex.h>
#ifdef TT_PLATFORM_WIN
	#ifndef _WINDOWS_
		#include <windows.h>
	#endif

	#include <versionhelpers.h>
	bool TTIsWindows8OrGreater()
	{
		return IsWindows8OrGreater();
	}

#endif

