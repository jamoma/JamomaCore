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
#include "TTPanorama.h"
#include "TTPulseSub.h"
#include "TTThru.h"
#include "TTWaveshaper.h"


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_EffectsLib(void)
{
	TTDSPInit();
	
	TTBalance::registerClass();	
	TTDegrade::registerClass();	
	TTGain::registerClass();	
	TTLimiter::registerClass();	
	TTOverdrive::registerClass();	
	TTPanorama::registerClass();
	TTPulseSub::registerClass();	
	TTThru::registerClass();	
	TTWaveshaper::registerClass();	
	
	return kTTErrNone;
}

