/* 
 * MathLib
 * Extension Class for Jamoma DSP
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDSP.h"
#include "TTOperator.h"
#include "TTMatrixMixer.h"


extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void)
{
	TTDSPInit();

	TTFFT::registerClass();
	
	return kTTErrNone;
}

