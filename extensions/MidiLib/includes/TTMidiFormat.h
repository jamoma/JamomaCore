/* 
 * Object to format common types of MIDI events into raw MIDI event dictionaries
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_MIDIFORMAT_H__
#define __TT_MIDIFORMAT_H__

#include "TTDSP.h"


class TTMidiFormat : TTDataObject {
	TTCLASS_SETUP(TTMidiFormat)
	
	TTErr dictionary(TTValue& input);
};


#endif // __TT_MIDIFORMAT_H__
