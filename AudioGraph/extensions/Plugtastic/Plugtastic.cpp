/* 
 * Plugtastic
 * Extension Class for JamomaAudioGraph
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAudioGraphAPI.h"
#include "PlugtasticInput.h"
#include "PlugtasticOutput.h"


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_Plugtastic(void)
{
	TTAudioGraphInit();	
	
	PlugtasticInput::registerClass();
	PlugtasticOutput::registerClass();
	
	return kTTErrNone;
}

