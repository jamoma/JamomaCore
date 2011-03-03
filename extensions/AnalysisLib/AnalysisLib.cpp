/* 
 * GeneratorLib
 * Extension Class for Jamoma DSP
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"
#include "TTZerocross.h"


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_AnalysisLib(void)
{
	TTDSPInit();

	TTZerocross::registerClass();
	
	return kTTErrNone;
}

