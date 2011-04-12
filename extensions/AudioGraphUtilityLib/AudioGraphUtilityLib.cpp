/* 
 * AudioGraphUtilityLib
 * Extension Class for Jamoma DSP
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"
#include "TTAudioGraphJoin.h"
#include "TTAudioGraphSplit.h"
#include "TTAudioGraphSig.h"


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_AudioGraphUtilityLib(void)
{
	TTDSPInit();

	TTAudioGraphJoin::registerClass();	
	TTAudioGraphSplit::registerClass();
	TTAudioGraphSig::registerClass();
	
	return kTTErrNone;
}

