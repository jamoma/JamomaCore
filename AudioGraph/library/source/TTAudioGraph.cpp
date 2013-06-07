/** @file
 *
 * @ingroup audioGraphLibrary
 *
 * @brief Registers classes for the primary AudioGraph library
 *
 * @details Creates a wrapper for TTAudioObjectBases that can be used to build an audio processing graph.
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2008, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


// TODO: Why are these header files included here rather than in TTAudioGraph.h?
#include "TTAudioGraph.h"
#include "TTAudioGraphGenerator.h"
#include "TTAudioGraphObject.h"
#include "TTAudioGraphInlet.h"		// required for windows build
#ifndef TT_PLATFORM_IOS
#include "TTAudioGraphInput.h"
#include "TTAudioGraphOutput.h"
#endif
static bool initialized = false;


/***********************************************************/

void TTAudioGraphInit(void)
{
	if (!initialized) {
		initialized = true;
		TTDSPInit();
		TTGraphInit();
		
		TTAudioGraphGenerator::registerClass();
		TTAudioGraphObject::registerClass();
#ifndef TT_PLATFORM_IOS
		TTAudioGraphInput::registerClass();
		TTAudioGraphOutput::registerClass();
#endif
	}
}

