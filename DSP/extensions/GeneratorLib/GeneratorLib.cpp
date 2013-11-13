/** @file
 *
 * @ingroup dspGeneratorLib
 *
 * @brief GeneratorLib: Extension Class for Jamoma DSP for generating/synthesising various signals
 *
 * @details This library generates various signals that can be used for e.g. synthesis.
 *
 * @authors Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2009 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTDSP.h"
#include "TTAdsr.h"
#include "TTCount.h"
#include "TTNoise.h"
#include "TTPhasor.h"
#include "TTPulseSub.h"
#include "TTRamp.h"
#include "TTWavetable.h"


/** Register the classes of this extension.
 @return		#TTErr error code if the method fails to execute, else #kTTErrNone.
 */
extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_GeneratorLib(void)
{
	TTDSPInit();

	TTAdsr::registerClass();
	TTCount::registerClass();
	TTNoise::registerClass();
	TTPhasor::registerClass();
	TTPulseSub::registerClass();	
	TTRamp::registerClass();
	TTWavetable::registerClass();
	
	return kTTErrNone;
}

