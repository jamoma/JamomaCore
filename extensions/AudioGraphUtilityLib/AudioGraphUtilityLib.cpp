/* 
 * MathLib
 * Extension Class for Jamoma DSP
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"
#include "TTAudioGraphJoin.h"
#include "TTAudioGraphSplit.h"


extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void)
{
	TTDSPInit();

	TTAudioGraphJoin::registerClass();	
	TTAudioGraphSplit::registerClass();	
	
	return kTTErrNone;
}

