/* 
 * AudioGraph Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAudioGraph.h"
#include "TTAudioGraphGenerator.h"
#include "TTAudioGraphObject.h"
#include "TTAudioGraphInlet.h"		// required for windows build
#include "TTAudioGraphInput.h"
#include "TTAudioGraphOutput.h"

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
		TTAudioGraphInput::registerClass();
		TTAudioGraphOutput::registerClass();
	}
}

