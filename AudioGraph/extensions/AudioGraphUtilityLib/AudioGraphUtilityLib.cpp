/** @file
 *
 * @ingroup audioGraphUtilityLib
 *
 * @brief Registers classes for AudioGraph utilities
 *
 * @details
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"
#include "TTAudioGraphJoin.h"
#include "TTAudioGraphOffset.h"
#include "TTAudioGraphPick.h"
#include "TTAudioGraphSplit.h"
#include "TTAudioGraphSig.h"


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_AudioGraphUtilityLib(void)
{
	TTDSPInit();

	TTAudioGraphJoin::registerClass();
	TTAudioGraphOffset::registerClass();
	TTAudioGraphPick::registerClass();
	TTAudioGraphSplit::registerClass();
	TTAudioGraphSig::registerClass();
	
	return kTTErrNone;
}

