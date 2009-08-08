/* 
 * TTEffectsLib -- A library of effects units
 * Extension Class for TTBlue
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDSP.h"
#include "TTBalance.h"
#include "TTDegrade.h"
#include "TTDelay.h"
#include "TTGain.h"
#include "TTLimiter.h"
#include "TTOverdrive.h"
#include "TTPulseSub.h"


extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void)
{
	TTDSPInit();
	
	TTBalance::registerClass();	
	TTDegrade::registerClass();	
	TTDelay::registerClass();	
	TTGain::registerClass();	
	TTLimiter::registerClass();	
	TTOverdrive::registerClass();	
	TTPulseSub::registerClass();	
	
	return kTTErrNone;
}

