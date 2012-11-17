/* 
 * ResamplingLib -- A library for audio signal resampling
 * Extension Class for Jamoma DSP
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"

#include "TTResample.h"
#include "TTStaircase.h"


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_ResamplingLib(void)
{
	TTDSPInit();
	
	TTResample::registerClass();
	TTStaircase::registerClass();
	
	return kTTErrNone;
}

