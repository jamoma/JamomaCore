/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief Extension Class for Jamoma DSP for spatialisation renderers
 *
 * @details
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTDSP.h"
#include "TTSpat.h"
#include "TTSpatSnap.h"
#include "TTSpatDBAP.h"

/** Register classes for all of the SpatLib rendering techniques (aka units).
 @return		#TTErr error code if the method fails to execute, else #kTTErrNone.
 */
extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_SpatLib(void)
{
	TTDSPInit();
	TTSpat::registerClass();
	TTSpatDBAP::registerClass();
	TTSpatSnap::registerClass();
	return kTTErrNone;
}

