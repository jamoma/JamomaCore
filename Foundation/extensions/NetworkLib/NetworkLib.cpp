/* 
 * NetworkLib -- Send/Receive/Browse/etc.
 * Extension Class for Jamoma Foundation
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTFoundationAPI.h"

#ifndef TT_PLATFORM_WIN
#include "TTNetReceive.h"
#include "TTNetSend.h"
#endif

#include "TTOscReceive.h"
#include "TTOscSend.h"

#ifndef __ANDROID_API__
#include "TTWebReceive.h"
#include "TTWebSend.h"
#endif


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_NetworkLib(void)
{
	TTFoundationInit();

#ifndef TT_PLATFORM_WIN
	TTNetReceive::registerClass();
	TTNetSend::registerClass();
#endif
	
	TTOscReceive::registerClass();
	TTOscSend::registerClass();
    

#ifndef __ANDROID_API__
    TTWebReceive::registerClass();
	TTWebSend::registerClass();
#endif
	
	return kTTErrNone;
}
