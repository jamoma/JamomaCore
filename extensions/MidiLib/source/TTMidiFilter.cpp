/* 
 * Object to filter common types of MIDI events out of raw MIDI event dictionaries
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTGraphObject.h"
#include "TTMidiFilter.h"
#ifdef TT_PLATFORM_WIN
#include <algorithm>
#endif

#define thisTTClass			TTMidiFilter
#define thisTTClassName		"midi.filter"
#define thisTTClassTags		"midi"


TT_OBJECT_CONSTRUCTOR,
	mType(kTTSymEmpty)
{
	addAttribute(Type, kTypeSymbol);	
	addMessageWithArguments(dictionary);
	
	setAttributeValue(TT("type"), TT("note"));
}


TTMidiFilter::~TTMidiFilter()
{
	;
}


TTErr TTMidiFilter::dictionary(const TTValue& input, TTValue& output)
{
	TTDictionaryPtr	d = NULL;
	TTSymbolPtr		schema;
	
	input.get(0, (TTPtr*)(&d));
	schema = d->getSchema();
	if (schema == TT("RawMidiEvent")) {
		TTValue statusByteValue;
		TTValue dataByte1Value;
		TTValue dataByte2Value;
		TTUInt8 statusByte;
		
		d->lookup(TT("status"), statusByteValue);
		d->lookup(TT("data1"), dataByte1Value);
		d->lookup(TT("data2"), dataByte2Value);
		statusByteValue.get(0, statusByte);
		
		if (mType == TT("note")) {
			bool noteon = false;
			bool noteoff = false;
			
			if (statusByte > 127 && statusByte < 144)
				noteoff = true;
			else if (statusByte > 143 && statusByte < 160)
				noteon = true;
			else
				goto out;
			
			{
				TTValue v;
				
				v.setSize(3);
				v.set(0, TTUInt8(dataByte1Value));
				if (noteon) {
					v.set(1, TTUInt8(dataByte2Value));
					v.set(2, statusByte - 143);
				}
				else {
					v.set(1, TTUInt8(0));
					v.set(2, statusByte - 127);
				}
				
				d->setSchema(TT("MidiNoteEvent"));
				d->setValue(v);
				return kTTErrNone;
			}
		}
	out:
		d->clear();
		output.set(0, TTPtr(d));
		return kTTErrNone;
	}
	else {
		return kTTErrInvalidType;
	}

}

