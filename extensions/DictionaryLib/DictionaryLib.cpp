/* 
 * DictionaryLib
 * Extension Class for Jamoma Graph
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTGraphAPI.h"
#include "TTDictionaryAppend.h"


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_DictionaryLib(void)
{
	TTGraphInit();

	TTDictionaryAppend::registerClass();
	
	return kTTErrNone;
}

