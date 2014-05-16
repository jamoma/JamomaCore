/** @file
 *
 * @ingroup dspEffectsLib
 *
 * @brief #dspEffectsLib is a library of effects units
 *
 * @authors Tim Place, Nils Peters, Trond Lossius
 *
 * @copyright Copyright © 2009, Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTDSP.h"
#include "TTBalance.h"
#include "TTDegrade.h"
#include "TTGain.h"
#include "TTLimiter.h"
#include "TTMuteSolo.h"
#include "TTOverdrive.h"
#include "TTPanorama.h"
#include "TTThru.h"
#include "TTWaveshaper.h"


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_EffectsLib(void)
{
	TTDSPInit();
	
	TTBalance::registerClass();	
	TTDegrade::registerClass();	
	TTGain::registerClass();	
	TTLimiter::registerClass();
	TTMutesolo::registerClass();
	TTOverdrive::registerClass();
	TTPanorama::registerClass();
	TTThru::registerClass();	
	TTWaveshaper::registerClass();	
	
	return kTTErrNone;
}

