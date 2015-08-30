/* 
 * NetworkLib -- Send/Receive/Browse/etc.
 * Extension Class for Jamoma Foundation
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTFoundationAPI.h"

//#if !defined(TT_PLATFORM_WIN) && !defined(__MINGW32__)
#include "TTNetReceive.h"
#include "TTNetSend.h"
//#endif

#include "TTOscReceive.h"
#include "TTOscSend.h"

#if !defined(__ANDROID_API__) && !defined(__MINGW32__)
#include "TTWebReceive.h"
#include "TTWebSend.h"
#endif


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_NetworkLib(void)
{
	TTFoundationInit();

//#if !defined(TT_PLATFORM_WIN) && !defined(__MINGW32__)
	TTNetReceive::registerClass();
	TTNetSend::registerClass();
//#endif
	
	TTOscReceive::registerClass();
	TTOscSend::registerClass();
    

#if !defined(__ANDROID_API__) && !defined(__MINGW32__)
    TTWebReceive::registerClass();
	TTWebSend::registerClass();
#endif
	
	return kTTErrNone;
}
