/*
 * TTBlue Class that maintains a mutual exclusion lock
 * Copyright © 2008, Timothy Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */
#include <TTMutex.h>
#if defined(TT_PLATFORM_WIN)  and !defined(__MINGW32__)
	#ifndef _WINDOWS_
		#include <windows.h>
	#endif

 #ifdef _MSC_VER
	#include <versionhelpers.h>

	bool TTIsWindows8OrGreater()
	{
		return IsWindows8OrGreater();
	}
 #else
  bool TTIsWindows8OrGreater()
  {
    return false;
  }
 #endif

#endif

