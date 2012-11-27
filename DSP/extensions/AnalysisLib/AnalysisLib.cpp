/** @file
 *
 * @ingroup dspAnalysisLib
 *
 * @brief AnalysisLib: Jamoma DSP Extension Class for Audio signal analysis
 *
 * @details
 *
 * @authors Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2009 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTDSP.h"
#include "TTZerocross.h"
#include "TTAverage.h"

/** Load AnalysisLib extension and register the various classes of the extension.
 */
extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_AnalysisLib(void)
{
	TTDSPInit();

	TTZerocross::registerClass();
	TTAverage::registerClass();
	
	return kTTErrNone;
}

