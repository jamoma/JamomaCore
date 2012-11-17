/* 
 * MathLib
 * Extension Class for Jamoma DSP
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTFFT.h"


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_FFTLib(void)
{
	TTDSPInit();

	TTfft::registerClass();
	
	return kTTErrNone;
}

