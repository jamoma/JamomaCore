/* 
 * EffectsLib -- A library of effects units
 * Extension Class for Jamoma DSP
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"
#include "TTBalance.h"
#include "TTDegrade.h"
#include "TTGain.h"
#include "TTLimiter.h"
#include "TTOverdrive.h"
#include "TTPulseSub.h"
#include "TTThru.h"


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_EffectsLib(void)
{
	TTDSPInit();
	
	TTBalance::registerClass();	
	TTDegrade::registerClass();	
	TTGain::registerClass();	
	TTLimiter::registerClass();	
	TTOverdrive::registerClass();	
	TTPulseSub::registerClass();	
	TTThru::registerClass();	
	
	return kTTErrNone;
}

