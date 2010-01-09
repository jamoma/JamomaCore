/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDSP.h"
#include "TTMulticore.h"
#include "TTMulticoreGenerator.h"
#include "TTMulticoreObject.h"
#include "TTMulticoreOutput.h"

static bool initialized = false;


/***********************************************************/

void TTMulticoreInit(void)
{
	if (!initialized) {
		initialized = true;
		TTDSPInit();
		
		TTMulticoreGenerator::registerClass();
		TTMulticoreObject::registerClass();
		TTMulticoreOutput::registerClass();
	}
}

