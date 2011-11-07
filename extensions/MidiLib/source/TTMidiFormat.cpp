/* 
 * Object to format common types of MIDI events into raw MIDI event dictionaries
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTGraphObject.h"
#include "TTMidiFormat.h"
#ifdef TT_PLATFORM_WIN
#include <algorithm>
#endif

#define thisTTClass			TTMidiFormat
#define thisTTClassName		"midi.format"
#define thisTTClassTags		"midi"


TT_OBJECT_CONSTRUCTOR
{
	addMessageWithArguments(dictionary);
}


TTMidiFormat::~TTMidiFormat()
{
	;
}


TTErr TTMidiFormat::dictionary(const TTValue& input, TTValue& output)
{
	TTDictionaryPtr	d = NULL;
	TTSymbolPtr		schema;
	
	input.get(0, (TTPtr*)(&d));
	schema = d->getSchema();
	
	if (schema == TT("MidiNoteEvent")) {
		TTValue v;
		TTUInt8	noteNumber = 0;
		TTUInt8 noteVelocity = 0;
		TTUInt8 noteChannel = 1;
		
		d->getValue(v);
		v.get(0, noteNumber);
		v.get(1, noteVelocity);
		v.get(2, noteChannel);

		if (noteVelocity > 0)	// Note-on
			d->append(TT("status"), 143 + noteChannel);
		else					// Note-off
			d->append(TT("status"), 127 + noteChannel);

		d->append(TT("data1"), noteNumber);
		d->append(TT("data2"), noteVelocity);
		d->setSchema(TT("RawMidiEvent"));
		output.set(0, TTPtr(d));
	}
	else if (schema == TT("RawMidiEvent"))
		output = input; // Nothing to do...
	else
		return kTTErrInvalidType;

	return kTTErrNone;
}

