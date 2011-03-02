/* 
 * NetworkLib -- Send/Receive/Browse/etc.
 * Extension Class for Jamoma Foundation
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTFoundationAPI.h"
#include "TTNetReceive.h"
#include "TTNetSend.h"


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_NetworkLib(void)
{
	TTFoundationInit();
	
	TTNetReceive::registerClass();
	TTNetSend::registerClass();
	
	return kTTErrNone;
}

