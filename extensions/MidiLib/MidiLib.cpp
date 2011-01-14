/* 
 * MidiLib
 * Extension Class for Jamoma DSP
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"
#include "TTMidiInput.h"


extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void)
{
	TTDSPInit();

	TTMidiInput::registerClass();
	
	return kTTErrNone;
}

