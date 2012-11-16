/** @file
 *
 * @ingroup dspMathLib
 *
 * @brief Jamoma DSP MathLib: Mathematical operations on audio signal
 *
 * @details
 *
 * @authors Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2009, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTDSP.h"
#include "TTOperator.h"
#include "TTMixer.h"
#include "TTMultiMixer.h"


/** Register the classes.
 */
extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_MathLib(void)
{
	TTDSPInit();

	TTOperator::registerClass();
	TTMixer::registerClass();	
	TTMultiMixer::registerClass();	
	
	return kTTErrNone;
}

