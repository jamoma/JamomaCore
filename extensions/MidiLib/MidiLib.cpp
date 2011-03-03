/* 
 * MidiLib
 * Extension Class for Jamoma DSP
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"
#include "TTMidiFilter.h"
#include "TTMidiFormat.h"
#include "TTMidiInput.h"
#include "TTMidiOutput.h"


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_MidiLib(void)
{
	TTDSPInit();

	TTMidiFilter::registerClass();
	TTMidiFormat::registerClass();
	TTMidiInput::registerClass();
	TTMidiOutput::registerClass();
	
	return kTTErrNone;
}

